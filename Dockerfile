# ===========================
# 1. Mavenを使ってアプリをビルド
# ===========================
FROM maven:3.9.9-eclipse-temurin-21 AS build

# コンテナ内の作業ディレクトリを設定
WORKDIR /app

# まずpom.xmlだけをコピーして依存関係をキャッシュ
COPY pom.xml .
RUN mvn dependency:go-offline

# ソースコードをコピーしてビルド
COPY src ./src
RUN mvn package -Dmaven.test.skip=true

# ===========================
# 2. Tomcatでアプリを実行
# ===========================
FROM tomcat:11-jdk21-temurin

# ビルド成果物(WAR)をTomcatのwebappsに配置
#   - ここではデフォルトアプリとして ROOT.war に配置
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Tomcatはデフォルトで8080番ポートで起動
EXPOSE 8080

# Tomcatをフォアグラウンドで起動する
CMD ["catalina.sh", "run"]
