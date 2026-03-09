---
title: "API"
weight: 3
---

# API Документация

OpenClawGotchi предоставляет программный интерфейс для интеграции с другими сервисами.

## Telegram Bot API

### Отправка сообщений

```python
# Базовый интерфейс
await bot.send_message(chat_id, text)
```

### Параметры

- `chat_id` (int|str): ID чата или username
- `text` (str): Текст сообщения
- `parse_mode` (str): 'HTML' или 'Markdown'
- `reply_markup`: Клавиатура

### Примеры

```python
# Простое сообщение
await bot.send_message(123456789, "Привет!")

# С форматированием
await bot.send_message(
    123456789,
    "*Жирный* и _курсив_",
    parse_mode='Markdown'
)

# С кнопками
from telegram import InlineKeyboardButton, InlineKeyboardMarkup

keyboard = InlineKeyboardMarkup([
    [InlineKeyboardButton("Кнопка 1", callback_data='btn1')],
    [InlineKeyboardButton("Кнопка 2", callback_data='btn2')]
])

await bot.send_message(
    123456789,
    "Выбери опцию:",
    reply_markup=keyboa