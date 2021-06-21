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

![4EE422A5-3CED-443E-A52E-B5E407A82FB6](https://user-images.githubusercontent.com/46142153/122705531-ea1fac80-d290-11eb-90eb-26f699112db7.jpeg)


`サインアップ`

![EEEF824D-B4A9-4FB1-B02F-88DD05A097F1_1_105_c](https://user-images.githubusercontent.com/46142153/122705583-028fc700-d291-11eb-885d-e01102378314.jpeg)


`ユーザー設定`

![DCB62CCD-76D5-4B26-95A0-64A4ABD35904_1_105_c](https://user-images.githubusercontent.com/46142153/122705605-0a4f6b80-d291-11eb-9344-3447061d4f88.jpeg)


`作品一覧（皆の小言）`

![0605BA49-96EB-47FC-8EF5-C5FA6CE1EE05_1_105_c](https://user-images.githubusercontent.com/46142153/122705657-26530d00-d291-11eb-86f6-c83c80243607.jpeg)


`マイ作品一覧（私の小言）`

![FB4E82B6-9597-469D-A5A9-59B54AF7EA3B_1_105_c](https://user-images.githubusercontent.com/46142153/122705774-59959c00-d291-11eb-82c9-c0b1a8c77c71.jpeg)


`作品詳細`

![D3740319-A944-4767-8BB4-2C84B6847CF3_1_105_c](https://user-images.githubusercontent.com/46142153/122705865-8184ff80-d291-11eb-89a1-130f9c0ddf78.jpeg)


`作品新規`

![B0784BD9-88DE-4A11-B8EA-3721D5284743_1_105_c](https://user-images.githubusercontent.com/46142153/122705880-8cd82b00-d291-11eb-9fac-145c95fc34a1.jpeg)


`作品編集`

![0C40C670-B2C5-470F-9138-06457B4E85AC_1_105_c](https://user-images.githubusercontent.com/46142153/122705897-92ce0c00-d291-11eb-85e9-3dfb367d79a0.jpeg)
