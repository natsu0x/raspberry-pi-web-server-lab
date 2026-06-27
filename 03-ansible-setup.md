## 環境

- Raspberry Pi 4
- Raspberry Pi OS
- TP-Linkルーター
- MacからSSH接続
- 自宅LAN内で検証

※セキュリティのため、IPアドレスや認証情報は記載しません。

## 今日やったこと

- Macにansibleをインストール。
- inventoryファイルをMacに登録。
- playbookを作成。
- ラズパイのnginxをアンインストールした状態からplaybookを実行しインストールされるように設定した。
- ブラウザでデフォルトページを確認。
- 以上を一時間で実行した。

## つまずいたこと

nginxのplaybook作成時に正しい書き方が分からず、ansible-playbookコマンドを実行しても正しく動作しなかった。


## 確認したこと

playbookの書き方を再度確認した。

## 解決方法

playbookではsystemctlではなくserviceモジュールを利用する。
また同ファイルのstatusではstartではなくstartedと記すこと。
rolesを使う場合、タスクファイルはroles/nginx/tasks/main.ymlに置く必要がある。

## 学んだこと

- playbookファイル。inventoryファイルの書き方
- ansibleの利用方法
