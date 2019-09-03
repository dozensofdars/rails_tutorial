# Rails 6 Tutorial on VS Code

[*Ruby on Rails チュートリアル*](https://railstutorial.jp/)を、最新版のRails(2019/09/03時点：v6.0.0)で実行するための環境です。  
Visual Studio Codeの Remote Development を利用し、Dockerコンテナ内で環境構築をしてそのままチュートリアルを行えます。

## 注意
- 個人利用のためのリポジトリなので、動作保証はいたしません。利用の際は自己責任でお願いいたします。

## 前提条件
- Dockerが利用できる環境であること
  - Windows 10 Pro で動作確認
- Visual Studio Code が利用できる環境であること
- Visual Studio Code の Remote Development 拡張がインストールされていること

## 環境構築
- (初回のみ)以下を実行する(PostgreSQLの永続化用)
```
$ docker volume create --name rails_tutorial_data
```
- VS Codeで`Ctrl + Shift + P`押下し、`Remote-Containers: Open Folder in Container...`を選択
- cloneしたフォルダを選択

## Rails チュートリアル本編との変更点
- development環境でもPostgreSQLを使用(別コンテナ)
- production環境へのdeployは想定していない
- Rails 6 は JavaScript 管理に WebPacker を標準で採用しているため、JavaScript 利用方法がチュートリアル(Rails 5.1)と異なる
