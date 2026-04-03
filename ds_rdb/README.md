# Postgres
Mongoについての説明を入れること。
あとリンク
本書での使い方

# 接続情報

## ワーキングコンテナからのアクセス

プログラム的に利用するエンドポイント
| 項目               | アクセス                                                                | ユーザー | パスワード |
|--------------------|-----------------------------------------------------------------------|----------|------------|
| 接続文字列       |  jdbc:postgresql://host.docker.internal:5435/domain_database  | pyspark@local.data.platform(api_token)       | OLklloONpt0lKiIDG6mJBR8FIdpqpyhX          |
| CLIによる接続(from ワーキングコンテナ) |  psql -h host.docker.internal -p 5435 -U domain -d domain_database | admin   | admin          |

※ユーザは今回ldapのデータを利用しています(ildffファイル参照)。

## SSL
なし

# 初期設定

以下の設定をブートストラップ時に設定。

データベース:
- domain_database

テーブル:
- orders  -> 商品の注文を記録するテーブル
- people   -> サイトの利用者を管理するマスターテーブル
- products   -> サイトの商品を管理するマスターテーブル

# コマンドスニペット　

Under Construction

# Sparkとの連携に利用しているドライバ(maven)
org.postgresql:postgresql:42.7.3