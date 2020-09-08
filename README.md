<div align="center">
  <img src="https://user-images.githubusercontent.com/68151784/92426827-d7d2f700-f1c5-11ea-9352-a5e58445aaba.png" title="original_logo">
</div>
<p align="center">不安な子どものプログラミング教育で、いつでも相談できる先生を探せるアプリ</p>

## 　　 

## 🚩 アプリURL
 ### **https://original-28318.herokuapp.com/**

## 　　

## 💡アプリ機能
### 🔍メンターを探す
<P>メンター一覧から、メンターを探すことができます。契約金額順や契約数順で並び替えることもできます。<br>メンターの名前をクリックすると、詳細画面が表示されます。レビューをみることもできます。</p>
<div align="center">
  <img src="https://user-images.githubusercontent.com/68151784/92428605-84af7300-f1ca-11ea-9159-056438d85501.gif">
</div>

## 　　

### 🤝契約する
<p>気に入ったメンターを見つけたら、そのメンターと契約することができます。<br>契約状況は、ユーザーの登録情報のページで確認できます。</p>
<div align="center">
  <img src="https://user-images.githubusercontent.com/68151784/92429083-defd0380-f1cb-11ea-9f6d-0804d5e4cc87.gif">
</div>

## 　　

### ✉️相談する
<p>契約したメンターとチャットでやりとりすることができます。画像も送信できます。</p>
<div align="center">
  <img src="https://user-images.githubusercontent.com/68151784/92429333-8da14400-f1cc-11ea-8eef-7c32fc5588c9.gif">
</div>

## 　　

## 🔐利用方法
### **https://original-28318.herokuapp.com/** にログイン
### Basic認証を入力
| Basic認証 |     ID     | パスワード |
|-----------|------------|------------|
|| nickname | anonymous |


### ログイン
|テストユーザー|メールアドレス|パスワード|
|--------------|--------------|----------|
|| test@gmail.com | test111 |

## 　　

## 目指した課題解決
<p>今年の4月から小学校のプログラミング教育が必修になりました。幼少期からIT教育を受けさせることはとても良いことだと思いますが、現場では不安の声も大きいようです。<br>そこで、いつでも相談できるメンターを探せるアプリがあれば安心してIT教育に取り組めるのではないかと考えました。<br>詳細についてはブログでまとめています。</p>

### **https://shangang7321.hatenablog.com/entry/2020/08/12/085249**
### **https://shangang7321.hatenablog.com/entry/2020/09/05/095832**

## 要件定義 

### ユーザー管理機能
#### 目的
<p>ユーザーが新規登録・ログインするため。</p>

#### 詳細
<p>Deviseを用いて新規登録、ログイン・ログアウトする機能を実装する。</p>

#### ストーリー（ユースケース）
<p>トップページにを訪問したユーザーが、右上の新規登録ボタンを押すとユーザー名、email、パスワードを入力して新規登録できるようにする。<br>ログイン済みのユーザーには、ログアウトボタンが押せるようにする。</p>




## 🖥開発環境
- Ruby
- Ruby on Rails
- JavaScript
- jQuery
- MySQL
- GitHub
- AWS
- Visual Studio Code
- Heroku


## 📊テーブル設計
### users テーブル
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

### Profiles テーブル
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

### Orders テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| user | references | null: false, foreign_key: true |
| profile | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :profile

### rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string |             |
### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages

### room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

### messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

### reviews テーブル
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