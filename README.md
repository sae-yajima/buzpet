# README
# アプリ名
 BuzPet  (バズペット)


# 概要
ユーザー管理機能
・ペットの日常や写真を投稿できるアプリ


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
[![Image from Gyazo](https://i.gyazo.com/d893da59eef37637f2ad9639087d3569.gif)](https://gyazo.com/d893da59eef37637f2ad9639087d3569)



・新規登録画面
[![Image from Gyazo](https://i.gyazo.com/cb7946151ec021701452ec84fc9fe41e.gif)](https://gyazo.com/cb7946151ec021701452ec84fc9fe41e)

・投稿画面
[![Image from Gyazo](https://i.gyazo.com/6be1b55a5a278c21eb2552724eb52b22.gif)](https://gyazo.com/6be1b55a5a278c21eb2552724eb52b22)


・編集画面
[![Image from Gyazo](https://i.gyazo.com/fbbfb7b801bab8da7a67e1568e7edf4e.gif)](https://gyazo.com/fbbfb7b801bab8da7a67e1568e7edf4e)


・詳細画面
[![Image from Gyazo](https://i.gyazo.com/39c9a2a7608dd2b02feec5fd389d349c.gif)](https://gyazo.com/39c9a2a7608dd2b02feec5fd389d349c)

・マイページ
[![Image from Gyazo](https://i.gyazo.com/bce19e84a3f34a8f82732d5e2e20860c.gif)](https://gyazo.com/bce19e84a3f34a8f82732d5e2e20860c)

・コメント機能
[![Image from Gyazo](https://i.gyazo.com/878cc104dff89d1d0636d2d936d95e7b.gif)](https://gyazo.com/878cc104dff89d1d0636d2d936d95e7b)


・検索機能
[![Image from Gyazo](https://i.gyazo.com/bb1c3bf2c857878ee222c77f75a9fbc8.gif)](https://gyazo.com/bb1c3bf2c857878ee222c77f75a9fbc8)


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


