# SQL

> ⬅️ [README](README.md)

## Base

```sql
SELECT * FROM user;
```

```sql
SHOW TABLES;
```
## Docker

### Generating a dump

```shell
docker compose exec mysql mysqldump -u root -p password mydb > dump_$(date +%Y%m%d_%H%M%S).sql
```

### Import a dump

```shell
docker compose exec mysql mysql -u root mydb < dump.sql
```

> ⬅️ [README](README.md)