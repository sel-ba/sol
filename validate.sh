#!/bin/bash
# Project Validation Script - Sol Data Compass
# This script validates the project structure and dependencies

echo "🔍 Sol Data Compass - Project Validation"
echo "========================================"
echo ""

PROJECT_ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$PROJECT_ROOT"

ERRORS=0
WARNINGS=0

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Helper functions
error() {
    echo -e "${RED}❌ $1${NC}"
    ((ERRORS++))
}

warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
    ((WARNINGS++))
}

success() {
    echo -e "${GREEN}✅ $1${NC}"
}

info() {
    echo "ℹ️  $1"
}

# 1. Check Core Files
echo "📁 Checking core project files..."
[ -f "README.md" ] && success "README.md" || error "README.md missing"
[ -f ".gitignore" ] && success ".gitignore" || error ".gitignore missing"
[ -f "LICENSE" ] && success "LICENSE" || warning "LICENSE missing (optional)"
[ -f "docker-compose.yml" ] && success "docker-compose.yml" || warning "docker-compose.yml missing (optional)"
echo ""

# 2. Check Backend Structure
echo "🐍 Checking backend structure..."
[ -d "backend" ] && success "backend/ directory" || error "backend/ directory missing"
[ -d "backend/ai_services" ] && success "backend/ai_services/" || error "backend/ai_services/ missing"
[ -f "backend/ai_services/api_full_rag.py" ] && success "Main API file" || error "api_full_rag.py missing"
[ -f "backend/ai_services/requirements.txt" ] && success "requirements.txt" || error "requirements.txt missing"
[ -f "backend/ai_services/rag_engine.py" ] && success "rag_engine.py" || warning "rag_engine.py missing"
[ -f "backend/ai_services/vector_store.py" ] && success "vector_store.py" || warning "vector_store.py missing"
[ -d "backend/database" ] && success "backend/database/" || warning "backend/database/ missing"
[ -f "backend/database/schema.sql" ] && success "schema.sql" || warning "schema.sql missing"
echo ""

# 3. Check Frontend Structure
echo "⚛️  Checking frontend structure..."
[ -d "frontend" ] && success "frontend/ directory" || error "frontend/ directory missing"
[ -f "frontend/package.json" ] && success "package.json" || error "package.json missing"
[ -f "frontend/vite.config.ts" ] && success "vite.config.ts" || error "vite.config.ts missing"
[ -f "frontend/tsconfig.json" ] && success "tsconfig.json" || error "tsconfig.json missing"
[ -f "frontend/tailwind.config.ts" ] && success "tailwind.config.ts" || error "tailwind.config.ts missing"
[ -d "frontend/src" ] && success "frontend/src/" || error "frontend/src/ missing"
[ -f "frontend/src/App.tsx" ] && success "App.tsx" || error "App.tsx missing"
[ -f "frontend/src/main.tsx" ] && success "main.tsx" || error "main.tsx missing"
echo ""

# 4. Check Components
echo "🧩 Checking React components..."
[ -d "frontend/src/components" ] && success "components/ directory" || error "components/ missing"
[ -f "frontend/src/components/FloatingChat.tsx" ] && success "FloatingChat.tsx" || error "FloatingChat.tsx missing"
[ -f "frontend/src/components/ChatArea.tsx" ] && success "ChatArea.tsx" || warning "ChatArea.tsx missing"
[ -d "frontend/src/components/ui" ] && success "ui/ components" || warning "ui/ components missing"
echo ""

# 5. Check Pages
echo "📄 Checking pages..."
[ -d "frontend/src/pages" ] && success "pages/ directory" || error "pages/ missing"
[ -f "frontend/src/pages/Search.tsx" ] && success "Search.tsx" || error "Search.tsx missing"
[ -f "frontend/src/pages/ResearchGaps.tsx" ] && success "ResearchGaps.tsx" || error "ResearchGaps.tsx missing"
[ -f "frontend/src/pages/MissionRecommendations.tsx" ] && success "MissionRecommendations.tsx" || error "MissionRecommendations.tsx missing"
[ -f "frontend/src/pages/ScientificConsensus.tsx" ] && success "ScientificConsensus.tsx" || error "ScientificConsensus.tsx missing"

# Check for backup files (should be deleted)
BACKUP_COUNT=$(find frontend/src/pages -name "*.backup" 2>/dev/null | wc -l)
if [ "$BACKUP_COUNT" -eq 0 ]; then
    success "No backup files found"
else
    warning "$BACKUP_COUNT backup files still exist"
fi
echo ""

# 6. Check Hooks
echo "🎣 Checking custom hooks..."
[ -d "frontend/src/hooks" ] && success "hooks/ directory" || error "hooks/ missing"
[ -f "frontend/src/hooks/useSpeechRecognition.ts" ] && success "useSpeechRecognition.ts" || error "useSpeechRecognition.ts missing"
[ -f "frontend/src/hooks/useTextToSpeech.ts" ] && success "useTextToSpeech.ts" || error "useTextToSpeech.ts missing"
echo ""

