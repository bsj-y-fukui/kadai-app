#!/bin/sh

cp .env.example .env

docker-compose up -d --build

echo 'Waiting for kadai-app to be ready...';
sleep 10


docker-compose exec app sh -c 'composer install'
docker-compose exec app sh -c 'composer dump-autoload'
docker-compose exec app sh -c 'php artisan migrate --seed'
