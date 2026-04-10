#!/bin/bash

# スクリプトがあるディレクトリ（dotfilesディレクトリ）の絶対パスを取得
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "==> dotfiles のセットアップを開始します..."

# ==========================================
# 1. ~/.config 配下の設定
# ==========================================
echo "==> .config ディレクトリの設定中..."

CONFIG_DIR="$HOME/.config"
if [ ! -d "$CONFIG_DIR" ]; then
    mkdir -p "$CONFIG_DIR"
    echo "ディレクトリを作成しました: $CONFIG_DIR"
fi

# 管理したい .config 配下のディレクトリ/ファイル名をここにリストアップします
CONFIG_ITEMS=(
    "nvim"
    "raycast"
)

for item in "${CONFIG_ITEMS[@]}"; do
    # dotfilesディレクトリ内にその名前のフォルダやファイルがあるか確認
    if [ -e "$DOTFILES_DIR/$item" ]; then
        ln -snf "$DOTFILES_DIR/$item" "$CONFIG_DIR/$item"
        echo "シンボリックリンクを作成しました: $CONFIG_DIR/$item -> $DOTFILES_DIR/$item"
    else
        echo "警告: $DOTFILES_DIR/$item が見つかりません"
    fi
done


# ==========================================
# 2. ホームディレクトリ直下のファイル
# ==========================================
echo "==> ホームディレクトリの設定中..."

HOME_FILES=(
    # ".zshrc"
    # ".vimrc"
    # ".gitconfig"
)

for file in "${HOME_FILES[@]}"; do
    if [ -f "$DOTFILES_DIR/$file" ]; then
        ln -snf "$DOTFILES_DIR/$file" "$HOME/$file"
        echo "シンボリックリンクを作成しました: $HOME/$file -> $DOTFILES_DIR/$file"
    else
        echo "警告: $DOTFILES_DIR/$file が見つかりません"
    fi
done

echo "==> セットアップが完了しました！"