# 7. Check API Client
echo "🌐 Checking API integration..."
[ -d "frontend/src/lib" ] && success "lib/ directory" || error "lib/ missing"
[ -f "frontend/src/lib/api.ts" ] && success "api.ts" || error "api.ts missing"
echo ""

# 8. Check Documentation
echo "📚 Checking documentation..."
[ -f "PLATFORM_DEMO_GUIDE.md" ] && success "PLATFORM_DEMO_GUIDE.md" || warning "Demo guide missing"
[ -f "PRESENTATION_7_SLIDES.md" ] && success "PRESENTATION_7_SLIDES.md" || warning "Presentation slides missing"
[ -f "VIDEO_DEMO_TEST_SCRIPT.md" ] && success "VIDEO_DEMO_TEST_SCRIPT.md" || warning "Test script missing"
[ -f "CONTRIBUTING.md" ] && success "CONTRIBUTING.md" || warning "Contributing guide missing"
echo ""

# 9. Check for unwanted files
echo "🗑️  Checking for unwanted files..."
UNWANTED=0

if [ -f "frontend.zip" ]; then
    warning "frontend.zip should be removed"
    ((UNWANTED++))
fi

PYC_COUNT=$(find . -name "*.pyc" 2>/dev/null | wc -l)
if [ "$PYC_COUNT" -gt 0 ]; then
    warning "$PYC_COUNT .pyc files found"
    ((UNWANTED++))
fi

PYCACHE_COUNT=$(find . -name "__pycache__" -type d 2>/dev/null | wc -l)
if [ "$PYCACHE_COUNT" -gt 0 ]; then
    warning "$PYCACHE_COUNT __pycache__ directories found"
    ((UNWANTED++))
fi

if [ "$UNWANTED" -eq 0 ]; then
    success "No unwanted files found"
fi
echo ""

# 10. File count statistics
echo "📊 Project statistics..."
PYTHON_FILES=$(find backend -name "*.py" -type f 2>/dev/null | wc -l)
TYPESCRIPT_FILES=$(find frontend/src -name "*.tsx" -o -name "*.ts" -type f 2>/dev/null | wc -l)
MD_FILES=$(find . -maxdepth 1 -name "*.md" -type f 2>/dev/null | wc -l)

info "Python files: $PYTHON_FILES"
info "TypeScript/React files: $TYPESCRIPT_FILES"
info "Documentation files: $MD_FILES"
echo ""

# 11. Git status
echo "🔀 Git status..."
if [ -d ".git" ]; then
    success "Git repository initialized"
    UNTRACKED=$(git ls-files --others --exclude-standard | wc -l)
    MODIFIED=$(git diff --name-only | wc -l)
    info "Untracked files: $UNTRACKED"
    info "Modified files: $MODIFIED"
else
    warning "Not a git repository (run: git init)"
fi
echo ""

# 12. Dependencies check
echo "📦 Checking dependencies..."
if [ -f "backend/ai_services/requirements.txt" ]; then
    REQ_COUNT=$(grep -v "^#" backend/ai_services/requirements.txt | grep -v "^$" | wc -l)
    info "Backend dependencies: $REQ_COUNT packages"
fi

if [ -f "frontend/package.json" ]; then
    if command -v node &> /dev/null; then
        success "Node.js installed: $(node --version)"
    else
        warning "Node.js not found"
    fi
fi

if command -v python3 &> /dev/null; then
    success "Python installed: $(python3 --version)"
else
    error "Python3 not found"
fi

if command -v docker &> /dev/null; then
    success "Docker installed: $(docker --version | head -1)"
else
    warning "Docker not found (optional)"
fi
echo ""

# Summary
echo "========================================"
echo "📋 Validation Summary"
echo "========================================"
if [ $ERRORS -eq 0 ] && [ $WARNINGS -eq 0 ]; then
    echo -e "${GREEN}✅ All checks passed! Project is ready.${NC}"
elif [ $ERRORS -eq 0 ]; then
    echo -e "${YELLOW}⚠️  $WARNINGS warnings (non-critical)${NC}"
    echo -e "${GREEN}✅ Project is functional${NC}"
else
    echo -e "${RED}❌ $ERRORS errors found${NC}"
    echo -e "${YELLOW}⚠️  $WARNINGS warnings${NC}"
    echo ""
    echo "Please fix errors before proceeding."
    exit 1
fi

echo ""
echo "🚀 Next steps:"
echo "  1. Install backend: cd backend/ai_services && pip install -r requirements.txt"
echo "  2. Install frontend: cd frontend && npm install"
echo "  3. Start backend: cd backend/ai_services && python api_full_rag.py"
echo "  4. Start frontend: cd frontend && npm run dev"
echo "  5. Access app: http://localhost:5173"
echo ""
echo "📝 To push to GitHub:"
echo "  git add -A"
echo "  git commit -m 'Initial commit: Clean codebase'"
echo "  git remote add origin https://github.com/yourusername/sol-data-compass.git"
echo "  git push -u origin main"
