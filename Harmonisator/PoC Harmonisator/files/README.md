# Toelichting bestanden

12 december 2022

## Algemeen

### Proefgegevens en coderingen

Met de bestanden in deze map kan men zelf wat installaties doen om inzicht te krijgen in het gegevensstructuren.

### Kwaliteit gegevens

De gegevens in de hier geplaatste bestanden zijn voor een deel compleet, voor zover nodig voor de Proof of Concept. Zo zijn niet bij alle termen de definities ingevuld. Ook zijn de proefgegevens van Vught deels dummy-gegevens. 
De MySQL-database is binnen de PoC-scope **niet** geoptimaliseerd (indexen, views).

### Taal

In algemene zin is de landstaal leidend voor het beschrijven van termen en relaties. 
De meer intern gerichte ICT termen zijn Engelstalig (en-US); dat sluit aan bij de taal voor uitwisseling en hergebruik op Europees/internationaal niveau.

**Naamgevingsconventies**

Uitgangspunt voor namen binnen het Harmonisator-concept (schema's, termen, entiteit- en attribuutnamen, coderingen, etc) is om deze te schrijven in snake_case. Vandaar uit kunnen alle andere schrijfwijzen naar behoefte worden afgeleid. Daarnaast heeft iedere term een leesbaar 'label'.

## Voorzieningen demo omgeving

Op www.ccoverheid.nl/demo/voorzieningen staan een aantal componenten voor de voorzieningen-toepassing. Het zijn kopieën van de databases in de ontwikkelomgeving. De structuur en inhoud kan/zal - zonder aankondiging vooraf - geregeld worden gewijzigd. 

### MySQL database

- Met tabellen en views volgens het concept van de Harmonisator, van waaruit het voorzieningen-gegevensmodel is opgebouwd (met prefix cc_ van **C**ommon **C**oncepts)
  - cc_term, cc_triple, triple_term_view
- Met tabellen en views voor de toepassing zelf
  - facility, facility_view
- Met tabellen uit het domein van 'Samenwerken' (met prefix co van **co**öperatie) voor de relaties van een voorziening met organisaties, personen en thema's
  - co_group (generieke naam voor organisatie, team, netwerkgroep, etc), co_person en co_theme (thema, domein, context).

De database kan alleen via de API en het Scriptcase demoprogramma worden benaderd. 

De structuur is te vinden in /files/ MySQLCreateInsertFaciltiyAndCOoperationTables.sql en MySQLCreateInsertHarmonisatorTables.sql 

### API

We gebruiken vooralsnog de API.php van Maurits van der Schee voor het verkennen van de structuur van de gegevens van voorzieningen. Uitgebreide documentatie over de API.php is te vinden op https://github.com/mevdschee/php-crud-api 

De entiteit Voorziening (facility) is te benaderen en te verkennen op https://ccoverheid.nl/demo/voorzieningen/api.php/records/facility, b.v. met Postman.

Voorbeelden:

```
GET /records/facility/1
GET /records/facility?filter=fac_target_group_code
GET /records/facility_view
GET /records/facility_view?filter=g_name,cs,jeugdfonds

GET /records/term_view?include=term_label,term_definition

```

## Demo-applicatie

Een demo-applicatie is gemaakt met Scriptcase. 

https://ccoverheid.nl/demo/voorzieningen/menu.