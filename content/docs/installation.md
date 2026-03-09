---
title: "Установка и настройка"
weight: 1
---

# Установка и настройка OpenClawGotchi

## Требования к оборудованию

### Минимальная конфигурация
- **Raspberry Pi Zero 2W** (512MB RAM)
- **MicroSD карта**: 16GB Class 10
- **E-Ink дисплей**: Waveshare 2.13" V4
- **Питание**: 5V 2A

### Рекомендуемая конфигурация
- **Raspberry Pi 3B+ или 4B**
- **MicroSD карта**: 32GB Class 10
- **E-Ink дисплей**: Waveshare 2.13" V4 или 2.7" V2

## Установка ОС

### 1. Скачать Raspberry Pi OS Lite

```bash
# На компьютере
wget https://downloads.raspberrypi.org/raspios_lite_arm64/images/raspios_lite_arm64-2023-05-03/2023-05-03-raspios-bullseye-arm64-lite.img.xz
```

### 2. Записать на SD карту

```bash
# Используя Raspberry Pi Imager или dd
xzcat 2023-05-03-raspios-bullseye-arm64-lite.img.xz | dd of=/dev/sdX bs=4M status=progress
```

### 3. Настроить SSH

Создай файл `ssh` в boot разделе SD карты:

```bash
touch /media/BOOT/ssh
```

### 4. За