FROM spark-base

COPY start-worker.sh /

ENV SPARK_WORKER_WEBUI_PORT 8084
ENV SPARK_WORKER_LOG /spark/logs
ENV SPARK_MASTER "spark://spark-master:7077"

EXPOSE 8084

CMD ["/bin/bash", "/start-worker.sh"]
