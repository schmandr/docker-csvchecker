# docker-csvchecker
Docker image containing a checker for soil unit data CSV files

## Build image

```
docker build -t sogis/csvchecker:localbuild .
```

## Run image

```
docker run --rm --name csvchecker -e APACHE_ACCESS_LOG_ENABLED=true -p 8282:8080 sogis/csvchecker:localbuild
```
