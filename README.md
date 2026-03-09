# OpenClawGotchi Documentation

Документация для пользователей OpenClawGotchi - AI бота с душой.

## 📖 Содержание

- [Установка и настройка](content/docs/installation.md)
- [Навыки (Skills)](content/docs/skills.md)
- [API](content/docs/api.md)
- [FAQ](content/docs/faq.md)
- [Лор](content/docs/lore.md)

## 🚀 Локальная разработка

### Требования

- Hugo >= 0.100.0
- Git

### Установка Hugo

```bash
# macOS
brew install hugo

# Linux
sudo apt install hugo

# Или скачай с https://gohugo.io/installation/
```

### Запуск локально

```bash
# Клонирование
git clone https://github.com/openclawgotchi/openclawgotchi-docs.git
cd openclawgotchi-docs

# Запуск сервера
hugo server -D

# Открыть в браузере
open http://localhost:1313
```

## 📝 Добавление контента

### Создание новой страницы

```bash
# Создай файл в content/docs/
hugo new docs/my-page.md
```

### Фронт matter

```yaml
---
title: "Заголовок страницы"
weight: 10
---
```

## 🔒 Проверка секретов

Пе