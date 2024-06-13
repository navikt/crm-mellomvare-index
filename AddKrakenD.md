# Hvordan eksponere endepunkt på fss til Salesforce

For å eksponere app i fss trenger du en ingress synlig for gcp, for det er det to alternativer:
1. Nais-ingress synlig mot GCP
2. KrakenD-ingress i FSS -> Service url

### Alt.1 Nais-ingress synlig mot GCP

Du trenger en pub.nais.io ingress. Se 
https://doc.nais.io/workloads/explanations/migrating-to-gcp/?h=#how-do-i-reach-an-application-found-on-premises-from-my-application-in-gcp

### Alt.2 KrakenD-ingress

En forutsetning for Krakend er at team namespace:t ditt har krakend aktivert i dev-fss, prod-fss
Per nå kan du be om det i f.eks. #eksponere-eksterne-apier-fra-gcp eller #nais

Bruk veiledningen på doc.nais.io for å eksponere fss-apper med maskinporten, den inkluderer også oppsett for azureAD som er Salesforces metode for å få tilgang til apper på Nais:
https://doc.nais.io/auth/how-to/expose-fss-apps-with-maskinporten/?h=krakend#__tabbed_1_2

Du ender opp med en pub.nais.io-ingress også i dette tilfellet

## Gi tilgang til Saas proxy

Du trenger gi tilgang til Salesforce sin proxy app i gcp samt Salesforce sin Entra app.
Se https://github.com/navikt/saas-proxy/blob/master/README.md
Appeier må oppdater access policy i appen sin, Saas proxy er Saleforce teamen sitt ansvar å oppdatera
