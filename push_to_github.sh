#!/bin/bash
# GitHub Push Script - Sol Data Compass
# This script commits and pushes the cleaned codebase to GitHub

echo "📤 Sol Data Compass - GitHub Push Script"
echo "========================================"
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Not a git repository. Initializing..."
    git init
    git branch -m main
    echo "✅ Git repository initialized"
fi

# Configure git user (update with your details)
echo "🔧 Configuring git user..."
read -p "Enter your name: " GIT_NAME
read -p "Enter your email: " GIT_EMAIL
git config user.name "$GIT_NAME"
git config user.email "$GIT_EMAIL"
echo "✅ Git user configured"
echo ""

# Stage all files
echo "📦 Staging files..."
git add -A

# Show status
STAGED_COUNT=$(git diff --cached --name-only | wc -l)
echo "✅ Staged $STAGED_COUNT files"
echo ""

# Show what's being committed
echo "📋 Files to be committed:"
git status --short | head -20
if [ "$(git status --short | wc -l)" -gt 20 ]; then
    echo "... and $(($(git status --short | wc -l) - 20)) more files"
fi
echo ""

# Confirm commit
read -p "Proceed with commit? (y/n): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Commit cancelled"
    exit 1
fi

# Commit
echo "💾 Committing changes..."
git commit -m "Initial commit: Sol Data Compass - RAG-powered NASA Space Biology Platform

Features:
- Semantic search with vector embeddings
- RAG-powered AI chatbot with citations
- Voice input/output (speech-to-text & text-to-speech)
- Research gaps analysis
- Mission recommendations
- Scientific consensus evaluation
- Modern React/TypeScript frontend
- FastAPI backend with multiple AI models
- Production-ready Docker deployment

Tech Stack:
- Backend: FastAPI, PostgreSQL, Qdrant, Transformers
- Frontend: React 18, TypeScript, Vite, Tailwind CSS
- AI: DialoGPT, FLAN-T5, Whisper, gTTS, Sentence Transformers

Documentation: Complete README, demo guides, test scripts
Status: Production-ready, fully functional"

if [ $? -eq 0 ]; then
    echo "✅ Commit successful"
else
    echo "❌ Commit failed"
    exit 1
fi
echo ""

# Add remote (if not exists)
echo "🌐 Setting up GitHub remote..."
CURRENT_REMOTE=$(git remote get-url origin 2>/dev/null)

if [ -z "$CURRENT_REMOTE" ]; then
    read -p "Enter your GitHub repository URL (e.g., https://github.com/username/sol-data-compass.git): " REPO_URL
    git remote add origin "$REPO_URL"
    echo "✅ Remote added: $REPO_URL"
else
    echo "ℹ️  Remote already configured: $CURRENT_REMOTE"
fi
echo ""

# Push to GitHub
echo "🚀 Pushing to GitHub..."
read -p "Push to main branch? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    git push -u origin main
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ Successfully pushed to GitHub!"
        echo ""
        echo "🎉 Your repository is live!"
        echo "📍 View at: $(git remote get-url origin | sed 's/\.git$//')"
        echo ""
        echo "📋 Next steps:"
        echo "  1. Add repository description on GitHub"
        echo "  2. Add topics: ai, rag, nasa, space-biology, react, fastapi"
        echo "  3. Enable GitHub Pages (optional)"
        echo "  4. Add collaborators (optional)"
        echo "  5. Star your own repo! ⭐"
    else
        echo "❌ Push failed. Check your credentials and repository access."
        echo ""
        echo "Common issues:"
        echo "  - Repository doesn't exist: Create it on GitHub first"
        echo "  - Authentication failed: Set up SSH key or personal access token"
        echo "  - Wrong URL: Check remote with 'git remote -v'"
    fi
else
    echo "⏸️  Push skipped. You can push later with: git push -u origin main"
fi

echo ""
echo "✨ Done!"
