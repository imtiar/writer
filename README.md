# 小言を575でのせるアプリ

## 要件
- 作品を新規記録することができる。この時のステータスは「下書き」「投稿済み」の２つにすること。
- 自分の作品であれば作品を上げ下げすることができる。
- 自分の作品であれば、作品の権限画面で作成者を変更することができる。（作品の権限もうつる）
- 自分の作品であれば作品を削除することができる。
- 作品一覧画面がある。ここにはステータスが「投稿済み」の作品が表示される。
- マイタスク画面がある。ここには作成者が自分かつステータスが「下書き」「投稿済み」全ての作品が表示される。投稿済みの作品と下書きの作品が区別できるようにすること。
- Bootstrapを用いて画面をレスポンシブ対応させる。
- メール認証付きのログイン機能がある。
- コーディング規約 に基づいて開発できている。
- アプリケーションを日本語化設定する。
- 画面設計通りにデザインをする。

## サンプルアカウント
### ユーザーA
- Eメール `mo@gmail.com`
- パスワード `writer`

### ユーザーB
- Eメール `nyonyo@gmail.com`
- パスワード `writer`

## テーブル設計
`usersテーブル`
- Deviseデフォルトのカラム
- 名前(name)

`tasksテーブル`
- 1行目(text)
- 2行目(text)
- 3行目(text)
- 状態（投稿済みか下書きか）(integer)
- 作成者(user_id)

## 画面設計

`ログイン`

<img width="1365" alt="ログイン" src="https://user-images.githubusercontent.com/78004609/121285710-cb78f780-c919-11eb-8fda-84fc28f8e092.png">

`サインアップ`

![サインアップ](https://user-images.githubusercontent.com/78004609/121285867-0549fe00-c91a-11eb-9a12-085fe253a28a.png)

`ユーザー編集`

![ユーザー編集画面](https://user-images.githubusercontent.com/78004609/121286069-49d59980-c91a-11eb-8832-9f77ae800494.png)

`タスク一覧`

![タスク一覧](https://user-images.githubusercontent.com/78004609/121286259-8acdae00-c91a-11eb-8c87-c7c1af8f0a9e.png)

`マイタスク一覧`

<img width="1438" alt="マイタスク" src="https://user-images.githubusercontent.com/78004609/121286391-b8b2f280-c91a-11eb-8e6c-d5576985e821.png">

`タスク詳細`

<img width="1438" alt="タスク詳細" src="https://user-images.githubusercontent.com/78004609/121286475-db450b80-c91a-11eb-8d98-7758555ac6e4.png">

`タスク新規`

<img width="1438" alt="タスク新規" src="https://user-images.githubusercontent.com/78004609/121286582-fca5f780-c91a-11eb-968b-111150f96821.png">

`タスク編集`

<img width="1438" alt="タスク編集" src="https://user-images.githubusercontent.com/78004609/121286711-30811d00-c91b-11eb-908b-ee2563664ef4.png">

`タスクアサイン`

<img width="1438" alt="タスクアサイン" src="https://user-images.githubusercontent.com/78004609/121286790-4b539180-c91b-11eb-813d-7143d61ed8f3.png">
