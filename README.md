# README
# アプリ名
 BuzPet  (バズペット)


# 概要
ユーザー管理機能　　
・ユーザーの新規登録ができる
・ユーザーのログイン、ログアウトができる

画像投稿機能　
・画像を投稿できる
・投稿を編集、削除できる

コメント機能　　
・投稿されている画像にコメントできる
・コメントしたをしたユーザーの名前が表示される
・コメントしたユーザーのページに遷移できる

検索機能　
・投稿されている画像のタイトルを検索できる

# 本番環境
URL:https://buzpet.herokuapp.com/
ログイン情報(テスト用)
・Eメール:aaa@aaa
・パスワード:aaa111


# 製作背景
飼っているペットについて投稿したり、動物好きの人が」集まり情報を共有できる場所を設けたいと思いました。
ペット同士の情報をシェアするアプリが欲しいという知人の意見を参考にさせていただきました。

# DEMO
・トップページ
https://i.gyazo.com/456d04f9d4d5841a6e1d3e401ea47b87.jpg


・新規登録画面
https://i.gyazo.com/1f5561667864dfc532aaa93644759a2a.png

・投稿画面
https://i.gyazo.com/412cdeaaa9b6099ceae57b6f5106a5b2.jpg


・編集画面
https://i.gyazo.com/5f7f73d81e80d669e424d32581eecba8.jpg

・詳細画面
https://i.gyazo.com/1caf0df9841d441ae294b4367cb91796.jpg

・マイページ
https://i.gyazo.com/0522cce3746bb6848db17cf56e6cb893.jpg


# 工夫したポイント

・投稿写真がメインになるようにバック画像にフィルターをかけたこと
・バック背景に画像を挿入したこと
・各ボタンの位置や装飾にこだわりました

# 使用技術（開発環境）
# バックエンド
Ruby,Ruby on Rails

# フロントエンド
HTML,CSS,JavaScript

# データベース
MySQL,SequelPro

# インフラ
AWS(S3),Docker

# Webサーバー(本番環境)
Heroku



# ソース管理
GitHub,GitHubDesktop

#　テスト
RSpec

# エディタ
VSCode

# 課題や今後実装したい機能
・いいね機能を追加したいと思います
・コメント編集・削除機能できるようにしたいと思います
・個別にダイレクトメッセージを送れる機能を実装したいと思います



# DB設計  

# usersテーブル

| Column             | Type   | Options                   |
|-----------------   | ------ | ------------------------- |
| email              | string | unique: true,null: false  |
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |
| name               | string | null: false               |
| profile            | text   | null: false               |
| category           | text   | null: false               |

### Association
-has_many :pets
-has_many :comments


# petsテーブル

| Column             | Type       | Options                        |
|-----------------   | ---------- | ------------------------------ |
| title              | string     | unique: true,null: false       |
| catch_copy         | text       | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association
-belongs_to :user
-has_one_attached :image
-has_many :comments


# commentsテーブル
| Column             | Type       | Options                        |
|-----------------   | ---------- | ------------------------------ |
| text               | text       | null: false                    |
| pet                | references | null: false, foreign_key: true |                    |
| user               | references | null: false, foreign_key: true |

### Association
-belongs_to :pet
-belongs_to :user


