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
| sf-tps-proxy | [sf-tps-proxy](https://github.com/navikt/sf-tps-proxy) | :white_circle: -> `SOAP` || `deprecated` |[:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-2d&to=now&viewPanel=68)|
| sf-websak | [sf-websak](https://github.com/navikt/sf-websak) | :white_circle: -> `SFTP Windows` ||| [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-30d&to=now&viewPanel=72) |

### gcp

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| saas-proxy | [saas-proxy](https://github.com/navikt/saas-proxy) | :white_circle: -> `REST` ||||
| sf-linkmobility | [sf-linkmobility](https://github.com/navikt/sf-linkmobility) | `SMS` -> :white_circle: | [SMS mottak](https://confluence.adeo.no/display/PTC/SMS+mottak) |||
| sf-logout  | [sf-logout](https://github.com/navikt/sf-logout ) | -> :white_circle: ||||
| sf-nada-crm | [sf-nada-crm](https://github.com/navikt/sf-nada-crm) | :white_circle: -> `BigQuery` ||||
| sf-pdfgen | [sf-pdfgen](https://github.com/navikt/sf-pdfgen) | `PDF` ||||

## Apper i teamnks

### fss

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| henvendelse-api-dialogv1 | [henvendelse-api-dialogv1](https://github.com/navikt/henvendelse-api-dialogv1) | `SOAP` -> `sf-henvendelse-api-proxy` || `deprecated` ||
| sf-arkiv-dokumentasjon | [salesforce-arkiv](https://github.com/navikt/salesforce-arkiv) | :white_circle: -> `Postgres` ||||
| sf-henvendelse-api-proxy | [sf-henvendelse-api-proxy](https://github.com/navikt/sf-henvendelse-api-proxy) | -> :white_circle: ||||
| sf-nks-brukervarsel-proxy | [sf-nks-brukervarsel-proxy](https://github.com/navikt/sf-nks-brukervarsel-proxy) | :white_circle: -> `SOAP` | [Brukervarsel](https://confluence.adeo.no/display/PTC/Brukervarsel) |||
| sf-nks-tps-proxy | [sf-nks-tps-proxy](https://github.com/navikt/sf-nks-tps-proxy) | :white_circle: -> `SOAP` || `deprecated`  `inactive` ||

### gcp

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| nks-sf-pdl  | [nks-sf-pdl](https://github.com/navikt/nks-sf-pdl) | `KAFKA` -> :white_circle: || `deprecated` ||
| nks-sf-person | [nks-sf-person](https://github.com/navikt/nks-sf-person) | `KAFKA` -> :white_circle: || `deprecated` ||
| sf-brukernotifikasjon | [sf-brukernotifikasjon](https://github.com/navikt/sf-brukernotifikasjon) | :white_circle: -> `KAFKA` ||||
| sf-skjerming | [kafka-nks](https://github.com/navikt/kafka-nks) | `KAFKA` -> :white_circle: ||||

## Apper i team-dialog

### fss

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| sf-arbeidsgiveraktivitet | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA`<sup>+</sup> -> :white_circle: ||||

### gcp

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| crm-kafka-activity-events | [crm-kafka-activity](https://github.com/navikt/crm-kafka-activity) | :white_circle: -> `KAFKA` | [Datavarehus](https://confluence.adeo.no/display/PTC/Datavarehus)|||
| sf-arbeidsgiver-kontaktskjema | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||||
| sf-crm-activity-events | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||||
| sf-crm-activity-oppgaver | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||||
| sf-dialogmote | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||||
| sf-ia-sak| [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||||
| sf-permiteringsvarsel | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||||
| sf-stilling | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||||
| sf-sykefravaersstatistikk | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||||
| sf-tiltak-avtale | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||||


