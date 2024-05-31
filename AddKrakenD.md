# Hvordan legge til et KrakenD-endepunkt på nais

En forutsetning er at team namespace:t ditt har krakend aktivert i dev-fss, prod-fss, dev-gcp, prod-gcp
Per nå kan du be om det i f.eks. #eksponere-eksterne-apier-fra-gcp eller #nais

Bruk veiledningen på doc.nais.io for å eksponere fss-apper med maskinporten, den inkluderer også oppsett for azureAD som er Salesforces metode for å få tilgang til apper på Nais:
https://doc.nais.io/auth/how-to/expose-fss-apps-with-maskinporten/?h=krakend#__tabbed_1_2

Kort førtalt så er bare krakenD-oppføringen i gcp synlig eksternt. Så for å eksponere app i fss er det to alternativer:
1. Kraken-ingress i GCP -> Nais-ingress synlig mot GCP
2. Kraken-ingress i GCP -> Kraken-ingress i FSS -> Service url

Alternativ 1 er i de fleste tilfeller enklere og innebærer å legge til en ingress som er synlig for GCP på appen i fss (dev-fss-pub-nais.io eller prod-fss-pub-nais.io) og la en krakend-ingress i GCP-peke til den

Alternativ 2 kan brukes hvis du ikke vil legge til noe ingress til appen, men involverer dobbel opset av kraken-ingress og dobbel token-validering i hvert kall

I mitt eksempel går jeg for alternativ 1:

## Steg 1 - Legg til pub.nais.io-ingresser til appen
Eks:
sf-arkiv dev.yaml:
```
  ingresses:
    ...
    - https://sf-arkiv-dokumentasjon.dev-fss-pub.nais.io
```

sf-arkiv prod.yaml:
```
  ingresses:
    ...
    - https://sf-arkiv-dokumentasjon.prod-fss-pub.nais.io
```

## Steg 2 - Lage krakenD konfiguration
I mitt fall har jag valt att checka in konfigurationen i repot med øvrige nais-filer som apiendpoints-dev.yaml og apiendpoints-prod.yaml

Eks apiendpoints-dev.yaml:
```
apiVersion: krakend.nais.io/v1                  # Denne filen er ment å brukes i GCP
kind: ApiEndpoints
metadata:
  name: sf-arkiv                                # Valgfritt navn på ApiEndpoints-instans - jeg har valgt samme navn som app
  namespace: teamcrm
  labels:
    team: teamcrm
spec:
  appName: sf-arkiv
  auth:
    name: azuread
    cache: true
    audience:
      - "0ec61090-ae9a-4e22-8807-19323001855d"  # Finn AZURE_APP_CLIENT_ID for appen din
  endpoints:                                    
    - path: /sf-arkiv/arkiv                     
      method: POST
      forwardHeaders:                           
        - Authorization                         # Noter att headrar som skal inkluderes i kall må spesifiseres
      backendHost: https://sf-arkiv-dokumentasjon.dev-fss-pub.nais.io       
      backendPath: /arkiv                            
    - path: /sf-arkiv/hente                   
      method: POST
      forwardHeaders:                           
        - Authorization                         
      backendHost: https://sf-arkiv-dokumentasjon.dev-fss-pub.nais.io
      backendPath: /hente                            
  openEndpoints:                                             
    - path: /sf-arkiv/authping
      method: GET
      forwardHeaders:
        - Authorization
      backendHost: https://sf-arkiv-dokumentasjon.dev-fss-pub.nais.io
      backendPath: /authping
```
Forskjellen i apiendpoints-prod.yaml i dette fallet er bare host **prod**-fss-pub-nais.io og audience.

### Finne AZURE_APP_CLIENT_ID
For å finne audience til appen kan du f.eks bruke disse kommandoene
```
kubectl get pods -n teamcrm --context=dev-fss
```
for å finne navnet på en pod for appen, og så:
```
kubectl exec <pod-navn> -n teamcrm --context=dev-fss -- env | grep AZURE_APP_CLIENT_ID
```
### Andre varianter av konfigurasjon
Noter att headrar som skal beholdes i kallen må spesifiseres (se eksempelet ovenfor)

Path-parameterar kan leggas til slik:
```
- path: /endpoint/{pathparameter}
  backendPath: /endpoint/{pathparameter}
```
Query-parametrar må spesifiseres, feks:
```
  queryParams:
    - ftpsCatalogue
```
Se https://doc.nais.io/auth/how-to/expose-fss-apps-with-maskinporten/?h=krakend#__tabbed_1_2
for flere detaljer

## Steg 3 - Applisere krakenD konfigurationen
Når du er ferdig med konfigurasjonsfilene, er det bare att applisere dem med
```
kubectl apply -f apiendpoints-dev.yaml -n teamcrm --context=dev-gcp
kubectl apply -f apiendpoints-prod.yaml -n teamcrm --context=prod-gcp
```
NB Kraken-ingresesrna må appliseres i den tilsvarende gcp-sonen, ikke i fss
