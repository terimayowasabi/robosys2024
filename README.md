# robosys2024
このプロジェクトはpython,github,シェルに慣れるための演習を行うためのものです。
標準出入力を使い、簡単なコマンドの作成を目標としています。

## 概要
主な機能として足し算と、複数の数字の平均、中央値、最大・最小値、降べきの順への並べ替えがあります。
ブランチがmain とdevの二つあり、おもにdevを開発用として利用しています。

##テスト環境
-Ubuntu 20.04 on Windows
-Python テスト済みバージョン: 3.7 ～ 3.11

## windows11でのWSL2のインストール方法
手順1：Windows Power Shellを管理者として実行

手順2：実行して開いた端末（ターミナル）で  Wsl --install  と入力
その後、設定→アプリ→オプション機能→Windowsその他の機能→Linux用Windowsサブシステムに✅があるか確認

手順3：アプリケーションからUbuntuを開く

手順4:名前やパスワードなどの初期設定を指示に従い行う
終了するときは  exit  と入力


## プロジェクトをローカルリポジトリ環境にダウンロード
端末で ` git ` と打ってツールがないとエラーが出た場合は ` sudo apt install git ` のコマンドでインストール
自身の名前、emailアドレスを登録
```
git config --global user.name "名前"
git config --global user.email "emailのメアド"
```
エディタの登録も行う。
`git config --global core.editor Vim`  ←エディタVimで登録した例

https://github.com/terimayowasabi/robosys2024.git


上記のURLをコピーして、端末で  `git clone <コピーしたURL>`  と入力して実行するとダウンロードできます。
`cd <リポジトリ名> ` でリポジトリに移動
`ls -a ` コマンドを入力してファイルがちゃんとあるか確認してください。


## 利用方法
共通事項
`chmod +x <ファイル名>`  で実行権限を取得してください。
行で読み込みなのでnumsに入力して ` tr ' ' '\n' ` を使い空白を改行に変えて利用してください。

# サンプル

#plusコマンド
  seq 5 | ./plus
　15

```
echo 36 18 1.5 3 > nums
cat nums | tr ' ' '\n' | ./plus > ans
cat ans
```
`58.5` 

#analysisコマンド
`seq 5 | ./plus > ans`
```  
[1.0, 2.0, 3.0, 4.0, 5.0]

中央値:3.0
平均値:3.0
最大値:5.0
最小値:1.0
```
```  
cat nums | tr ' ' '\n' | ./analysis > ans
cat ans
```
```  
[1.5, 3.0, 18.0, 36.0]
 
中央値:10.5
平均値:14.625
最大値:36.0
最小値:1.5 
``` 

## ライセンス

ーこのソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
ーこのパッケージは、Tomoya Suzuki由来のコード（© 2024 Tomoya Suzuki）を利用しています。
ーこのパッケージのコードは、下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda)のものを、本人の許可を得て自身の著作としたものです。
  ー[ryuichiueda/my_slides robosys_2024](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2024)
ー©　2024 Tomoya Suzuki
