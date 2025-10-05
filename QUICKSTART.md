# 🚀 Quick Start Guide - Sol Data Compass

This guide will help you get Sol Data Compass running in under 10 minutes.

## ⚡ Prerequisites

- Python 3.11+
- Node.js 18+ or Bun 1.0+
- PostgreSQL 14+
- Git

## 📦 Installation

### 1. Clone Repository

```bash
git clone https://github.com/yourusername/sol-data-compass.git
cd sol-data-compass
```

### 2. Backend Setup (5 minutes)

```bash
# Navigate to backend
cd backend/ai_services

# Create virtual environment
python3 -m venv ai_services_env
source ai_services_env/bin/activate  # Windows: ai_services_env\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Set up environment (copy and edit)
cp ../../.env.example .env
# Edit .env with your database credentials

# Start backend
python api_full_rag.py
```

Backend will run on: http://localhost:8000

### 3. Frontend Setup (3 minutes)

```bash
# Open new terminal
cd frontend

# Install dependencies
npm install  # or: bun install

# Start development server
npm run dev  # or: bun run dev
```

Frontend will run on: http://localhost:5173

### 4. Database Setup (Optional)

```bash
# Create database
psql -U postgres -c "CREATE DATABASE nasa_space_biology;"

# Load schema
psql -U postgres -d nasa_space_biology -f backend/database/schema.sql
```

### 5. Vector Store Setup (Optional)

```bash
# Start Qdrant with Docker
docker run -p 6333:6333 qdrant/qdrant

# Generate embeddings (if you have data)
cd backend/data_processing
python generate_qdrant_embeddings.py
```

## ✅ Verify Installation

1. **Backend:** Visit http://localhost:8000/docs
2. **Frontend:** Visit http://localhost:5173
3. **Test search:** Try searching for "bone density space"
4. **Test chat:** Click floating chat button and ask a question

## 🐳 Docker Setup (Alternative)

```bash
# Start all services
docker-compose up -d

# Access application
# Frontend: http://localhost:5173
# Backend: http://localhost:8000
```

## 🎯 Sample Queries

Try these to test the system:

### Search
- "bone density space"
- "muscle atrophy astronauts"
- "radiation effects DNA"

### Chat
- "What is microgravity?"
- "How does space travel affect the human body?"
- "Tell me about cosmic radiation"

### Voice (click microphone icon)
- Speak naturally: "What causes space sickness?"

## 🔧 Troubleshooting

### Backend Issues

**Port already in use:**
```bash
# Change port in api_full_rag.py or kill process
lsof -ti:8000 | xargs kill -9
```

**Database connection failed:**
- Check PostgreSQL is running: `psql -U postgres -c "SELECT 1;"`
- Verify credentials in `.env`

**Import errors:**
```bash
# Reinstall dependencies
pip install --upgrade -r requirements.txt
```

### Frontend Issues

**Port 5173 in use:**
```bash
# Vite will auto-assign next available port
# Or kill process: lsof -ti:5173 | xargs kill -9
```

**Module not found:**
```bash
# Clear cache and reinstall
rm -rf node_modules package-lock.json
npm install
```

**Build errors:**
```bash
# Clear Vite cache
rm -rf node_modules/.vite
npm run dev
```

## 📚 Next Steps

- Read full [README.md](README.md)
- Check [PLATFORM_DEMO_GUIDE.md](PLATFORM_DEMO_GUIDE.md) for features
- See [VIDEO_DEMO_TEST_SCRIPT.md](VIDEO_DEMO_TEST_SCRIPT.md) for testing
- Review [CONTRIBUTING.md](CONTRIBUTING.md) to contribute

## 💡 Tips

- Use Chrome/Edge for best voice feature support
- Enable microphone permissions for voice input
- Check browser console for debugging (F12)
- Backend logs show in terminal where you ran `python api_full_rag.py`

## 🆘 Getting Help

- **Issues:** [GitHub Issues](https://github.com/yourusername/sol-data-compass/issues)
- **Discussions:** [GitHub Discussions](https://github.com/yourusername/sol-data-compass/discussions)
- **Email:** support@soldatacompass.com

---

**🎉 You're ready! Start exploring space biology research with AI.**
