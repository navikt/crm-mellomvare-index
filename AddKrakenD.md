# Hvordan eksponere endepunkt på fss til Salesforce

For å eksponere app i fss trenger du en ingress synlig for gcp, for det er det to alternativer:
1. Nais-ingress synlig mot GCP (pub.nais.io)
2. KrakenD-ingress i FSS -> Service url

Om du ønsker bruke KrakenD:

En forutsetning for Krakend er at team namespace:t ditt har krakend aktivert i dev-fss, prod-fss
Per nå kan du be om det i f.eks. #eksponere-eksterne-apier-fra-gcp eller #nais

Bruk veiledningen på doc.nais.io for å eksponere fss-apper med maskinporten, den inkluderer også oppsett for azureAD som er Salesforces metode for å få tilgang til apper på Nais:
https://doc.nais.io/auth/how-to/expose-fss-apps-with-maskinporten/?h=krakend#__tabbed_1_2
