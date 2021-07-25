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
・ここではサンプル画像、登録者はアニメキャラで代用(本来は登録者のペットの画像を投稿)


# 製作背景
飼っているペットについて投稿したり、動物好きの人が集まり情報を共有できる場所を設けたいと思いました。
ペット同士の情報をシェアするアプリが欲しいという知人の意見を参考に作成しました。

# DEMO
・トップページ
![e7440076475eddc6b055396b8ae5f894](https://user-images.githubusercontent.com/83489031/126901983-f90a359b-a331-47cf-b7da-d9ba0909117f.gif)

・新規登録画面
![13f2e6a62bd38841d39591f7e431493f](https://user-images.githubusercontent.com/83489031/126902620-042fc9f2-a1fc-4a39-b07c-4ab4d9d271e0.gif)


・編集画面・詳細画面
![f5545aa842ff710f1ea9bf7fdad8068f](https://user-images.githubusercontent.com/83489031/126902307-8bbdfff4-4f30-4993-a859-df65e39e3af0.gif)


・マイページ
![525143b0fc88240b60a37f47dcaf995b (1)](https://user-images.githubusercontent.com/83489031/126902173-f16c9532-6934-44a4-93f5-c3c5e608c01a.gif)

・コメント機能
![2b8bfcf768be0e35cb5e3f52096d1d6e](https://user-images.githubusercontent.com/83489031/126902579-03c9e5df-1491-4fb3-a784-fe46ed28b83d.gif)

・検索機能
![87131330eff92d68e136de55a3f0b6c0](https://user-images.githubusercontent.com/83489031/126902436-fd73bc50-aa7e-438c-ac2e-58be7e7ca30b.gif)



# 工夫したポイント

・バック背景にjavascriptで動画を挿入したこと
・各ボタンの位置や形など装飾にこだわったこと


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


