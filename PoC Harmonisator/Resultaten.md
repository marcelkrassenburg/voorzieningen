# Resultaten

## Schema "Voorzieningen" middels het Harmonisator-concept

In de Harmonisator is een schema toegevoegd en opgebouwd met de naam 'Openbare Voorzieningen Registratie'. In de PoC gevuld met 43 termen, waarvan een deel een definitie heeft gekregen. 

![Schema Voorzieningen](https://user-images.githubusercontent.com/38116193/205655519-42198c6a-9a8f-441a-8ee0-5ce9fcd9df12.png)

## Definitielijst als begrippenkader Voorzieningen

### Definitie Voorziening

Uit het schema zijn losse definities op te halen. Bijvoorbeeld:

_Alle vormen van ondersteuning die geboden worden door nationale of gemeentelijke overheden, maatschappelijke en charitatieve instellingen._

### Lijst van definities binnen het schema

![Lijst van definities](https://user-images.githubusercontent.com/38116193/205656955-ec5e073b-781d-4c18-8b82-1e806c22a1dd.png)

### Voorbeeld 'Voorziening' als begrip

![Het begrip Voorziening met relaties](https://user-images.githubusercontent.com/38116193/205665168-b7a7b855-ffb1-4a70-8733-756dadade4e4.png)

## Conceptueel gegevensmodel Voorzieningen

De objecttypen en hun samenhang bij Voorzieningen. Een voorziening doorloopt een levenscyclus langs de weg: behoefte, ontwikkeling, aanbieding/promotie, aanvraag, gebruik, bijstelling en afbouw.<br />
Gegevens van organisaties en personen (actoren) kunnen uit het generieke gegevensmodel 'Samenwerken' (coöperatie, afkorting 'co') worden gehaald.<br />
De categorisering en clustering van voorzieningen kan volgens standaard thema-indelingen, b.v. van data.overheid.nl worden toegepast.<br />
De gegevens over de rechten op een voorziening worden in de entiteit 'Voorziening-Regel' opgenomen.

![Conceptueel gegevensmodel](https://user-images.githubusercontent.com/38116193/205661461-3b1526b0-03cb-43c5-b890-3998b8e3d552.png)

## Logisch gegevensmodel Voorzieningen

### Entiteiten uit het schema 'Samenwerken' 

![Entiteiten](https://user-images.githubusercontent.com/38116193/205666362-0a61b557-38e4-4cf6-ad96-ca2e91a1b98b.png)

### Entiteiten en attributen met datatypen

![Logisch gegevensmodel](https://user-images.githubusercontent.com/38116193/205658305-f3e5aef4-a323-47a4-9885-b71fec4dfb3e.png)


## Technisch gegevensmodel Voorzieningen 
Voorbeeld van een gegenereerd script om een tabel te maken voor gebruik in relationele database MySQL. <br />
Naamgevingconventies: Engelstalig, snake_case, entiteit prefix in attribuutnaam.

<pre>
--
-- Tabel Voorzieningen: `facility`
--
DROP TABLE IF EXISTS facility; 
 
CREATE TABLE facility  ( 
	fac_uid int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'versie 0.1.15',
	fac_lang_code varchar(5),
	fac_name varchar(255),
	fac_label varchar(255),
	fac_definition varchar(255),
	fac_description varchar(500),
	fac_comment text,
	fac_details text,
	fac_target_group_code varchar(255),
	fac_the_uid int(11),
	fac_cluster_uid int(11),
	fac_g_provider_uid int(11),
	fac_g_intermediair_uid int(11),
	fac_p_contact_uid int(11),
	fac_facr_uid int(11),
	fac_110 char(1),
	fac_120 char(1),
	fac_150 char(1),	
	fac_input_code varchar(100) 
	
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 
</pre>

## CRUD-onderhoudsfuncties in PHP

Onderhoudsscherm voor Voorziening (facility) met codegenerator Scriptcase) voor invoer proefgegevens.

![Onderhoudsscherm voorziening](https://user-images.githubusercontent.com/38116193/205668389-71b40245-fa14-4168-b403-ae1f086d8268.png)


## JSON schema van voorzieningen

![JSON-schema Voorzieningen](https://user-images.githubusercontent.com/38116193/205662637-36268a82-cd85-432a-a845-de2e21bed2bc.png)


## API van voorzieningen

![API Voorziening](https://user-images.githubusercontent.com/38116193/205690100-e3b4f503-e542-416a-90ff-a9f206416102.png)


## Set proefgegevens uit spreadsheets Vught

![Spreadsheet Voorzieningen Vught](https://user-images.githubusercontent.com/38116193/205686905-267871d1-85cf-402d-bc31-dd65d3084047.png)


## Zoek app als demo

![Zoekscherm Voorziening](https://user-images.githubusercontent.com/38116193/205693081-f218c65a-019f-4f23-a6fe-accf298ba298.png)

