#!/bin/bash
set -e

# Crează foldere necesare Laravel
mkdir -p /app/storage/framework/{cache,sessions,views}
mkdir -p /app/bootstrap/cache

# Setează permisiuni
chown -R www-data:www-data /app/storage /app/bootstrap/cache
chmod -R 775 /app/storage /app/bootstrap/cache

# Creează fișier .env dacă lipsește
if [ ! -f /app/.env ]; then
    cp /app/.env.example /app/.env
fi

# Dacă lipsesc dependențele, instalează-le
if [ ! -d /app/vendor ]; then
    composer install --no-interaction --optimize-autoloader --no-scripts
fi

# Rulează comanda transmisă (php-fpm)
exec "$@"