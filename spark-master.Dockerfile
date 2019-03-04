FROM spark-base

COPY start-master.sh /

ENV SPARK_MASTER_PORT 7077
ENV SPARK_MASTER_WEBUI_PORT 8083
ENV SPARK_MASTER_LOG /spark/logs

EXPOSE 8083 7077 6066

CMD ["/bin/bash", "/start-master.sh"]
