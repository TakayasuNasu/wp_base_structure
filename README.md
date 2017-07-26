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

There is dummy data in `db-data/theme-test-data-ja`.  
If you need you can use it from `Tool>import>WordPress`.  
`db-data/theme-test-data-ja`にダミー用のデータがあるので、必要なら  
管理画面のツール->インポートの「WordPress」からインポートして使ってください。  

**Composer**  
Use composer to install wordpress plugin.  
pluginのインストールはcomposerを使用。
```
docker run --rm -v $(pwd):/app composer/composer update
```
