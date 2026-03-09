#!/bin/bash

echo "🔍 Проверка документации на секреты..."

# Паттерны для поиска
SECRETS_PATTERNS=(
    "password\s*[:=]"
    "token\s*[:=]"
    "api_key\s*[:=]"
    "apikey\s*[:=]"
    "secret\s*[:=]"
    "Bearer\s+[A-Za-z0-9]"
    "ghp_[A-Za-z0-9]\{36\}"
    "sk-[A-Za-z0-9]\{32\}"
    "AIza[A-Za-z0-9_-]\{35\}"
    "\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}"
)

FOUND=0

for pattern in "${SECRETS_PATTERNS[@]}"; do
    if grep -r -i -E "$pattern" content/ 2>/dev/null; then
        echo "❌ Найден подозрительный паттерн: $pattern"
        FOUND=1
    fi
done

if [ $FOUND -eq 0 ]; then
    echo "✅ Секреты не найдены"
    exit 0
else
    echo "❌ Обнаружены потенциальные секреты!"
    exit 1
fi
