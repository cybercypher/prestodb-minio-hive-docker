## Presto Environment

### About

This environment will allow you to run Presto (Using docker-compose).
 
It Includes the following:

   * MariaDB
   * Hive 3.x 
   * Presto

### Prerequisite
 
Update the following configuration files with your AWS credentials:

* `etc/*`
* `hive/conf/hdfs-site.xml`
* `hive/conf/hive-site.xml`

Have Data in minio:
```sh
s3cmd --config minio.s3cfg mb <SOME_BUCKET_NAME>
```

### Running

```sh
$ docker-compose up -d
```

**WAIT 90 seconds at least**

RUN Beehive to create table

```sh
$ docker-compose exec hive beeline -u jdbc:hive2://localhost:10000
```

```sh
CREATE TABLE <TABLENAME> .... PARTITIONED BY .. LOCATION 's3://<BUCKET>/<PATH>'
```

```sh
MSCK REPAIR TABLE <TABLENAME>
```

### using Presto CLI

```sh
$ docker-compose exec presto presto-cli --catalog s3 --schema default
```
