# **api-with-loopback**

API REST build with Loopback.io (NodeJS).

```
git clone git@github.com:jansanchez/api-with-loopback.git nodeapi
```

```
cd nodeapi
```

## Install
```
make setup
```

## Up
```
make up
```

## Up with logs
```
make uplog
```

## Run Api container with bash
```
docker-compose run api bash
```

## Loopback app
```
lb
```

## Loopback models
```
lb model
```

## Loopback datasources
```
lb datasource
```

## API explorer
- [http://localhost:3000/explorer](http://localhost:3000/explorer)

## API explorer
- [http://localhost:3000/api/companies](http://localhost:3000/api/companies)

## API explorer
- [http://localhost:3000/api/companies?filter={"where":{"slug":"prosegur"}}](http://localhost:3000/api/companies?filter={"where":{"slug":"prosegur"}})

## Paths
- DB: ./db/wsa.sql
- Collection: ./source/api/insomnia/wsa.json
