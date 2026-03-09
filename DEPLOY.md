# Инструкция по развёртыванию документации

## Шаг 1: Создай репозиторий на GitHub

1. Перейди на https://github.com/new
2. Назови репозиторий: `openclawgotchi-docs`
3. Сделай его Public
4. НЕ добавляй README, .gitignore или license

## Шаг 2: Запуши код

```bash
cd /home/probro/openclawgotchi/docs-site

# Добавь удалённый репозиторий (замени на свой GitHub username)
git remote add origin https://github.com/openclawgotchi/openclawgotchi-docs.git

# Отправь код
git push -u origin main
```

## Шаг 3: Включи GitHub Pages

1. Открой репозиторий на GitHub
2. Перейди в Settings → Pages
3. Source выбери: **GitHub Actions**

## Шаг 4: Дождись сборки

1. Перейди в вкладку Actions
2. Подожди пока завершится workflow "Deploy Hugo to GitHub Pages"
3. Проверь что нет ошибок

## Шаг 5: Открой документацию

Документация будет доступна по адресу:
https://openclawgotchi.github.io/openclawgotchi-docs/

## Изменение URL (опционально)

Если хочешь другой URL, отред