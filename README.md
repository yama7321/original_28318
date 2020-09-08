<div align="center">
  <img src="https://user-images.githubusercontent.com/68151784/92426827-d7d2f700-f1c5-11ea-9352-a5e58445aaba.png" title="original_logo">
</div>
<p align="center">不安な子どものプログラミン教育で、いつでも相談できる先生を探せるアプリ</p>

## 🚩 アプリURL
 ### **https://original-28318.herokuapp.com/**

## アプリ機能
### メンターを探す
<P>メンター一覧から、メンターを探すことができます。契約金額順や契約数順で並び替えることもできます。<br>メンターの名前をクリックすると、詳細画面が表示されます。レビューをみることもできます。</p>
<div align="center">
  <img src="https://user-images.githubusercontent.com/68151784/92427798-6b0d2c00-f1c8-11ea-9124-b3327f923bf1.gif" title="readme1" width="700px" height="">
</div>







## users テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email | string | null: false |
| password | string | null: false |
| mentor | boolean | default: false | 

### Association
- has_one :profile
- has_many :orders
- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages
- has_many :reviews

## Profiles テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| title | string | null: false |
| self_introduction | text | null: false |
| price | integer | null: false |
| user | references | null: false foreign_key: true | 

### Association
- belongs_to :user
- has_many :orders
- has_many :reviews

## Orders テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| user | references | null: false, foreign_key: true |
| profile | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :profile

## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string |             |
### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## reviews テーブル
| Column | Type   | Options     |
| ------ | ------ | ----------- |
| content | text  | null: false |
| user | references | null: false, foreign_key: true|
| profile | references | null: false, foreign_key: true|
| valuation | integer  | null: false |

- belongs_to :user
- belongs_to :profile

# ER図
https://app.diagrams.net/#G1TH0gVvOrAMPlFco-psHXl8zEPZ7nliQu