# Hvordan legge til et KrakenD-endepunkt på nais

Bruk guiden pa doc.nais.io for att exponera fss apper med maskinporten, den inkluderar även oppsett for azureAD som er Salesforce sin metode att nå apper pa Nais:
https://doc.nais.io/auth/how-to/expose-fss-apps-with-maskinporten/?h=krakend#__tabbed_1_2

Kort førtalt så är det endast krakenD-ingress i gcp som er synlig externt. Så för att exponera app i fss så finns det två alternativ:
1. Kraken-ingress i GCP -> Nais-ingress synlig mot GCP
2. Kraken-ingress i GCP -> Kraken-ingress i FSS -> Service url

Alternativ 1 är i de flest fall enklare och innebär att man lägger till en ingress synlig mot GCP på appen i fss (dev-fss-pub-nais.io o prod-fss-pub-nais.io) o låter en kraken-ingress i GCP peka på den.

Alternativ 2 kan användas om man inte vill lägga på någon ingress på appen men innebär dubbel oppset av kraken-ingress och dubbel tokenvalidering i varje kall.

I mitt exempel med sf-arkiv så går jag för alternativ 1:

## Steg 1 - lägg på pub.nais.io ingresser pa app
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

## Steg 2 - Laga krakenD konfiguration
I mitt fall så har jag valt att checka in konfigurationen i repot med øvrige nais-filer som apiendpoints-dev.yaml och apiendpoints-prod.yaml

Eks apiendpoints-dev.yaml:
```
apiVersion: krakend.nais.io/v1                  # Denna fil er lagd for att appliceras i GCP
kind: ApiEndpoints
metadata:
  name: sf-arkiv                                # Valfri navn pa ApiEndpoints-instans - jag har valt samma navn som app
  namespace: teamcrm
  labels:
    team: teamcrm
spec:
  appName: sf-arkiv
  auth:
    name: azuread
    cache: true
    audience:
      - "0ec61090-ae9a-4e22-8807-19323001855d"  # Finn AZURE_APP_CLIENT_ID for din app
  endpoints:                                    
    - path: /sf-arkiv/arkiv                     
      method: POST
      forwardHeaders:                           
        - Authorization                         # Notera att headrar som ska følja med i kall må specifiseras
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



