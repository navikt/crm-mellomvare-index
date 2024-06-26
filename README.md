# crm-mellomvare-index
En indeks og oversikt over mellomvareapper

De fleste apper i fss er exponerad mot saas via [saas-portalen](https://saas-to-nav-api-portal.nav.no) ([slack](https://nav-it.slack.com/app_redirect?channel=saas-tilgang-til-nav-apier))

## Apper i teamcrm ([team Platforce](https://teamkatalog.nav.no/team/06a47c6b-557c-491e-b036-d6abbc77b04f))

### fss

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| sf-arkiv  | [sf-arkiv](https://github.com/navikt/sf-arkiv) | :white_circle: -> `Postgres` | [Lokalt arkiv](https://confluence.adeo.no/display/PTC/Lokalt+arkiv) | | |
| sf-audit  | [sf-audit](https://github.com/navikt/sf-audit) | :white_circle: -> `Auditlog` | [ArcSight ESM (Snokelogg)](https://confluence.adeo.no/pages/viewpage.action?pageId=358554596) ||[:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-2d&to=now&viewPanel=62)|
| sf-tps-proxy | [sf-tps-proxy](https://github.com/navikt/sf-tps-proxy) | :white_circle: -> `SOAP` | [TPS Proxy](https://confluence.adeo.no/display/PTC/TPS+Proxy) | `deprecated` `inactive` |[:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-2d&to=now&viewPanel=68)| |
| sf-websak | [sf-websak](https://github.com/navikt/sf-websak) | :white_circle: -> `SFTP Windows` | [Websak](https://confluence.adeo.no/display/PTC/Websak)|| [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-30d&to=now&viewPanel=72) |

### gcp

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| saas-proxy | [saas-proxy](https://github.com/navikt/saas-proxy) | :white_circle: -> `REST` | [Integrasjoner mot GCP](https://confluence.adeo.no/display/PTC/Integrasjoner+mot+GCP) ||[:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&viewPanel=98)|
| sf-linkmobility | [sf-linkmobility](https://github.com/navikt/sf-linkmobility) | `SMS` -> :white_circle: | [SMS mottak](https://confluence.adeo.no/display/PTC/SMS+mottak) | `deprecated` | [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&viewPanel=88)|
| sf-logout  | [sf-logout](https://github.com/navikt/sf-logout ) | -> :white_circle: | [Autentisering med ID-porten](https://confluence.adeo.no/display/PTC/Autentisering+med+ID-porten) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&viewPanel=130)|
| sf-nada-crm | [sf-nada-crm](https://github.com/navikt/sf-nada-crm) | :white_circle: -> `BigQuery` | [Informasjonsforvaltning](https://confluence.adeo.no/pages/viewpage.action?pageId=460429182) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&viewPanel=124&from=now-24h&to=now) |
| sf-pdfgen | [sf-pdfgen](https://github.com/navikt/sf-pdfgen) | `PDF` ||||
| sf-skjerming | [sf-skjerming](https://github.com/navikt/sf-skjerming) | `KAFKA` -> :white_circle: | [Skjermingsløsningen](https://confluence.adeo.no/pages/viewpage.action?pageId=395739530) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-2d&to=now&viewPanel=89) |
| sf-pdl-kafka | [sf-pdl-kafka](https://github.com/navikt/sf-pdl-kafka) | `KAFKA` -> :white_circle: |  |

## Apper i teamnks ([NKS Støtteteam](https://teamkatalog.nav.no/team/7e59af11-68bf-4485-ae7e-259966ccfc38))

### fss

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| sf-henvendelse-api-proxy | [sf-henvendelse-api-proxy](https://github.com/navikt/sf-henvendelse-api-proxy) | -> :white_circle: | [Henvendelse API](https://confluence.adeo.no/display/PTC/Salesforce+Henvendelse+API) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-2d&to=now) |
| sf-nks-brukervarsel-proxy | [sf-nks-brukervarsel-proxy](https://github.com/navikt/sf-nks-brukervarsel-proxy) | :white_circle: -> `SOAP` | [Brukervarsel](https://confluence.adeo.no/display/PTC/Brukervarsel) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-24h&to=now&editPanel=108) |

### gcp

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| nks-sf-pdl  | [nks-sf-pdl](https://github.com/navikt/nks-sf-pdl) | `KAFKA` -> `KAFKA (cache)` | [Persondataløsningen](https://confluence.adeo.no/pages/viewpage.action?pageId=358547953) | `deprecated` | [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-2d&to=now&viewPanel=81) |
| nks-sf-person | [nks-sf-person](https://github.com/navikt/nks-sf-person) | `KAFKA (cache)` -> :white_circle: | [Persondataløsningen](https://confluence.adeo.no/pages/viewpage.action?pageId=358547953) | `deprecated` | [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-2d&to=now&viewPanel=102) |
| sf-brukernotifikasjon | [sf-brukernotifikasjon](https://github.com/navikt/sf-brukernotifikasjon) | :white_circle: -> `KAFKA` | [Brukernotifikasjon](https://confluence.adeo.no/display/PTC/Brukernotifikasjon+-+SF+-%3E+sf-brukernotifikasjon) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/2grjuRxnz/crm-mellomvare-alerts?orgId=1&from=now-2d&to=now&viewPanel=65) |
| sf-henvendelse-db | [sf-henvendelse-db](https://github.com/navikt/sf-henvendelse-db) | :white_circle: -> `Postgres` |  |

## Apper i team-dialog ([Team Salesforce arbeidsgiver](https://teamkatalog.nav.no/team/ca3111db-6766-4821-a6d9-604a3a2564fa))

### fss

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| sf-arbeidsgiveraktivitet | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA`<sup>+</sup> -> :white_circle: | [Arena Aktiviteter](https://confluence.adeo.no/display/PTC/Arena+Aktiviteter) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=19) |

### gcp

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| crm-kafka-activity-events | [crm-kafka-activity](https://github.com/navikt/crm-kafka-activity) | :white_circle: -> `KAFKA` | [Datavarehus](https://confluence.adeo.no/display/PTC/Datavarehus) |||
| crm-kafka-activity-kurs | [crm-kafka-activity](https://github.com/navikt/crm-kafka-activity) | :white_circle: -> `KAFKA` | [Datavarehus](https://confluence.adeo.no/display/PTC/Datavarehus) |||
| crm-kafka-activity-oppgaver | [crm-kafka-activity](https://github.com/navikt/crm-kafka-activity) | :white_circle: -> `KAFKA` | [Datavarehus](https://confluence.adeo.no/display/PTC/Datavarehus) |||
| ereg-sf | [ereg-sf](https://github.com/navikt/ereg-sf) | `KAFKA(cache)` -> :white_circle: | [Enhetsregisteret](https://confluence.adeo.no/display/PTC/Enhetsregisteret) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=2)|
| ereg-splitter-change | [ereg-splitter-change](https://github.com/navikt/ereg-splitter-change) | `REST` -> `KAFKA(cache)` | [Enhetsregisteret](https://confluence.adeo.no/display/PTC/Enhetsregisteret) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=4)|
| sf-arbeidsgiver-kontaktskjema | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [Kontaktskjema](https://confluence.adeo.no/display/PTC/Kontaktskjema) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=6) |
| sf-crm-activity-events | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||| [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=22)|
| sf-crm-activity-oppgaver | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||| [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=23)|
| sf-dialogmote | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [Modia Dialogmøte](https://confluence.adeo.no/pages/viewpage.action?pageId=439124041) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=16) |
| sf-ia-sak| [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [FIA](https://confluence.adeo.no/display/PTC/FIA) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=14)|
| sf-permiteringsvarsel | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [Permitteringsvarsel](https://confluence.adeo.no/pages/viewpage.action?pageId=366852440) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=8) |
| sf-stilling | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [Arbeidsplassen](https://confluence.adeo.no/display/PTC/Arbeidsplassen) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=12)|
| sf-sykefravaersstatistikk | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||| [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=20) |
| sf-tiltak-avtale | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [Tiltaksgjennomføring](https://confluence.adeo.no/pages/viewpage.action?pageId=514484870)  || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&editPanel=8) |


