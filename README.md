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
https://user-images.githubusercontent.com/83489031/126300169-262ccafa-58af-434d-8d09-6300ab841fe8.mp4


・新規登録画面
https://user-images.githubusercontent.com/83489031/126306304-6ceb7eee-1da3-44d7-aeac-aa7d1f670b00.mp4

・投稿画面
https://user-images.githubusercontent.com/83489031/126306069-240ae9ab-7233-4534-b0e4-80dfe455138e.mp4

・編集画面
https://user-images.githubusercontent.com/83489031/126305104-97dc3d6b-9252-4c10-8774-a56df822357c.mp4


・詳細画面
https://user-images.githubusercontent.com/83489031/126305179-e931d28b-2652-40e2-8de4-e8dc15e82bff.mp4
・マイページ
https://user-images.githubusercontent.com/83489031/126303564-9b2b2fcf-1304-47c6-8f9a-44cc5129a9ed.mp4

・コメント機能
https://user-images.githubusercontent.com/83489031/126304950-39a04620-ec65-48fa-bb42-a3da9f2c5567.mp4

・検索機能
https://user-images.githubusercontent.com/83489031/126305003-3621c1a8-cb7e-4a83-9faf-712e737d302e.mp4


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


