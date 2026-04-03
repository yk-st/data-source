# MongoDB
Mongoについての説明を入れること。
あとリンク
本書での使い方

# 接続情報

## ワーキングコンテナからのアクセス

プログラム的に利用するエンドポイント
| 項目               | アクセス                                                                | ユーザー | パスワード |
|--------------------|-----------------------------------------------------------------------|----------|------------|
| 接続文字列       |  mongodb://action:pass123@docker.host.internal:27017/user_data  | action    | pass123          |
| Mongoshによる接続 |  mongosh -u action -p pass123 user_data | action   | pass123          |

※ユーザは今回ldapのデータを利用しています(ildffファイル参照)。

## SSL
なし

# Sparkとの連携に利用しているドライバ
https://www.mongodb.com/ja-jp/docs/spark-connector/current/
spark3.5シリーズまで語感のある10.5.0のドライバーを利用します。

# 初期設定

以下の設定をブートストラップ時に設定。

データベース:
- user_data

コレクション(テーブル):
- user_data  -> リバースETL用
- user_sessions_rt　-> リアルタイムデータ保存

# コマンドスニペット　

// 4) コレクション一覧を表示
> show collections
// 例:
// user_ctx

// 5) コレクションのドキュメントをひとつ確認
> db.user_ctx_main.findOne()
// { _id: ObjectId("..."), ユーザーID: 12345, クーポン対象: true }

db.user_sessions_rt.find({ 'ユーザーID': 72 })

// 6) コレクションの統計情報を取得
> db.user_ctx.stats()

## インデックスの確認
db.user_sessions_rt.getIndexes()
