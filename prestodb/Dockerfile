FROM ahanaio/prestodb-sandbox:latest

RUN curl -o //opt/presto-server/plugin/hive-hadoop2/json-serde-1.3.8-jar-with-dependencies.jar --progress-bar -SL http://www.congiu.net/hive-json-serde/1.3.8/hdp23/json-serde-1.3.8-jar-with-dependencies.jar 

ENTRYPOINT "/opt/entrypoint.sh"
