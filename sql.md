# SQL

```sql
SELECT * FROM user;
```

```sql
SHOW TABLES;
```

## Generating a dump

```shell
docker compose exec mysql mysqldump -u root --databases mydb > dump_$(date +%Y%m%d_%H%M%S).sql
```

## Import a dump

```shell
docker compose exec mysql mysql -u root mydb < dump.sql
```

> Return to [README](README.md).