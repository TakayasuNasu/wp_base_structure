Usage
---

You should change file name of `.env.sample` to `.env`.
`.env.sample`を`.env`に変更。
```
$mv .env.sample .env
```

If you need you can edit `docker-compose.yml` and `Dockerfile`.
必要なら`docker-compose.yml`、`Dockerfile`を編集してください。

then you can run below command to start docker container.
そして、以下のコマンドでコンテナを起動できます。
```
$docker-compose -p test up -d
```
