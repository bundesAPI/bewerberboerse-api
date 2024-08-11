# Arbeitsagentur Bewerberbörse API 
Die Bundesagentur für Arbeit verfügt über eine der größten Datenbanken für Bewerber*innen in Deutschland. Obwohl sie vollständig staatlich ist und es sich dabei um einen sehr spannenden Basisdatensatz handelt, mit dem viele Analysen möglich wären, bietet die Bundesagentur für Arbeit dafür bis heute keine offizielle API an.


## Authentifizierung
Die Authentifizierung funktioniert über die clientId der Bewerberbörse:

clientId: jobboerse-bewerbersuche-ui

Bei folgenden GET-requests ist die clientId als Header-Parameter 'X-API-Key' zu übergeben.


## Bewerbendenbörse

**URL:** https://rest.arbeitsagentur.de/jobboerse/bewerbersuche-service/pc/v1/bewerber

Die Bewerberbörse ermöglicht es, Bewerber*innen mit verschiedenen GET-Parametern zu filtern. 


**Parameter:** *was* (Optional)

Beruf, Kenntnisse, Sprachen, etc.


**Parameter:** *ausbildungsart* (Optional)

- au
- dsa
- dsp

Ausbildungsart: au=Ausbildung, dsa=Duales Studium (ausbildungsintegrierend), dsp=Duales Studium (praxisintegrierend).


**Parameter:** *wo* (Optional)

Ort, PLZ, Bundesland, Land, etc.


**Parameter:** *umkreis* (Optional)

- 0
- 10
- 15
- 20
- 50
- 100
- 200

Umkreis: 0=ganzer Ort; 10=10km; 15=15km; 20=20km; 50=50km; 100=100km; 200=200km.


**Parameter:** *angebotsart* (Optional)

- ar
- au
- pt
- se

Angebotsart: ar=Arbeitskräfte; au=Auszubildende/Duales Studium; pt=Praktikanten/Trainees; se=Selbstständige.


**Parameter:** *arbeitszeit* (Optional)

- vz
- tz
- snw

Arbeitszeit: vz=Vollzeit; tz=Teilzeit; snw=Schicht,Nacht,Wochenende; ht=Heim-/Telearbeit; mj=Minijob.


**Parameter:** *berufserfahrung* (Optional)

- be
- mb

Berufserfahrung: be=Berufseinsteiger*innen; mb=Mit Berufserfahrung.


**Vertragsart:** *vertragsart* (Optional)

- be
- ub

Vertragsart: be=Befristet; ub=Unbefristet.


**Parameter:** *behinderung* (Optional)

- an

Behinderung: an=Nur Schwerbehinderte oder ihnen gleichgestellte Bewerber*innen anzeigen.


**Parameter:** *page* (Optional)

Seite (beginnend bei 0).


**Parameter:** *size* (Optional)

Anzahl der Ergebnisse


### Beispiel:


```bash
bewerbende=$(curl -m 60 \
-H "X-API-Key: jobboerse-bewerbersuche-ui" \
'https://rest.arbeitsagentur.de/jobboerse/bewerbersuche-service/pc/v1/bewerber?angebotsart=ar&wo=Feucht&umkreis=0&page=0&size=25')
```


## Bewerbendendetails

**URL:** https://rest.arbeitsagentur.de/jobboerse/bewerbersuche-service/pc/v1/bewerberdetails/{Referenznummer}

Details zu einzelnen Bewerbenden lassen sich unter Angabe der Referenznummer (z.B. 10005-955011998040991647-B) abfragen,
u.a. Bildungshistorie, beruflicher Werdegang, Lizenzen, Kenntnisse & Skills.

### Beispiel:


```bash
bewerbendendetails=$(curl -m 60 \
-H "X-API-Key: jobboerse-bewerbersuche-ui" \
'https://rest.arbeitsagentur.de/jobboerse/bewerbersuche-service/pc/v1/bewerberdetails/10005-955011998040991647-B')
```
