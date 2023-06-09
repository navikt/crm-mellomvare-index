# crm-mellomvare-index
En indeks og oversikt over mellomvareapper

## Apper i teamcrm

### fss

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| sf-arkiv  | [sf-arkiv](https://github.com/navikt/sf-arkiv) | :white_circle: -> `Postgres` | [Lokalt arkiv](https://confluence.adeo.no/display/PTC/Lokalt+arkiv) |`pending` `inactive` | |
| sf-audit  | [sf-audit](https://github.com/navikt/sf-audit) | :white_circle: -> `Auditlog` | [ArcSight ESM (Snokelogg)](https://confluence.adeo.no/pages/viewpage.action?pageId=358554596) ||[:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-2d&to=now&viewPanel=62)|
| sf-axsys  | [sf-axsys](https://github.com/navikt/sf-axsys) | :white_circle: -> `REST` || `deprecated` `inactive` ||
| sf-brukervarsel-proxy | [sf-brukervarsel-proxy](https://github.com/navikt/sf-brukervarsel-proxy) | :white_circle: -> `SOAP` | [Brukervarsel](https://confluence.adeo.no/display/PTC/Brukervarsel) | `deprecated` ||
| sf-tps-proxy | [sf-tps-proxy](https://github.com/navikt/sf-tps-proxy) | :white_circle: -> `SOAP` | [TPS Proxy](https://confluence.adeo.no/display/PTC/TPS+Proxy) | `deprecated` |[:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-2d&to=now&viewPanel=68)|
| sf-websak | [sf-websak](https://github.com/navikt/sf-websak) | :white_circle: -> `SFTP Windows` | [Websak](https://confluence.adeo.no/display/PTC/Websak)|| [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-30d&to=now&viewPanel=72) |

### gcp

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| saas-proxy | [saas-proxy](https://github.com/navikt/saas-proxy) | :white_circle: -> `REST` | [Integrasjoner mot GCP](https://confluence.adeo.no/display/PTC/Integrasjoner+mot+GCP) ||[:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&viewPanel=98)|
| sf-linkmobility | [sf-linkmobility](https://github.com/navikt/sf-linkmobility) | `SMS` -> :white_circle: | [SMS mottak](https://confluence.adeo.no/display/PTC/SMS+mottak) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&viewPanel=88)|
| sf-logout  | [sf-logout](https://github.com/navikt/sf-logout ) | -> :white_circle: | [Autentisering med ID-porten](https://confluence.adeo.no/display/PTC/Autentisering+med+ID-porten) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&viewPanel=130)|
| sf-nada-crm | [sf-nada-crm](https://github.com/navikt/sf-nada-crm) | :white_circle: -> `BigQuery` | [Informasjonsforvaltning](https://confluence.adeo.no/pages/viewpage.action?pageId=460429182) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&viewPanel=124&from=now-24h&to=now) |
| sf-pdfgen | [sf-pdfgen](https://github.com/navikt/sf-pdfgen) | `PDF` ||||

## Apper i teamnks

### fss

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| henvendelse-api-dialogv1 | [henvendelse-api-dialogv1](https://github.com/navikt/henvendelse-api-dialogv1) | `SOAP` -> `sf-henvendelse-api-proxy` | [Henvendelse API](https://confluence.adeo.no/display/PTC/Salesforce+Henvendelse+API) | `deprecated` | [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-2d&to=now) |
| sf-arkiv-dokumentasjon | [salesforce-arkiv](https://github.com/navikt/salesforce-arkiv) | :white_circle: -> `Postgres` | [Lokalt arkiv](https://confluence.adeo.no/display/PTC/Lokalt+arkiv) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=1686285096897&to=1686288035359&viewPanel=66) |
| sf-henvendelse-api-proxy | [sf-henvendelse-api-proxy](https://github.com/navikt/sf-henvendelse-api-proxy) | -> :white_circle: | [Henvendelse API](https://confluence.adeo.no/display/PTC/Salesforce+Henvendelse+API) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-2d&to=now) |
| sf-nks-brukervarsel-proxy | [sf-nks-brukervarsel-proxy](https://github.com/navikt/sf-nks-brukervarsel-proxy) | :white_circle: -> `SOAP` | [Brukervarsel](https://confluence.adeo.no/display/PTC/Brukervarsel) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-24h&to=now&editPanel=108) |
| sf-nks-tps-proxy | [sf-nks-tps-proxy](https://github.com/navikt/sf-nks-tps-proxy) | :white_circle: -> `SOAP` | [TPS Proxy](https://confluence.adeo.no/display/PTC/TPS+Proxy)| `deprecated`  `inactive` ||

### gcp

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| nks-sf-pdl  | [nks-sf-pdl](https://github.com/navikt/nks-sf-pdl) | `KAFKA` -> `KAFKA (cache)` | [Persondataløsningen](https://confluence.adeo.no/pages/viewpage.action?pageId=358547953) | `deprecated` | [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-2d&to=now&viewPanel=81) |
| nks-sf-person | [nks-sf-person](https://github.com/navikt/nks-sf-person) | `KAFKA (cache)` -> :white_circle: | [Persondataløsningen](https://confluence.adeo.no/pages/viewpage.action?pageId=358547953) | `deprecated` | [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-2d&to=now&viewPanel=102) |
| sf-brukernotifikasjon | [sf-brukernotifikasjon](https://github.com/navikt/sf-brukernotifikasjon) | :white_circle: -> `KAFKA` | [Brukernotifikasjon](https://confluence.adeo.no/display/PTC/Brukernotifikasjon+-+SF+-%3E+sf-brukernotifikasjon) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-2d&to=now&viewPanel=65) |
| sf-skjerming | [kafka-nks](https://github.com/navikt/kafka-nks) | `KAFKA` -> :white_circle: | [Skjermingsløsningen](https://confluence.adeo.no/pages/viewpage.action?pageId=395739530) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-2d&to=now&viewPanel=89) |

## Apper i team-dialog

### fss

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| sf-arbeidsgiveraktivitet | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA`<sup>+</sup> -> :white_circle: | [Arena Aktiviteter](https://confluence.adeo.no/display/PTC/Arena+Aktiviteter) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=19) |

### gcp

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| crm-kafka-activity-events | [crm-kafka-activity](https://github.com/navikt/crm-kafka-activity) | :white_circle: -> `KAFKA` ||||
| crm-kafka-activity-kurs | [crm-kafka-activity](https://github.com/navikt/crm-kafka-activity) | :white_circle: -> `KAFKA` ||||
| crm-kafka-activity-oppgaver | [crm-kafka-activity](https://github.com/navikt/crm-kafka-activity) | :white_circle: -> `KAFKA` ||||
| ereg-sf | [ereg-sf](https://github.com/navikt/ereg-sf) | `KAFKA` -> :white_circle: | || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=2)|
| ereg-splitter-change | [ereg-splitter-change](https://github.com/navikt/ereg-splitter-change) | `REST` -> `KAFKA` ||| [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=4)|
| sf-arbeidsgiver-kontaktskjema | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [Kontaktskjema](https://confluence.adeo.no/display/PTC/Kontaktskjema) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=6) |
| sf-crm-activity-events | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||| [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=22)|
| sf-crm-activity-oppgaver | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||| [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=23)|
| sf-dialogmote | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [Modia Dialogmøte](https://confluence.adeo.no/pages/viewpage.action?pageId=439124041) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=16) |
| sf-ia-sak| [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [FIA](https://confluence.adeo.no/display/PTC/FIA) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=14)|
| sf-permiteringsvarsel | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [Permitteringsvarsel](https://confluence.adeo.no/pages/viewpage.action?pageId=366852440) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=8) |
| sf-stilling | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||| [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=12)|
| sf-sykefravaersstatistikk | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||| [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=20) |
| sf-tiltak-avtale | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [Tiltaksgjennomføring](https://confluence.adeo.no/pages/viewpage.action?pageId=514484870)  || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&editPanel=8) |


