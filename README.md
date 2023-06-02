# CSV Checker
Checker for soil unit data CSV files

## Build image

```
docker build -t sogis/csvchecker:latest .
```

## Run image

```
docker run --rm --name csvchecker -e APACHE_ACCESS_LOG_ENABLED=true -p 8282:8080 sogis/csvchecker:latest
```

## Build and run image with Docker Compose

As the image requires a database,
it is recommended to run it using Docker Compose:
```
docker compose up
```
