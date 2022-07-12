---
Title: SVN Crashkurs
---

Fragen und Antworten:

## Installieren von SVN?

Siehe [http://subversion.tigris.org](http://subversion.tigris.org)

## Installieren von Subclispe in Eclipse? (NEU!)

Siehe [http://subclipse.tigris.org/install.html](http://subclipse.tigris.org/install.html)

## Auschecken eures Gruppenkontos?

Auf der Kommandozeile 

``` svn co http://popeye.unibe.ch/svn/p2/GroupXY 
```

Dies erstellt einen Ordner <tt>GroupXY</tt> und holt die aktuellen Dateien vom Server. 

## Dateien hinzufügen?

Auf der Kommandozeile 

``` svn add filenames 
```

Dies markiert die Dateien lokal so dass sie beim nächsten Commit unter Versionskontrolle sind.

## Dateien "commiten"?

Auf der Kommandozeile 

``` svn ci
```

Dies lädt alle lokalen Ãnderungen auf den Server hoch.

## Kommentar direkt übergeben?

Der Commitkommentar kann auf der Kommandozeile übergeben werden

``` svn ci -m "Your commit message goes here" 
```

## Dateien "updaten"?

Auf der Kommandozeile

``` svn up
```

Dies holt die aktuellen Dateien vom Server.

## Weitere Fragen?

Auf der Kommandozeile

``` svn help
```

Oder mail an <a href="mailto:p2-beratung@iam.unibe.ch">p2-beratung@iam.unibe.ch</a>

