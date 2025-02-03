# kazusa_servlet

## サーバー起動

```
docker compose up --build
```

## サーバーを落とす

```
docker compose down
```

## サーバー再起動

```
docker compose down
```
```
docker compose up --build
```

## 様子がおかしいとき


```
docker compose down --volumes
```

```
docker compose build --no-cache
```

などをしてから

```
docker compose up --build
```

## ブラウザで以下のURLにアクセスする
```
http://localhost:8080
```
