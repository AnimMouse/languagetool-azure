FROM openjdk:19-alpine
RUN mkdir ngrams && cd ngrams && wget -O - https://languagetool.org/download/ngram-data/ngrams-en-20150817.zip | jar -x
ENV VERSION 5.7
RUN wget https://languagetool.org/download/LanguageTool-$VERSION.zip && unzip LanguageTool-$VERSION.zip && rm LanguageTool-$VERSION.zip
WORKDIR /LanguageTool-$VERSION
COPY languagetool.sh /
CMD ["/languagetool.sh"]
EXPOSE 8080