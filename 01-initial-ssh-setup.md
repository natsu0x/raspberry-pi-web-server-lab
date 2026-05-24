```markdown
# ラズベリーパイ ウェブサーバーラボ

## 目的

Raspberry Piを使って、自宅LAN内でWebサーバーを構築する学習記録です。
SSH接続、Linux操作、Webサーバーの導入、ネットワークの切り分けを学ぶことを目的としています。

## 環境

- Raspberry Pi
- Raspberry Pi OS
- TP-Linkルーター
- MacからSSH接続
- 自宅LAN内で検証

※セキュリティのため、IPアドレスや認証情報は記載しません。

## 今日やったこと

- Raspberry Pi OSをmicroSDカードに書き込んだ
- Raspberry Piを起動した
- MacからSSH接続を試した
- `raspberrypi.local` では接続できなかった
- ルーターのクライアント一覧から端末を確認した
- IPアドレスを使ってSSHログインできた

## つまずいたこと

最初に `ssh user@raspberrypi.local` で接続しようとしました。

しかし、`cannot resolve raspberrypi.local: Unknown host` と表示され、接続できませんでした。

## 確認したこと

Macで `arp -a` を実行したところ、ルーターは表示されましたが、Raspberry Piらしい端末は確認できませんでした。

その後、TP-Linkルーターのクライアント一覧を確認しました。

## 解決方法

`raspberrypi.local` ではなく、ルーター側で確認したIPアドレスを使ってSSH接続しました。

IPアドレスを指定して接続したところ、Raspberry Piにログインできました。

## 学んだこと

- `raspberrypi.local` で接続できない場合でも、IPアドレスが分かればSSH接続できる
- 「.local」ドメインをDNSサーバーなしで解決する仕組みをmDNSという
- `arp -a` はネットワーク上の全端末を探すコマンドではなく、通信履歴にある端末を表示するコマンド
- ARP は「このIPアドレスを持ってる人のMACアドレスを教えて」と同じLAN内にブロードキャストするプロトコル。arp -a はその通信の履歴（キャッシュ）を表示するだけなので、一度も通信していない端末は載らない。
- ルーターのクライアント一覧を見ると、LAN内の端末確認に役立つ
- SSH接続では、名前解決とIPアドレス指定の違いがある

## 次にやること

- Raspberry Pi OSをアップデートする
- nginxをインストールする
- 自宅LAN内からWebページを表示する
- READMEに構築手順を追記する
