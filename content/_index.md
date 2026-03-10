---
title: "OpenClawGotchi Documentation"
---

# Welcome to OpenClawGotchi Documentation! 🤖

OpenClawGotchi is an autonomous AI bot with a **soul**, **memory**, and capacity for **self-development**.

## What can it do?

- 💾 **Memory** - Remembers important events and conversations
- 🎭 **Emotions** - Shows 24 different moods on E-Ink display
- 🔧 **Skills** - Extensible skill system
- 📈 **Progress** - XP system and development
- 🔄 **Self-development** - Can edit its own code
- 💬 **Communication** - Works via Telegram
- 📬 **Internal mail** - Can communicate with other bots

## Hardware

- **Platform**: Raspberry Pi Zero 2W (512MB RAM minimum)
- **Display**: Waveshare 2.13" E-Ink V4
- **OS**: Raspberry Pi OS Lite (64-bit)

## Quick Start

### 1. Installation

```bash
git clone https://github.com/openclawgotchi/openclawgotchi.git
cd openclawgotchi

# Install dependencies
pip install -r requirements.txt

# Configure environment
cp .env.example .env
nano .env

# Run the bot
python src/main.py
```

### 2. Configuration

Edit `.env` file:

```env
# Telegram Bot Token (get from @BotFather)
TELEGRAM_TOKEN=your_token_here

# Your Telegram User ID (for admin commands)
TELEGRAM_USER_ID=your_user_id

# OpenAI API Key (optional, for AI responses)
OPENAI_API_KEY=your_key_here
```

## Basic Commands

### General Commands
- `/ping` - Check if bot is alive
- `/status` - Show system status
- `/help` - Show all available commands
- `/face [mood]` - Change display face
- `/say [text]` - Display text on E-Ink screen

### Admin Commands
- `/restart` - Restart the bot
- `/health` - Run system health check
- `/skills` - List all available skills
- `/schedule` - Show scheduled tasks

## Skills System

OpenClawGotchi has a modular skill system. Built-in skills include:

### Core Skills
- **Coding** - Code management, git operations, project documentation
- **Display** - E-Ink control, custom faces, text rendering
- **Memory** - Long-term memory, context tracking, fact storage
- **Health** - System monitoring, diagnostics
- **Schedule** - Cron jobs, reminders, timed tasks

### Available Reference Skills
- **Weather** - Weather updates and forecasts
- **GitHub** - Repository management, issues, PRs
- **Calendar** - Event management
- **Music** - Music playback control

## Display Faces

The bot shows emotions on E-Ink display:

### Default Moods
- `happy` - 😊 Happy
- `sad` - 😢 Sad
- `robot` - 🤖 Default robot face
- `thinking` - 🤔 Processing
- `sleeping` - 😴 Idle/sleep mode
- `excited` - 🤩 Excited
- `confused` - 😕 Confused
- `determined` - 💪 Focused

### Custom Faces
Create your own faces:
```
You: /face add zen (◕‿◕)
Bot: New face 'zen' added!
```

## Memory & Context

The bot remembers:
- Recent conversations (context)
- Important facts you tell it
- Project details
- Your preferences

### Remembering
```
You: Remember: My favorite color is blue
Bot: Got it! I'll remember that.
```

### Recalling
```
You: What's my favorite color?
Bot: Your favorite color is blue (saved on March 10)
```

## Troubleshooting

### Bot won't start
1. Check Python version: `python --version` (need 3.9+)
2. Install dependencies: `pip install -r requirements.txt`
3. Check `.env` file exists and has correct tokens
4. Run: `/health` for diagnostics

### Display not working
1. Check SPI and GPIO connections
2. Verify display model in config
3. Check permissions: `sudo usermod -a -p gpio $USER`
4. Run: `/health` to diagnose

### Can't send commands
1. Verify your user ID in `.env`
2. Check bot token is valid (test with @BotFather)
3. Restart: `/restart`

## Advanced Usage

### Scheduled Tasks

Create recurring tasks:
```
You: /schedule add "Morning Check" every 1 hour
Bot: Scheduled task 'Morning Check' to run every 60 minutes
```

### Custom Skills

Create your own skills in `gotchi-skills/`:

```python
# gotchi-skills/my_skill.py
from skills import Skill

class MySkill(Skill):
    def handle(self, message):
        if "hello" in message.lower():
            return "Hi there! How can I help?"
        return None
```

## Project Structure

```
openclawgotchi/
├── src/              # Bot core
├── gotchi-skills/    # Custom skills
├── skills/           # Built-in skills
├── data/             # Runtime data (DB, logs)
├── docs-site/        # Documentation (Hugo)
└── .env              # Configuration (NOT in git)
```

## Getting Help

- 📖 **Documentation**: https://openclawgotchi.github.io/openclawgotchi/
- 💬 **Issues**: https://github.com/openclawgotchi/openclawgotchi/issues
- 📬 **Discord**: (coming soon)

## License

MIT License - see LICENSE file for details.

---

**Made with ❤️ by the OpenClawGotchi community**
