#!/bin/sh
java -Xms256m -Xmx512m -cp languagetool-server.jar org.languagetool.server.HTTPServer --port 8080 --public --allow-origin '*' --languageModel /ngrams/