#!/bin/sh

docker-compose up -d --build

echo 'Waiting for kadai-app to be ready...';
sleep 60


docker-compose exec php sh -c 'composer dump-autoload'
docker-compose exec app sh -c 'php artisan migrate --seed'
