# README

# HAVE FUN TENNIS

## アプリケーション概要
- テニス交流アプリ
1 このアプリでは誰でも気軽にテニスで交流ができることを目的としています

2 ホストは、日時や場所を決め部屋を作ります

3 参加者は条件にあえば部屋に入り参加できる旨を伝えます

## 利用方法
ユーザー登録をすることで、テニスの募集投稿と、投稿者の募集に対する参加をすることができる
基本的には基本的に募集に関係のない投稿はしない
ログインユーザーは投稿するボタンから必要項目を入力して投稿する
ログインユーザーは投稿者の募集に参加をすることができ、参加したルームの中でメッセージができる

## 目指した課題解決
自分自身が社会人になった時、気軽にテニスができる人がいないことが問題だった
そこで、同じ悩みを持つ人たちを繋ぐきっかけになればと思いこのアプリを作成
誰でも気軽に参加できテニスで交流できることを目的としている


## 洗い出した要件



## 実装した機能についての説明
ユーザー登録機能
- ログインとログアウトが行える
- ログインユーザーは募集投稿機能を利用できる

募集部屋の投稿
- 必要事項を入力して部屋を作成
- 投稿者は編集及び削除ができる

募集部屋での投稿
- 登録者及び、参加者はその部屋の中でやりとりができる


## 実装予定の機能
1 ユーザー承認機能の実装

2 通知機能

3 検索機能

4 ユーザーに対するいいね機能

## ローカルでの動作方法
以下の手順でコマンド入力を行う。
- clone
- bundle install
- yarn install
- rails db:create
- rails db:migrate
- rails s
- http://localhost:3000/ にアクセスする


# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| profile  | text   | null: false |
| age      | integer| null: false |
| gender   | integer| null: false |

### Association

- has_many :post_users
- has_many :post_rooms, through: room_users
- has_many :comments

## post_rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |
| date   | integer | null: false |
| time   | integer null: false |
| place  | string | null: false |
| information   | text | null: false |
| capacity   | string | null: false |

### Association

- has_many :post_users
- has_many :users, through: room_users
- has_many :comments

## post_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| post_room   | references | null: false, foreign_key: true |

### Association

- belongs_to :post_room
- belongs_to :user

## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| post_room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user
