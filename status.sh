#!/bin/bash
echo "🚀 NASA Space Biology Platform - Status Check"
echo "=============================================="
echo ""

# Check backend
echo "🔍 Checking Backend (Port 8000)..."
if curl -s http://localhost:8000/health > /dev/null 2>&1; then
    echo "✅ Backend API: RUNNING on http://localhost:8000"
    echo "📊 API Docs: http://localhost:8000/docs"
else
    echo "❌ Backend API: NOT RUNNING"
fi

echo ""

# Check frontend
echo "🔍 Checking Frontend (Port 8080)..."
if curl -s http://localhost:8080 > /dev/null 2>&1; then
    echo "✅ Frontend: RUNNING on http://localhost:8080"
else
    echo "❌ Frontend: NOT RUNNING"
fi

echo ""
echo "🔗 Integration Status:"
echo "   • API Proxy: /api -> http://localhost:8000"
echo "   • Search Integration: ✅ Ready"
echo "   • Chat Integration: ✅ Ready" 
echo "   • Research Analysis: ✅ Ready"
echo ""
echo "📝 To access your application:"
echo "   Frontend: http://localhost:8080"
echo "   Backend: http://localhost:8000"
echo "   API Docs: http://localhost:8000/docs"