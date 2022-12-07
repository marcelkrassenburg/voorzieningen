# Opdracht PoC Voorzieningen met Harmonisator

## Doel van Proof of Concept

De Proof of Concept (PoC) heeft tot doel om een basisversie van een Voorzieningen applicatie te ontwikkelen, die kan doorgroeien tot een generiek inzetbare toepassing voor alle gemeenten. Daarbij wordt de meerwaarde van de Harmonisator-aanpak zichtbaar.

Binnen het [werkpakket Voorzieningen registratie](https://github.com/MinBZK/regels.overheid.nl/issues/51) maken we een kleine Voorzieningen-applicatie en API, op grond van de spreadsheetvoorbeelden van de gemeente Vught. Zo wordt de samenhang zichtbaar tussen de aanpak van de "Harmonisator" en de ontwikkeling van een generiek bruikbare en duurzame Voorzieningen-applicatie, die aansluit op de principes en het gedachtegoed van regels.overheid.nl. De kern hiervan is dat eerst de begrippen, relaties en definities helder zijn vastgelegd, als stevig fundament voor tal van toepassingen van gegevens- en informatiegebruik.

### Voorzieningen Vught in spreadsheet

Er zijn twee voorbeelden van spreadsheets met overzicht op de voorzieningen. Deze zijn vanuit gebruikersoptiek handzaam, compact en makkelijk aan te passen (het is structuur, opmaak én data in één). Daarmee is het voor de gemeente waarschijnlijk voldoende informatief voor gebruik in kleine kring van ambtelijke gebruikers, maar niet voor gebruik door inwoners. De spreadsheets gebruiken we voor analyse van de gegevensstructuur en om voorbeelddata in te voeren. 

## Globale aanpak

- Begrippen vastleggen in de Harmonisator (term + definitie)
- De bedrijfsobjecten benoemen en attributen toevoegen als relaties naar termen 
- Een gegevensmodel genereren uit Harmonisator-model
- Een API genereren uit Harmonisator-model
- Een proefdatabase opzetten en vullen
- Een zoekfunctie bieden die de API gebruikt