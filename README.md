## 環境構築
### セットアップファイルを実行
以下のコマンドで特にエラーがなければ成功です。
```
sh setup.sh
```

## docker操作
#### コンテナを作成する
```
docker compose up -d
```

#### コンテナを破棄する
```
docker compose down
```

#### コンテナ、イメージ、ボリュームを破棄する
```
docker compose down --rmi all --volumes
```

#### コンテナ、ボリュームを破棄する
```
docker compose down --volumes
```
