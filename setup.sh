#!/bin/bash

# .envファイルの作成
cp .env.example .env

# Composerのインストールと依存関係のインストール
composer install

# アプリケーションキーの生成
php artisan key:generate

# データベースのマイグレーション
php artisan migrate

# シーディング
php artisan db:seed
