# Korte uitleg Harmonisator

In de zomer van 2022 is het concept van de "Harmonisator" ontwikkeld, dat is gebaseerd op generieke principes en theorieën en dat momenteel bestaat uit een metamodel ontologie waaruit een gegevensmodel voor termen en relaties is gegenereerd, een database met een beheer app en diverse exportfuncties (RDF/XML, HTML, JSON, definitielijst, etc.). Voorbeelden van schema's zijn gebruikt om het model te testen en om de werking zichtbaar te maken. 

![ConceptHarmonisator400](https://user-images.githubusercontent.com/38116193/195636316-7464512b-61d3-4ef3-a9ed-1d0363a24062.png)

## Doel van Proof of Concept

De Proof of Concept (PoC) heeft tot doel om een basisversie van een Voorzieningen applicatie te ontwikkelen, die kan doorgroeien tot een generiek inzetbare toepassing voor alle gemeenten. Daarbij wordt de meerwaarde van de Harmonisator-aanpak zichtbaar.

Binnen het [werkpakket Voorzieningen registratie]( https://gitlab.com/discipl/RON/regels.overheid.nl/-/issues/18) maken we een kleine Voorzieningen-applicatie en API, op grond van de spreadsheetvoorbeelden van de gemeente Vught. Zo wordt de samenhang zichtbaar tussen de aanpak van de "Harmonisator" en de ontwikkeling van een generiek bruikbare en duurzame Voorzieningen-applicatie, die aansluit op de principes en het gedachtegoed van regels.overheid.nl. De kern hiervan is dat eerst de begrippen, relaties en definities helder zijn vastgelegd, als stevig fundament voor tal van toepassingen van gegevens- en informatiegebruik.

### Voorzieningen Vught in spreadsheet

Er zijn twee voorbeelden van spreadsheets met overzicht op de voorzieningen. Deze zijn vanuit gebruikersoptiek handzaam, compact en makkelijk aan te passen (het is structuur, opmaak én data in één). Daarmee is het voor de gemeente waarschijnlijk voldoende informatief voor gebruik in kleine kring van ambtelijke gebruikers, maar niet voor gebruik door inwoners. De spreadsheets gebruiken we voor analyse van de gegevensstructuur en om voorbeelddata in te voeren. 

## Voorgestelde aanpak

De globale aanpak is:

- Begrippen vastleggen in de Harmonisator
- De bedrijfsobjecten benoemen
- Een gegevensmodel maken
- Een API maken
- Een proefdatabase vullen
- Een zoekfunctie bieden die de API gebruikt

### Samenhang Voorzieningen en Harmonisator 

In het onderstaande schema staan de op te leveren producten in geel. De Harmonisator verzamelt en analyseert de termen en relaties in het domein/context van de "Voorzieningen van de overheid". Concreet in de vorm van de voorbeeld-spreadsheets. De termen en relaties worden ingevoerd in de Harmonisator-database, daarbij voorzien van de standaard kenmerken, waaronder definitie, omschrijving, datatype, etc. 
Uit de database genereren we de benodigde producten.
![image-20220902133018264](https://user-images.githubusercontent.com/25812095/188638539-e20c0c7d-97c2-41d0-99d0-66c534fd7e8e.png)

#### Eerste verkenning begrippenkader (lijst van termen en definities)
Een eerste inventarisatie van termen waarvan definities kunnen worden vastgelegd:
![image](https://user-images.githubusercontent.com/25812095/188638046-f68baece-122d-4d34-8d88-28ae01a81b2c.png)

#### Schets bedrijfsobjecten 
Een eerste snelle analyse van de spreadsheets levert een schets van de objecttypen in de context van Voorzieningen.
![image](https://user-images.githubusercontent.com/25812095/188638874-2d791ba9-2467-404a-b443-d98a79b35283.png)

- Een voorziening heeft kenmerken van de voorziening zelf, van de categorie (b.v. Welzijn), mogelijk van een cluster (digitale hulp), de doelgroep en van de aanvraag ervan.
- In een bredere context heeft een voorziening ook een ontwikkeltraject en gebruiksfase. Promotie is belangrijk in relatie tot de probleemstelling van onbekendheid met voorzieningen. 
- Bij een voorziening zijn organisaties en contactpersonen betrokken in verschillende rollen (aanbieder, bemiddelaar, budgetverstrekker, etc). Op termijn is hiervoor een Wie&Wat-gids denkbaar om met betrokkenen middels een goed actormodel consistent te koppelen aan voorzieningen.  

#### Standaard attributen uit Harmonisator

De Harmonisator heeft in de kern drie hoofdentiteiten:
![image](https://user-images.githubusercontent.com/25812095/188639069-c1facb5d-3a80-4457-94ed-9f06918d95f1.png)

De standaard attributen van Term zijn:
![image](https://user-images.githubusercontent.com/25812095/188639144-85fec5d5-ba5c-4902-a039-ccb015377b7f.png)

### Activiteiten

- Maken van een schema "Voorzieningen" middels het Harmonisator-concept
- Analyse van de termen en relaties uit de spreadsheets van Vught
- Maken van een generiek schema "Voorzieningen" middels het Harmonisator-concept (begrippenkader)
- Genereren van een definitielijst als begrippenkader Voorzieningen
- Maken van modellen voor D-organisatie
- Genereren conceptueel gegevensmodel van voorzieningen
- Genereren logisch gegevensmodel (entiteiten en attributen) van voorzieningen
- Genereren technisch gegevensmodel (create script) van voorzieningen voor relationele database in MySQL
- Genereren van JSON schema van voorzieningen
- Genereren van API van voorzieningen
- Maken van modellen voor I-organisatie
- CRUD-onderhoudsfuncties in PHP (met codegenerator Scriptcase) voor invoer proefgegevens in de database Voorzieningen
- Maken van een zoekfunctie via de API op de database Voorzieningen 
- Vullen met proefgegevens (spreadsheets Vught)
- Generiek ontsluiten van de proefgegevens met API.php ([Maurits van der Schee - Github](https://github.com/mevdschee/php-crud-api))
- Bevragen met zoek_voorzieningen.php (PHP met datatables en w3css opmaak) 

### Op te leveren producten

- [ ] Schema "Voorzieningen" middels het Harmonisator-concept
- [ ] Definitielijst als begrippenkader Voorzieningen
- [ ] Conceptueel gegevensmodel Voorzieningen
- [ ] Logisch gegevensmodel Voorzieningen (entiteiten en attributen) 
- [ ] Technisch gegevensmodel Voorzieningen voor gebruik met relationele database in MySQL
- [ ] CRUD-onderhoudsfuncties in PHP (met codegenerator Scriptcase) voor invoer proefgegevens
- [ ] JSON schema van voorzieningen 
- [ ] API van voorzieningen
- [ ] Set proefgegevens uit spreadsheets Vught
- [ ] Zoek app als demo  
