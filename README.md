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

## 変更をリモートに反映

```
git add .
```

```
git commit -m "適当なメモ"
```

```
git push
```

## masterの変更をローカルに反映

```
git fetch
```

```
git merge origin/master
```

