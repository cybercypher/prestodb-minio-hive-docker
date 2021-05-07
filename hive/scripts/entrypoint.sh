#!/bin/bash

[[ -n "${DB_URI}" ]] && wait-for ${DB_URI}

[[ ! -f initSchema.completed ]] && schematool -dbType mysql -initSchema && touch initSchema.completed
hive --service metastore

/opt/apache-hive-3.1.2-bin/bin/hiveserver2
