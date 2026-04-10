# dotfiles

自分の開発環境（Neovimなど）の設定ファイルを一元管理するためのリポジトリです。

## 🚀 インストール方法

新しい環境（PCなど）でこの設定を使いたい場合は、以下のコマンドを順番に実行してください。

```bash
# 1. リポジトリをホームディレクトリにクローンする
git clone [https://github.com/xsh-yamamoto/dotfiles.git](https://github.com/xsh-yamamoto/dotfiles.git) ~/dotfiles

# 2. ディレクトリに移動する
cd ~/dotfiles

# 3. インストールスクリプトに実行権限を付与する（初回のみ）
chmod +x install.sh

# 4. セットアップを実行する
./install.sh
```

## ✅ シンボリックリンクの確認

セットアップ後、シンボリックリンクが正しく作成されているかは以下のコマンドで確認できます。

```bash
ls -l ~/.config
