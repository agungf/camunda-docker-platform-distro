# camunda docker platform distro

A docker container with camunda bpm platform distro installed.
It is possible to configure the database on startup by
environment variables.

## Usage

Start with default h2 settings:

```
docker run -p 8080:8080 camunda/camunda-platform-distro
```

Configure postgresql database:

```
docker run --rm -p 8080:8080 -e DB_DRIVER="org.postgresql.Driver" -e DB_JDBC="jdbc:postgresql://localhost:5432/process-engine" -e DB_USERNAME=camunda -e DB_PASSWORD=camunda camunda/camunda-docker-platform-distro
```

## Tags Available

- `latest`: latest stable or alpha tomcat distro
- `tomcat-7.2.0`: camunda bpm 7.2.0 tomcat distro
- `tomcat-7.1.0`: camunda bpm 7.1.0 tomcat distro

## Database Driver Available

- h2
- mysql
- postgresql
