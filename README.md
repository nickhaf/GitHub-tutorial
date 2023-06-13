# Was ist git?
Git ist das am weitesten verbreitete Versionskontrollsystem . 

# Warum git?
* Die gesamte Versionsgeschichte eines Projektes ist abrufbar/wiederherstellbar. Deshalb sind solche Dateibenennungen wie final.txt, final-v02.txt, final-v02_NH_corrections.txt ... nicht nötig. Änderungen werden vorgenommen und hochgeladen, alte Versionen sind aber jederzeit wiederherstellbar.
* Das Projekt liegt online, kann also nicht so einfach verloren gehen, wenn z.B. der Rechner kaputt get.
* Kollaboratives Arbeiten an Textdatein (vor allem, aber nicht nur Code) wird deutlich erleichtert - dazu später mehr. Ganz generell haben mit Git immer alle Zugriff auf die neuste Version und können Änderungen einfach nachverfolgen, auch von verschiedenen Computern.

# Wie arbeiten wir mit Git?
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

# Wie bekomme ich ein Repository auf den PC geladen "clonen"?
Am einfachsten über:
- Code - Open with GitHub Desktop
- Alternativ: Den Link kopieren und im entsprechenden Tool angeben. 

# Basic Workflow (einfach)
Wenn ich die Verbindung zwischen meinem lokalen Projekt und dem Git-Repository hergestellt habe, kann ich grob folgendem Workflow folgen: 
1) **Pull changes:**
   - Herunterladen der neusten Änderungen. So haben wir die Aktuelle Version des Projektes auf dem Rechner.
   - `git pull main`
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
   - Anfrage, ob man die Vorgenommenen Änderungen auf dem **neuen branch** mit dem Hauptprojekt **main branch** zusammenführen darf. Hier lässt Git seine Magie walten und führt die verschiedenen Dokumente zusammen. Manchmal können hier merge-conflicts auftreten. Diese muss man manuell beheben, indem man die Textpassagen auswählt, die behalten werden sollen. Hier können auch reviewer angegeben werden, die noch einmal auf die Änderungen schauen sollen. 
   - Am einfachsten über GitHub.

# Issues
Über Issues kann man einfach ToDos kommunizieren. Sie lassen sich untereinander, mit Commits oder Pull-Requests verknüpfen, sodass man genau nachvollziehen kann, wo welcher Issue behoben wurde. Z.B.: `closes #1` (in der Commit oder Pull-Request Beschreibung) schließt den Issue, sobald der Commit oder die Pull-Request in den main branch gemerged wird.

# Übung
Arbeitet die Issues gemeinsam ab. Wenn ihr einen Issue bearbeiten wollt, assigned euch dazu, sodass die anderen wissen, dass jemand daran arbeitet.
