FROM elasticsearch:7.1.1

COPY ./elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

RUN elasticsearch-plugin install analysis-kuromoji
