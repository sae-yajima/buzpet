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
![トップページ](https://user-images.githubusercontent.com/83489031/126764510-f28b1275-ff63-4e26-8332-c7c69bdec978.gif)


・新規登録画面
[![Image from Gyazo](https://i.gyazo.com/099995f6b0522772cb71138e804b6aab.gif)](https://gyazo.com/099995f6b0522772cb71138e804b6aab)


・投稿画面
![投稿](https://user-images.githubusercontent.com/83489031/126763674-121acf2f-b140-4381-be88-91f09974d284.gif)

・編集画面
![編集](https://user-images.githubusercontent.com/83489031/126763484-79677c1c-1ac6-4787-b9d1-8b42cb06acea.gif)


・詳細画面
![詳細](https://user-images.githubusercontent.com/83489031/126763355-88d1d4c9-099f-46a3-940f-84281679762c.gif)


・マイページ
![マイページ](https://user-images.githubusercontent.com/83489031/126763184-897f42ba-7c69-48f5-b5d8-496a29e6b6a4.gif)

・コメント機能
![コメント2](https://user-images.githubusercontent.com/83489031/126763026-385cbc38-c4fc-4cc3-b1b8-561db2848e5f.gif)

・検索機能

![検索](https://user-images.githubusercontent.com/83489031/126761954-856dae85-206f-4f08-be0d-ffdc74e96caf.gif)


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


