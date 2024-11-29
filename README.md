# robosys2024
[![test2](https://github.com/kh-23-27/robosys2024/actions/workflows/test2.yml/badge.svg)](https://github.com/kh-23-27/robosys2024/actions/workflows/test2.yml)
## このリポジトリについて
- 大学の授業(ロボットシステム学)で作成したもので、shellにて使用できるコマンドを追加したものです。

### dice_rollコマンド
- 任意の数サイコロを振り、出た目を合計し出力します。

## クローン方法
以下のコマンドでリポジトリをクローンしてください。
```
$ git clone https://github.com/kh-23-27/robosys2024.git
```
### 実行方法
#### 実行権限の付与
```
$ chmod +x dice_roll
```
#### 実行
```
$ echo n | ./dice_roll   #nは任意の自然数
```
### 実行例
#### 入力
サイコロを5個振るとき
```
$ echo 5 | ./dice_roll
```
#### 出力
```
6 1 2 4 2
合計値: 15
```
## 動作環境
### ソフトウェア
- Python
  - テスト済みバージョン3.8~3.13
### テスト環境
- Ubuntu 22.04 LTS

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下で公開されています。
- 詳細は[LICENSE](https://github.com/kh-23-27/robosys2024/blob/main/LICENSE)を確認してください。

## コピーライト
- © 2024 Kenta Hirachi
