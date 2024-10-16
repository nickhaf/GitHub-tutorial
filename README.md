# Einführung
## Was ist git?
Git ist das am weitesten verbreitete Versionskontrollsystem . 

## Warum git?
* Die gesamte Versionsgeschichte eines Projektes ist abrufbar/wiederherstellbar. Deshalb sind solche Dateibenennungen wie final.txt, final-v02.txt, final-v02_NH_corrections.txt ... nicht nötig. Änderungen werden vorgenommen und hochgeladen, alte Versionen sind aber jederzeit wiederherstellbar.
* Das Projekt liegt online, kann also nicht so einfach verloren gehen, wenn z.B. der Rechner kaputt geht.
* Kollaboratives Arbeiten an Textdatein (vor allem, aber nicht nur Code) wird deutlich erleichtert - dazu später mehr. Ganz generell haben mit Git immer alle Zugriff auf die neuste Version und können Änderungen einfach nachverfolgen, auch von verschiedenen Computern.

## Wie arbeiten wir mit Git?
Die eat-Pakete werden alle über GitHub gehosted. Zur Bedienung steht eine ganze Reihe von verschiedene Tools zur Verfügung. Wir werden uns gleich einige Tools anschauen, letztendlich könnt ihr mit einem oder allen davon arbeiten, hauptsache ihr kommmt gut damit zurecht.
Hier die Tools, die ich am häufigsten nutze:
* Kommandozeile
* RStudio Git-Integration
* VS Code Git-Integration
* GitHub Desktop
* GitKraken

Projekte liegen auf GitHub in sogenannten Repositories. Diese können entweder euch gehören (z.B. wenn ihr für ein eigenes Projekt ein Repository erstellt habt), oder jemand anderem (z.B. einer Paketentwicklerin). 
Je nachdem, welche Zugriffsrechte ihr auf ein Repository habt, gibt es verschiedene Setups: https://happygitwithr.com/common-remote-setups.html
Für eat-Pakete ist wahrscheinlich 25.3 "Ours" am relevantesten, weil ihr dort Contributors seid. 

Die Grundidee ist, dass die Datein in diesen Repositories regelmäßig auf den PC geladen werden (man arbeitet also lokal auf dem eigenen Rechner), und die Änderungen dann wieder auf den Server hochgeladen werden. Dadurch sind die Onlineversion und die Lokale Version also mehr oder weniger synchron (wenn man auch wirklich runter- und hochlädt, das passiert nämlich manuell und nicht automatisch). 

## Wie bekomme ich ein Repository auf den PC geladen "clonen"?
Am einfachsten über:
- Code - Open with GitHub Desktop
- Alternativ: Den Link kopieren und im entsprechenden Tool angeben. 

## Was dann?
Wenn das Repository lokal auf den PC heruntergelanden wurde, können Änderungen vorgenommen werden. 
Diese speichert man für git ab, indem man sie comitted. 
Achtung: Die Änderungen werden damit noch nicht hochgeladen.
Das passiert erst, wenn man wieder "pushed", also die Änderungen hochlädt.

## Übung
Erstellt ein eigenes Repository.
Pullt es, erstellt ein RStudio-Projekt + R-Sktipt, und pusht dann wieder. 

# Weitere Features
## Branches
Ein wichtiges Feature von Git sind die "branches".
Das Projekt liegt auf dem branch "main". 
Für einfach Projekte reicht es, hierdrauf zu arbeiten.
Von diesem main branch können weitere Äste abgezweigt werden.
Das sind zuerst Kopien von "main", können aber unabhängig bearbeitet werden.
Am Ende werden sie wieder mit "main" zusammengeführt, also "gemerged".
So können mehrer Personen gleichzeitig auf unterschiedlichen branches arbeiten, und am Ende zusammenmergen.
Git kann schon sehr gut unterscheiden, welcher Änderungen zuletzt vorgenommen wurden. 
Wenn aber gleichzeitig an der selben Stelle gearbeitet wurde, können merge-conflicts auftreten.
Diese muss man dann beheben, bevor man mergen kann.

## Issues
Über Issues kann man einfach ToDos kommunizieren. Sie lassen sich untereinander, mit Commits oder Pull-Requests verknüpfen, sodass man genau nachvollziehen kann, wo welcher Issue behoben wurde. Z.B.: `closes #1` (in der Commit oder Pull-Request Beschreibung) schließt den Issue, sobald der Commit oder die Pull-Request in den main branch gemerged wird.

# Kollaborativer Workflow Übersicht
Wenn ich die Verbindung zwischen meinem lokalen Projekt und dem Git-Repository hergestellt habe, kann ich grob folgendem Workflow folgen: 
1) **Pull changes:**
   - Herunterladen der neusten Änderungen. So haben wir die Aktuelle Version des Projektes auf dem Rechner.
   - `git pull`
2) **New branch:**
   - Erstellt einen Neuen "Ast". Hier kann ich nach Belieben Änderungen vornehmen, ohne Angst haben zu müssen, dass meine Vorherige Version überschrieben wird.
   - `git checkout -b "new_branch"`
3) **Committen**
   - Das speichert die Zwischenschritte ab (ähnlich wie STRG + S), nur dass ich auch sogenannte commit-messages vergeben kann, die die Vorgenommenen Änderungen beschreiben. Dafür muss ich zuerst die Änderungen "stagen", also Git mitteilen, das die Änderungen an dieser Datei durch den Commit auch gespeichert werden sollen. Möglichst oft committen, sodass man zu möglichen Zwischenschritten zurückspringen kann (man kann nämlich den Projektstand zu jedem Commit wiederherstellen), und gleichzeitig gut dokummentiert, was man gemacht hat. 
   - `git add .`
   - `git commit -m "Informative message"`
4) **Pushen**
   - Hochladen der Änderungen auf GitHub.
   - `git push`
5) **Pull-request**
   - Anfrage, ob man die Vorgenommenen Änderungen auf dem **neuen branch** mit dem Hauptprojekt **main branch** zusammenführen darf. Hier lässt Git seine Magie walten und führt die verschiedenen Dokumente zusammen. Manchmal können hier merge-conflicts auftreten. Diese muss man manuell beheben, indem man die Textpassagen auswählt, die behalten werden sollen. Hier können auch reviewer angegeben werden, die noch einmal auf die Änderungen schauen sollen. Um merge-conflicts möglichst zu vermeiden bietet es sich an, regelmäßig zu pullen, zu pushen und zu mergen. 
   - Am einfachsten über GitHub.

# Übung
Arbeitet die Issues in diesem Repository gemeinsam ab. Wenn ihr einen Issue bearbeiten wollt, assigned euch dazu, sodass die anderen wissen, dass jemand daran arbeitet.
Kleine änderung