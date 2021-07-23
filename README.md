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
飼っているペットについて投稿したり、動物好きの人が集まり情報を共有できる場所を設けたいと思いました。
ペット同士の情報をシェアするアプリが欲しいという知人の意見を参考に作成しました。

# DEMO
・トップページ
https://user-images.githubusercontent.com/83489031/126761185-26171811-6906-4b45-a57d-70fc5c3cfab5.mp4

・新規登録画面
[![Image from Gyazo](https://i.gyazo.com/099995f6b0522772cb71138e804b6aab.gif)](https://gyazo.com/099995f6b0522772cb71138e804b6aab)


・投稿画面
[![Image from Gyazo](https://i.gyazo.com/0f7a94de784adc57b3363b1a82689fbc.gif)](https://gyazo.com/0f7a94de784adc57b3363b1a82689fbc)

・編集画面
[![Image from Gyazo](https://i.gyazo.com/fbbfb7b801bab8da7a67e1568e7edf4e.gif)](https://gyazo.com/fbbfb7b801bab8da7a67e1568e7edf4e)


・詳細画面
[![Image from Gyazo](https://i.gyazo.com/a288d32d99b14014dd531959299026f5.gif)](https://gyazo.com/a288d32d99b14014dd531959299026f5)

・マイページ
[![Image from Gyazo](https://i.gyazo.com/da754665db4c498a69baf154f725d3ba.gif)](https://gyazo.com/da754665db4c498a69baf154f725d3ba)

・コメント機能
[![Image from Gyazo](https://i.gyazo.com/714eecf795af5dd52d87f1a1ea2e8edd.gif)](https://gyazo.com/714eecf795af5dd52d87f1a1ea2e8edd)


・検索機能
[![Image from Gyazo](https://i.gyazo.com/a4832bf2149cae9b6ec5ba05bf03db3c.gif)](https://gyazo.com/a4832bf2149cae9b6ec5ba05bf03db3c.gif)



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

#テスト
RSpec

# エディタ
VSCode

# 課題や今後実装したい機能
・いいね機能
・コメント編集・削除機能実装
・ユーザー情報編集機能



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


