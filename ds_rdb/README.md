# Postgres

PostgreSQLは、オープンソースで広く利用されているリレーショナルデータベースです。
テーブル、主キー、外部キー、トランザクションといったRDBの基本機能を備えており、業務システムの基幹データやマスターデータ、トランザクションデータの保存先として広く使われています。

厳密なスキーマ管理やSQLによる柔軟な検索、更新処理に強く、アプリケーションの一次データを管理するデータソースとして扱いやすい点が特徴です。
分析基盤の文脈では、取り込み元となる業務データベースの例として扱われることが多く、CDCやバッチ取り込みの対象にもなります。

本書では、PostgreSQLをデータソース側の業務データベースとして利用します。
注文情報、利用者情報、商品情報などを保持する元データベースとして配置し、Sparkやその他の処理基盤から取り込む対象として扱います。

参考: https://www.postgresql.org/

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