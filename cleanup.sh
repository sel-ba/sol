#!/bin/bash
# Cleanup and Verification Script for Sol Data Compass

echo "🧹 Starting codebase cleanup..."

# Navigate to project root
cd "$(dirname "$0")"

# 1. Remove backup files
echo "📦 Removing backup files..."
find . -name "*.backup" -type f -delete
find . -name "*.bak" -type f -delete
find . -name "*.tmp" -type f -delete
find . -name "*~" -type f -delete

# 2. Remove Python cache
echo "🐍 Cleaning Python cache..."
find . -name "*.pyc" -type f -delete
find . -name "__pycache__" -type d -exec rm -rf {} + 2>/dev/null || true
find . -name "*.egg-info" -type d -exec rm -rf {} + 2>/dev/null || true

# 3. Remove node_modules if exists (will be reinstalled)
echo "📦 Cleaning node modules (will reinstall)..."
# Uncomment if you want to reinstall
# rm -rf frontend/node_modules

# 4. Remove build artifacts
echo "🏗️ Removing build artifacts..."
rm -rf frontend/dist
rm -rf frontend/build
rm -rf backend/dist
rm -rf backend/build

# 5. Remove temporary audio files
echo "🔊 Cleaning temporary audio files..."
rm -f backend/ai_services/audio_files/*.mp3 2>/dev/null || true
rm -f backend/ai_services/audio_files/*.wav 2>/dev/null || true
# Keep the directory
mkdir -p backend/ai_services/audio_files

# 6. Remove zip archives
echo "📦 Removing archives..."
rm -f frontend.zip

# 7. Remove log files
echo "📝 Cleaning log files..."
find . -name "*.log" -type f -delete

# 8. Clean data processing artifacts (keep structure)
echo "📊 Cleaning data processing artifacts..."
# Uncomment if you want to clean data
# rm -f backend/data_processing/data/*.csv 2>/dev/null || true

echo ""
echo "✅ Cleanup complete!"
echo ""
echo "📋 Verification checklist:"
echo ""

# Check backend structure
echo "🔍 Checking backend structure..."
if [ -f "backend/ai_services/api_full_rag.py" ]; then
    echo "  ✅ Main API file exists"
else
    echo "  ❌ Main API file missing!"
fi

if [ -f "backend/ai_services/requirements.txt" ]; then
    echo "  ✅ Requirements file exists"
else
    echo "  ❌ Requirements file missing!"
fi

# Check frontend structure
echo ""
echo "🔍 Checking frontend structure..."
if [ -f "frontend/package.json" ]; then
    echo "  ✅ Package.json exists"
else
    echo "  ❌ Package.json missing!"
fi

if [ -f "frontend/src/App.tsx" ]; then
    echo "  ✅ App.tsx exists"
else
    echo "  ❌ App.tsx missing!"
fi

if [ -f "frontend/src/components/FloatingChat.tsx" ]; then
    echo "  ✅ FloatingChat component exists"
else
    echo "  ❌ FloatingChat component missing!"
fi

# Check documentation
echo ""
echo "🔍 Checking documentation..."
if [ -f "README.md" ]; then
    echo "  ✅ README.md exists"
else
    echo "  ❌ README.md missing!"
fi

if [ -f ".gitignore" ]; then
    echo "  ✅ .gitignore exists"
else
    echo "  ❌ .gitignore missing!"
fi

# Check database schema
echo ""
echo "🔍 Checking database files..."
if [ -f "backend/database/schema.sql" ]; then
    echo "  ✅ Database schema exists"
else
    echo "  ❌ Database schema missing!"
fi

# Check Docker setup
echo ""
echo "🔍 Checking Docker configuration..."
if [ -f "docker-compose.yml" ]; then
    echo "  ✅ docker-compose.yml exists"
else
    echo "  ⚠️  docker-compose.yml not found (optional)"
fi

echo ""
echo "📊 File count summary:"
echo "  Python files: $(find backend -name "*.py" -type f | wc -l)"
echo "  TypeScript/React files: $(find frontend/src -name "*.tsx" -o -name "*.ts" -type f | wc -l)"
echo "  Documentation files: $(find . -maxdepth 1 -name "*.md" -type f | wc -l)"

echo ""
echo "✨ Codebase is clean and ready!"
echo ""
echo "📋 Next steps:"
echo "  1. Review changes: git status"
echo "  2. Test backend: cd backend/ai_services && python api_full_rag.py"
echo "  3. Test frontend: cd frontend && npm run dev"
echo "  4. Commit changes: git add -A && git commit -m 'Clean codebase'"
echo "  5. Push to GitHub: git push origin main"
