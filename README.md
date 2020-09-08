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

***

### メンター新規登録機能
#### 目的
<p>メンターとして登録できるようにするため。</p>

#### 詳細
<p>メンターのプロフィール作成画面から、メンター登録をすることができるようにする。</p>

#### ストーリー（ユースケース）
<p>ログイン済みのユーザーには、メンター登録をするボタンを表示。<br>それを押すとプロフィール作成画面が表示され、タイトル、顔写真、スライド、自己紹介文、契約金額の入力をしてメンターとして登録することができる。</p>

***

### メンター一覧表示機能
#### 目的
<p>ユーザーがメンターを探せるようにするため。</p>

#### 詳細
<p>メンター新規登録機能を通じて登録されたユーザーがトップページに一覧表示される。</p>

#### ストーリー（ユースケース）
<p>メンター登録が完了すると、トップページにメンター一覧として追加される。<br>ユーザーはログインしていなくてもトップページからメンター一覧をみることができる。</p>

***

### メンター詳細表示機能
#### 目的
<p>ユーザーがメンターの自己紹介文や金額を見て契約するか判断できるようにするため。</p>

#### 詳細
<p>メンター登録機能で入力した情報が他のユーザーにも閲覧できるようにする。</p>

#### ストーリー（ユースケース）
<p>トップページのメンター一覧表示画面にて、メンターの名前をクリックするとそのメンターの詳細プロフィールが表示される。<br>表示される内容は、顔写真、名前、タイトル、スライド、自己紹介文、契約金額。</p>

***

### メンター情報編集・削除機能
#### 目的
<p>登録したメンター情報を編集したり、削除できるようにするため。</p>

#### 詳細
<p>メンター登録しているユーザーは、トップページのメンター情報編集のリンクから編集画面に飛べる。</p>

#### ストーリー（ユースケース）
<p>トップページからメンター情報編集のリンクを押し、メンター情報編集画面に遷移する。<br>新規登録画面と同じようなフォームを再度入力することによってメンター情報を編集できる。<br>削除するボタンを押すと該当のレコードを削除し、メンター登録を抹消できる。</p>

***

### メンター契約機能
#### 目的
<p>メンターとの契約をできるようにするため。</p>

#### 詳細
<p>PAYJPを用いて該当のメンターと契約するためにクレジットカード決済を導入する。</p>

#### ストーリー（ユースケース）
<p>メンター詳細画面に「メンター契約する」ボタンを用意し、それを押すと契約画面に遷移するようにする。<br>入力する内容はカード番号、期限、CVCの3つ。<br>メンター契約なので定額課金が望ましいが、ひとまず単発課金で実装する。</p>

***

### DM機能
#### 目的
<p>メンターとチャットでやりとりできるようにするため。</p>

#### 詳細
<p>メンターとユーザーがチャットでやりとりできるようにする。</p>

#### ストーリー（ユースケース）
<p>メンター詳細画面に「チャットで相談する」ボタンを設置する。<br>ボタンを押すと、現在ログイン中のユーザーとメンターの2人が属するチャットルームが作成され、チャット画面に遷移する。<br>画像と文章を投稿できるようにする。</p>

***

### 定額課金機能
#### 目的
<p>メンターとの契約を定額課金モデルで行えるようにするため。</p>

#### 詳細
<p>PAYJPの定額課金モデルを利用し、メンター契約料を月額課金にする。</p>

#### ストーリー（ユースケース）
<p>メンター詳細画面から「メンター契約する」ボタンを押すと契約画面に遷移する。<br>カード情報を入力するとPAYJPの定額課金がはじまる。</p>

***

### レビュー機能
#### 目的
<p>メンターの評価をユーザーが共有できるようにするため。</p>

#### 詳細
<p>メンター詳細ページにレビュー欄を用意し、ユーザーがコメントと星の数でレビューすることができるようにする。</p>

#### ストーリー（ユースケース）
<p>メンター詳細画面にあるレビュー欄から、コメントと星の数を登録してレビューを投稿できる。<br>ログインしていないユーザーはレビューの閲覧はできるが、投稿は出来ないようにする。<br>メンター一覧にもレビューの平均値が表示されるようにする。</p>

***

### 契約一覧表示機能
#### 目的
<p>ユーザーが契約しているメンターを確認できるようにするため。</p>

#### 詳細
<p>トップページにあるユーザー名をクリックすると、登録情報が表示される。<br>表示内容はユーザー名、登録しているemail、契約中のメンターの一覧。</p>

#### ストーリー（ユースケース）
<p>トップページにあるユーザー名をクリックするとユーザーの登録情報と契約一覧が表示される。<br>契約一覧は、メンターの名前、契約金額、契約が続いているかどうか、初回契約日。<br>契約しているメンターの欄には解約するボタンを表示する。</p>

***

### メンター一覧ソート機能
#### 目的
<p>金額、評価、契約する順でメンターを比較できるようにするため。</p>

#### 詳細
<p>トップページにあるプルダウンを選択するとメンターの一覧が並び変わる。</p>

#### ストーリー（ユースケース）
<p>トップページにあるプルダウンを選択するとメンターの順番が変わる。<br>ソートする項目は金額、新しい順、古い順、契約件数順、評価が高い順。</p>

***

### DM未読バッチ通知機能
#### 目的
<p>新着メッセージの有無をわかりやすくするため。</p>

#### 詳細
<p>未読メッセージがある場合はチャットボタンにバッチ通知を表示する。</p>

#### ストーリー（ユースケース）
<p>新着メッセージがある場合はバッチ通知を確認することで、チャットページに移動しなくても目返信があるかどうかわかるようになる。</p>

***

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
<div align="center">
  <img src="https://user-images.githubusercontent.com/68151784/92455068-331fdc00-f1fc-11ea-8f2d-9c00bf296dba.png">
</div>