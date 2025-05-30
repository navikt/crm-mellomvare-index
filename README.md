# crm-mellomvare-index
En indeks og oversikt over mellomvareapper

## Apper i teamcrm ([team Platforce](https://teamkatalog.nav.no/team/06a47c6b-557c-491e-b036-d6abbc77b04f))

<details open>
<summary><b>fss</b></summary>

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| sf-arkiv  | [sf-arkiv](https://github.com/navikt/sf-arkiv) | :white_circle: -> `Postgres` | [Lokalt arkiv](https://confluence.adeo.no/display/PTC/Lokalt+arkiv) | | [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/2grjuRxnz/crm-mellomvare-alerts) |
| sf-audit  | [sf-audit](https://github.com/navikt/sf-audit) | :white_circle: -> `Auditlog` | [ArcSight ESM (Snokelogg)](https://confluence.adeo.no/pages/viewpage.action?pageId=358554596) ||[:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/2grjuRxnz/crm-mellomvare-alerts)|
| sf-websak | [sf-websak](https://github.com/navikt/sf-websak) | :white_circle: -> `SFTP Windows` | [Websak](https://confluence.adeo.no/display/PTC/Websak)|| [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/2grjuRxnz/crm-mellomvare-alerts) |

</details>

<details open>
<summary><b>gcp</b></summary>

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| saas-proxy | [saas-proxy](https://github.com/navikt/saas-proxy) | :white_circle: -> `REST` | [Integrasjoner mot GCP](https://confluence.adeo.no/display/PTC/Integrasjoner+mot+GCP) ||[:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/fdwrbrxreg3k0f/saas-proxy)|
| sf-logout  | [sf-logout](https://github.com/navikt/sf-logout ) | -> :white_circle: | [Autentisering med ID-porten](https://confluence.adeo.no/display/PTC/Autentisering+med+ID-porten) || [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/2grjuRxnz/crm-mellomvare-alerts) |
| sf-nada-crm | [sf-nada-crm](https://github.com/navikt/sf-nada-crm) | :white_circle: -> `BigQuery` | [Informasjonsforvaltning](https://confluence.adeo.no/pages/viewpage.action?pageId=460429182) || [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/2grjuRxnz/crm-mellomvare-alerts) |
| sf-skjerming | [sf-skjerming](https://github.com/navikt/sf-skjerming) | `KAFKA` -> :white_circle: | [Skjermingsløsningen](https://confluence.adeo.no/pages/viewpage.action?pageId=395739530) || [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/2grjuRxnz/crm-mellomvare-alerts) |
| sf-pdl-kafka | [kafka-platforce](https://github.com/navikt/kafka-platforce) | `KAFKA` -> :white_circle: ||| [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/2grjuRxnz/crm-mellomvare-alerts) |
| sf-geografisktilknytning | [kafka-platforce](https://github.com/navikt/kafka-platforce) | `KAFKA` -> :white_circle: | || [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/2grjuRxnz/crm-mellomvare-alerts) |
| sf-msgraph | [sf-msgraph](https://github.com/navikt/sf-msgraph) |  |  | | |
| sf-pubsub | [sf-pubsub](https://github.com/navikt/sf-pubsub) |  |  | | [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/de1ugacfas268f/sf-pubsub?orgId=1) |

</details>

## Apper i teamnks ([NKS Støtteteam](https://teamkatalog.nav.no/team/7e59af11-68bf-4485-ae7e-259966ccfc38))

<details  open>
<summary><b>fss</b></summary>

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| sf-henvendelse-api-proxy | [sf-henvendelse-api-proxy](https://github.com/navikt/sf-henvendelse-api-proxy) | -> :white_circle: | [Henvendelse API](https://confluence.adeo.no/display/PTC/Salesforce+Henvendelse+API) || [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/cdy25bbf33ls0b/mellomvare-nks) |

</details>

<details open>
<summary><b>gcp</b></summary>

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| sf-brukernotifikasjon | [sf-brukernotifikasjon](https://github.com/navikt/sf-brukernotifikasjon) | :white_circle: -> `KAFKA` | [Brukernotifikasjon](https://confluence.adeo.no/display/PTC/Brukernotifikasjon+-+SF+-%3E+sf-brukernotifikasjon) || [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/cdy25bbf33ls0b/mellomvare-nks) |
| sf-henvendelse-db | [sf-henvendelse-db](https://github.com/navikt/sf-henvendelse-db) | :white_circle: -> `Postgres` ||| [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/cdy25bbf33ls0b/mellomvare-nks) |

</details>

## Apper i team-dialog ([Team Salesforce arbeidsgiver](https://teamkatalog.nav.no/team/ca3111db-6766-4821-a6d9-604a3a2564fa))

<details open>
<summary><b>fss</b></summary>

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| sf-arbeidsgiveraktivitet | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA`<sup>+</sup> -> :white_circle: | [Arena Aktiviteter](https://confluence.adeo.no/display/PTC/Arena+Aktiviteter) || [:chart_with_upwards_trend:](https://grafana.nais.io/d/-8rGLXB4k/mellomvare-teamdialog?orgId=1&from=now-2d&to=now&viewPanel=19) |

</details>

<details open>
<summary><b>gcp</b></summary>

| App navn  | Github | Basisfunksjon | Confluence | Status | Grafana |
| --------- | ------ | ------------- | :--------: | ------ | :-----: |
| crm-kafka-activity-events | [crm-kafka-activity](https://github.com/navikt/crm-kafka-activity) | :white_circle: -> `KAFKA` | [Datavarehus](https://confluence.adeo.no/display/PTC/Datavarehus) ||[:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog)|
| crm-kafka-activity-kurs | [crm-kafka-activity](https://github.com/navikt/crm-kafka-activity) | :white_circle: -> `KAFKA` | [Datavarehus](https://confluence.adeo.no/display/PTC/Datavarehus) ||[:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog)|
| crm-kafka-activity-oppgaver | [crm-kafka-activity](https://github.com/navikt/crm-kafka-activity) | :white_circle: -> `KAFKA` | [Datavarehus](https://confluence.adeo.no/display/PTC/Datavarehus) ||[:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog)|
| ereg-sf | [ereg-sf](https://github.com/navikt/ereg-sf) | `KAFKA(cache)` -> :white_circle: | [Enhetsregisteret](https://confluence.adeo.no/display/PTC/Enhetsregisteret) || [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog)|
| ereg-splitter-change | [ereg-splitter-change](https://github.com/navikt/ereg-splitter-change) | `REST` -> `KAFKA(cache)` | [Enhetsregisteret](https://confluence.adeo.no/display/PTC/Enhetsregisteret) || [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog)|
| sf-dialogmote | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [Modia Dialogmøte](https://confluence.adeo.no/pages/viewpage.action?pageId=439124041) || [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog) |
| sf-ia-behovsvurdering | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [FIA](https://confluence.adeo.no/display/PTC/FIA) || [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog)|
| sf-ia-leveranse | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [FIA](https://confluence.adeo.no/display/PTC/FIA) || [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog)|
| sf-ia-sak| [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [FIA](https://confluence.adeo.no/display/PTC/FIA) || [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog)|
| sf-stilling | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [Arbeidsplassen](https://confluence.adeo.no/display/PTC/Arbeidsplassen) || [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog)|
| sf-sykefravaersstatistikk-bransje | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||| [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog) |
| sf-sykefravaersstatistikk-land | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||| [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog) |
| sf-sykefravaersstatistikk-metadata | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||| [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog) |
| sf-sykefravaersstatistikk-naring | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||| [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog) |
| sf-sykefravaersstatistikk-naringskode | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||| [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog) |
| sf-sykefravaersstatistikk-sektor | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||| [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog) |
| sf-sykefravaersstatistikk-virksomhet | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: ||| [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog) |
| sf-tiltak-avtale | [kafka-dialog](https://github.com/navikt/kafka-dialog) | `KAFKA` -> :white_circle: | [Tiltaksgjennomføring](https://confluence.adeo.no/pages/viewpage.action?pageId=514484870)  || [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog) |
| sf-nada-dialog | [sf-nada-dialog](https://github.com/navikt/sf-nada-dialog) | :white_circle: -> `BigQuery` |  || [:chart_with_upwards_trend:](https://grafana.nav.cloud.nais.io/d/-8rGLXB4k/mellomvare-teamdialog)|

</details>
