# 🎥 Video Demo Test Script - Sol Data Compass

## 🎯 Complete Feature Testing Guide

This document provides **simple, effective test inputs** to showcase every feature of Sol Data Compass in a video demonstration.

---

## ⏱️ Quick Reference Timeline

| Feature | Test Input | Duration | Timestamp |
|---------|-----------|----------|-----------|
| 1. Homepage & Search | "bone density space" | 30s | 0:00-0:30 |
| 2. Search Filters | Date range + mode selection | 20s | 0:30-0:50 |
| 3. Chat - Simple Query | "What is microgravity?" | 30s | 0:50-1:20 |
| 4. Chat - Complex Query | "How does space affect muscles?" | 40s | 1:20-2:00 |
| 5. Voice Input | "Tell me about radiation in space" | 45s | 2:00-2:45 |
| 6. Voice Output (TTS) | Click speaker on any response | 30s | 2:45-3:15 |
| 7. Session Management | Create/rename/delete sessions | 30s | 3:15-3:45 |
| 8. Copy Message | Copy any AI response | 15s | 3:45-4:00 |
| 9. Research Gaps | Click "Analyze Gaps" | 40s | 4:00-4:40 |
| 10. Mission Recommendations | View mission suggestions | 40s | 4:40-5:20 |
| 11. Scientific Consensus | Check consensus levels | 40s | 5:20-6:00 |
| 12. Markdown Rendering | See formatted response | 20s | 6:00-6:20 |
| **Total Video Length** | | **~6-7 minutes** | |

---

## 🎬 SCENE 1: Homepage & Semantic Search (0:00-0:50)

### **Test 1A: Basic Semantic Search** (30 seconds)

**What to Show:** Homepage with search bar

**Test Input:**
```
bone density space
```

**What to Say:**
> "Let's start with a simple search. I'll type 'bone density space'..."

**Expected Results:**
- Instant results appear (< 1 second)
- Top 5-10 publications about skeletal health in microgravity
- Relevance scores shown (e.g., 0.85, 0.82, etc.)
- Publication metadata: authors, year, abstract preview
- Direct links to NASA sources

**Key Points to Highlight:**
- ✅ "Notice it understands 'bone density' relates to skeletal health, osteoporosis, calcium loss"
- ✅ "Even without exact keywords, semantic search finds relevant papers"
- ✅ "Each result has a relevance score - higher means more relevant"

---

### **Test 1B: Search Filters** (20 seconds)

**What to Show:** Filter controls at top of search page

**Test Inputs:**
1. **Date Range:** Select "Last 5 Years" (2020-2025)
2. **Search Mode:** Switch between "Hybrid" → "Semantic" → "Keyword"
3. **Result Limit:** Change from 10 to 20 results

**What to Say:**
> "We can filter by date range, choose search mode, and adjust result count. Watch how results update instantly."

**Expected Results:**
- Results update dynamically
- Different search modes show different ranking
- More recent papers appear when date filtered

**Key Points to Highlight:**
- ✅ "Hybrid mode combines semantic understanding with keyword matching"
- ✅ "Filters help narrow down to exactly what you need"

---

## 🎬 SCENE 2: AI Chatbot (0:50-2:00)

### **Test 2A: Simple Conversational Query** (30 seconds)

**What to Show:** Click floating chat button (bottom right)

**Test Input:**
```
What is microgravity?
```

**What to Say:**
> "Let's ask the AI assistant a basic question about microgravity."

**Expected Results:**
- AI response appears in 1-3 seconds
- Clear definition of microgravity
- Response includes citations (e.g., "Based on 3 research papers...")
- Source links at bottom
- Confidence score shown

**Key Points to Highlight:**
- ✅ "Response is grounded in actual NASA publications"
- ✅ "Citations are clickable - verify any claim"
- ✅ "Confidence score shows AI's certainty"

---

### **Test 2B: Complex Research Query** (40 seconds)

**What to Show:** Continue in same chat session

**Test Input:**
```
How does long-term space travel affect muscle atrophy in astronauts?
```

**What to Say:**
> "Now a more complex question requiring synthesis of multiple papers."

**Expected Results:**
- Longer, detailed response (3-5 paragraphs)
- Multiple citations from different papers
- Organized with markdown formatting:
  - **Bold** key terms
  - Bullet points for mechanisms
  - Numbered lists for effects
- "Sources:" section at bottom with 5+ papers

**Key Points to Highlight:**
- ✅ "AI synthesizes information from multiple sources"
- ✅ "Notice the markdown formatting: bold, bullets, structure"
- ✅ "Every fact traceable to a specific publication"

---

## 🎬 SCENE 3: Voice Features (2:00-3:15)

### **Test 3A: Voice Input (Speech-to-Text)** (45 seconds)

**What to Show:** Chat interface with microphone button

**Test Steps:**
1. Click **microphone icon** (bottom left of input)
2. Wait for pulsing visualization to appear
3. Speak clearly into microphone

**Test Input (Speak Aloud):**
```
Tell me about the effects of cosmic radiation on human DNA
```

**What to Say Before Speaking:**
> "Watch the voice feature. I'll click the microphone and speak naturally."

**What to Say After Speaking:**
> "See the live transcription appearing? Now I click Stop to send automatically."

**Expected Results:**
- Pulsing orb visualization reacts to voice volume
- Live transcript appears in text box as you speak
- Text shows in real-time: "Tell me about..." word by word
- Click "Stop" button → message auto-sends
- AI processes and responds

**Key Points to Highlight:**
- ✅ "Real-time transcription with visual feedback"
- ✅ "No need to type - just speak naturally"
- ✅ "Click Stop and it sends automatically"
- ✅ "Perfect for hands-free research in the lab"

---

### **Test 3B: Voice Output (Text-to-Speech)** (30 seconds)

**What to Show:** AI response with speaker icon

**Test Steps:**
1. Look at previous AI response
2. Click **speaker icon** (🔊 Volume2) next to message
3. Listen to response being read aloud
4. Click **red VolumeX icon** to stop mid-sentence

**What to Say:**
> "Any response can be read aloud. Click the speaker icon... Hear that? Click again to stop anytime."

**Expected Results:**
- Response is read in natural voice
- Icon changes: 🔊 → 🔇 (red)
- Button has accent background (blue/green)
- Click again → speech stops immediately
- Can switch to different message's voice

**Key Points to Highlight:**
- ✅ "Listen while doing other work"
- ✅ "Stop anytime with one click"
- ✅ "Text is cleaned - no markdown read aloud"
- ✅ "Works offline using browser speech"

---

## 🎬 SCENE 4: Session Management (3:15-4:00)

### **Test 4: Multi-Session Chat** (30 seconds)

**What to Show:** Chat history drawer

**Test Steps:**
1. Click **menu icon** (three lines, top left of chat)
2. Drawer slides out showing chat history
3. Click **"New Chat"** button
4. **Rename** session: Right-click → "Rename" → "Radiation Research"
5. **Switch** between sessions - instant context change
6. **Delete** old session: Right-click → "Delete"

**Test Inputs:**
- Rename to: `Radiation Research`
- New chat message: `What causes space sickness?`

**What to Say:**
> "Multiple research threads stay organized. Create new chats, rename them, switch instantly, or delete when done."

**Expected Results:**
- Drawer shows all previous conversations
- Each session has timestamp
- Can rename any session
- Switching loads that conversation history
- Delete removes permanently

**Key Points to Highlight:**
- ✅ "Organize research by topic"
- ✅ "Every conversation is saved"
- ✅ "Switch between projects instantly"
- ✅ "Full conversation history preserved"

---

## 🎬 SCENE 5: Copy Functionality (3:45-4:00)

### **Test 5: Copy to Clipboard** (15 seconds)

**What to Show:** Any AI response with copy icon

**Test Steps:**
1. Hover over any AI message
2. Click **copy icon** (📋)
3. Toast notification appears: "Copied!"
4. Paste into notepad/document to prove it worked

**What to Say:**
> "One-click copy to clipboard. Perfect for pasting into papers or notes."

**Expected Results:**
- Copy icon appears on hover
- Click → green checkmark briefly shows
- Toast: "Message copied to clipboard"
- Can paste full response with formatting

**Key Points to Highlight:**
- ✅ "Export answers to your research documents"
- ✅ "Includes citations for proper attribution"

---

## 🎬 SCENE 6: Research Gaps Analysis (4:00-4:40)

### **Test 6: Discover Research Gaps** (40 seconds)

**What to Show:** Navigate to "Research Gaps" page

**Test Steps:**
1. Click **"Research Gaps"** in navigation menu
2. Click **"Analyze Gaps"** button
3. Wait for AI analysis (5-10 seconds)
4. Scroll through identified gaps

**What to Say:**
> "Let's see what research areas are understudied. Click 'Analyze Gaps' and AI examines the entire database."

**Expected Results:**
- Loading animation while analyzing
- List of 10-15 research gaps appears
- Each gap shows:
  - **Title**: "DNA Repair Mechanisms in Microgravity"
  - **Category**: Critical Gap / Emerging Area / Understudied / Temporal
  - **Priority**: High / Medium / Low
  - **Description**: Why this is a gap
  - **Recommendation**: What research is needed
  - **Current Publications**: How many papers exist (low number)

**Sample Gaps to Point Out:**
1. "Long-term microgravity effects on mitochondrial function"
2. "Epigenetic changes during multi-year space missions"
3. "Circadian rhythm disruption in zero gravity"

**Key Points to Highlight:**
- ✅ "AI identifies what we DON'T know"
- ✅ "Priority scoring guides research funding"
- ✅ "Specific recommendations for each gap"
- ✅ "Would take weeks to do manually"

---

## 🎬 SCENE 7: Mission Recommendations (4:40-5:20)

### **Test 7: Mission Planning** (40 seconds)

**What to Show:** Navigate to "Mission Recommendations" page

**Test Steps:**
1. Click **"Mission Recommendations"** in menu
2. View list of recommended missions
3. Click one mission to expand details

**What to Say:**
> "Based on research gaps and current knowledge, AI suggests missions. These are data-driven, not guesses."

**Expected Results:**
- List of 5-10 mission recommendations
- Each mission shows:
  - **Title**: "Long-Duration Mars Mission: Cardiovascular Study"
  - **Priority**: High / Medium / Low (color coded)
  - **Duration**: 6 months, 1 year, multi-year
  - **Objectives**: 3-5 specific research goals
  - **Experiments**: Proposed procedures
  - **Expected Outcomes**: What we'll learn
  - **Technology Readiness**: Current TRL level
  - **Rationale**: Why this mission matters

**Sample Missions to Point Out:**
1. **High Priority**: "Radiation Protection Study for Mars Transit"
2. **Medium Priority**: "Plant Growth in Lunar Regolith Simulant"
3. **Emerging**: "Microbial Adaptation in Space Station Environments"

**Key Points to Highlight:**
- ✅ "Data-driven mission planning"
- ✅ "Specific experiments, not vague ideas"
- ✅ "Technology readiness assessed"
- ✅ "Links to supporting research"

---

## 🎬 SCENE 8: Scientific Consensus (5:20-6:00)

### **Test 8: Consensus Analysis** (40 seconds)

**What to Show:** Navigate to "Scientific Consensus" page

**Test Steps:**
1. Click **"Scientific Consensus"** in menu
2. Click **"Analyze Consensus"** button
3. View consensus levels for different topics
4. Click one topic to see details

**What to Say:**
> "Where does the scientific community agree? Where is there controversy? AI analyzes agreement levels across research domains."

**Expected Results:**
- List of research topics with consensus metrics
- Each topic shows:
  - **Topic**: "Radiation Protection Requirements"
  - **Consensus Level**: 
    - 🟢 **Strong** (>80% agreement)
    - 🟡 **Moderate** (60-80%)
    - 🟠 **Emerging** (<60%)
    - 🔴 **Controversial** (conflicting evidence)
  - **Confidence**: Statistical confidence (High/Medium/Low)
  - **Supporting Studies**: List of key papers (5-10)
  - **Key Findings**: Main points of agreement
  - **Controversies**: Where disagreement exists
  - **Trend**: Growing/Stable/Declining consensus

**Sample Topics to Point Out:**
1. 🟢 **Strong Consensus**: "Bone loss occurs in microgravity" (95% agreement)
2. 🟡 **Moderate Consensus**: "Optimal exercise protocols for astronauts" (72%)
3. 🔴 **Controversial**: "Long-term cognitive effects of spaceflight" (conflicting data)

**Key Points to Highlight:**
- ✅ "Know where science is settled"
- ✅ "Identify controversial areas needing more research"
- ✅ "Supporting papers for each consensus"
- ✅ "Confidence scores guide decision-making"

---

## 🎬 SCENE 9: Markdown Rendering (6:00-6:20)

### **Test 9: Rich Text Formatting** (20 seconds)

**What to Show:** Chat with formatted AI response

**Test Input:**
```
Explain the three main challenges of long-term space travel. Use bullet points and bold the key terms.
```

**What to Say:**
> "AI responses support markdown formatting. Watch how it structures information clearly."

**Expected Results:**
- Response with rich formatting:
  
```markdown
The three main challenges of long-term space travel are:

1. **Physiological Effects**
   - Muscle atrophy and bone density loss
   - Cardiovascular deconditioning
   - Immune system changes

2. **Psychological Impacts**
   - Isolation and confinement stress
   - Sleep disruption from altered light cycles
   - Team dynamics in confined spaces

3. **Radiation Exposure**
   - Cosmic rays and solar particle events
   - DNA damage and cancer risk
   - Limited shielding effectiveness

**Key mitigation strategies:**
- Exercise protocols (2+ hours daily)
- Radiation shielding materials
- Psychological support systems
```

**Key Points to Highlight:**
- ✅ "Bold, bullets, numbered lists"
- ✅ "Code blocks for technical data"
- ✅ "Clear, readable formatting"
- ✅ "Professional documentation quality"

---

## 🎬 BONUS SCENES (Optional Extensions)

### **Test 10: Export Search Results** (15 seconds)

**What to Show:** Search results page with export button

**Test Steps:**
1. Perform any search
2. Click **"Export Results"** button (if available)
3. Download as CSV/JSON

**Expected Results:**
- File downloads with all result metadata
- Includes titles, authors, abstracts, URLs, scores

---

### **Test 11: Dark/Light Theme** (10 seconds)

**What to Show:** Theme toggle (if available)

**Test Steps:**
1. Find theme toggle (usually top right)
2. Click to switch Dark ↔ Light
3. Entire UI updates smoothly

**Expected Results:**
- Smooth transition
- All components adapt
- Maintains glassmorphism aesthetic

---

### **Test 12: Mobile Responsive** (20 seconds)

**What to Show:** Resize browser window or use mobile view

**Test Steps:**
1. Open browser DevTools (F12)
2. Toggle device toolbar (mobile view)
3. Test on iPhone/Android dimensions

**Expected Results:**
- Layout adapts gracefully
- Chat drawer becomes full screen
- Touch-friendly button sizes
- Voice features work on mobile

---

## 📝 Pre-Recording Checklist

### ✅ Backend Setup
```bash
# 1. Start backend server
cd backend/ai_services
source ai_services_env/bin/activate
python api_full_rag.py

# Verify: http://localhost:8000 shows API docs
```

### ✅ Frontend Setup
```bash
# 2. Start frontend server
cd frontend
npm run dev  # or: bun run dev

# Verify: http://localhost:5173 opens app
```

### ✅ Database & Vector Store
- [ ] PostgreSQL running with publications data
- [ ] Qdrant vector store initialized with embeddings
- [ ] At least 100+ publications indexed for demo
- [ ] Sample data covers multiple topics

### ✅ Audio/Voice
- [ ] Microphone connected and working
- [ ] Speakers/headphones connected
- [ ] Browser permissions granted for microphone
- [ ] Test voice input in browser console
- [ ] Background noise minimized

### ✅ Browser & Recording
- [ ] Use Chrome/Edge (best Web Speech API support)
- [ ] Clear browser cache and cookies
- [ ] Close unnecessary tabs (performance)
- [ ] Recording software ready (OBS, Loom, etc.)
- [ ] Screen resolution: 1920x1080 recommended
- [ ] Font size readable in recording

---

## 🎤 Video Script Template

### **Opening (0:00-0:10)**
> "Welcome to Sol Data Compass - an AI-powered research platform for NASA space biology. Let me show you every feature in under 7 minutes."

### **For Each Feature (Use This Pattern)**
> "Next, let's test [FEATURE NAME]. I'll [ACTION] using [TEST INPUT]... And here we see [EXPECTED RESULT]. This [VALUE PROPOSITION]."

### **Closing (6:20-6:30)**
> "That's Sol Data Compass - semantic search, RAG-powered chat, voice interaction, and analytical tools, all in one platform. Every feature production-ready and battle-tested. Thanks for watching!"

---

## 🎯 Key Phrases to Include

Use these phrases during the video to sound professional:

- ✅ "Notice how..."
- ✅ "In just seconds..."
- ✅ "Real-time processing..."
- ✅ "Grounded in actual publications..."
- ✅ "No hallucinations - every claim is cited..."
- ✅ "Production-ready architecture..."
- ✅ "Seamless user experience..."
- ✅ "This would take hours manually..."

---

## 💡 Pro Recording Tips

### Video Quality
- **Resolution**: 1920x1080 minimum
- **Frame Rate**: 30fps or 60fps
- **Bitrate**: At least 5 Mbps for clear text

### Audio Quality
- **Microphone**: Use external mic if possible (not laptop built-in)
- **Background**: Quiet room, no echo
- **Volume**: Speak clearly, consistent volume
- **Pacing**: Not too fast - give viewers time to read

### Screen Recording
- **Cursor**: Make cursor larger and visible
- **Zoom**: Zoom in on important UI elements
- **Annotations**: Add text overlays for key points
- **Transitions**: Smooth cuts between features

### Editing
- **Music**: Subtle background music (optional)
- **Captions**: Add subtitles for accessibility
- **Chapters**: YouTube chapters for each feature
- **Thumbnail**: Eye-catching thumbnail with "RAG AI" or "Voice-Enabled"

---

## 📊 Quick Test Results Reference

| Feature | Pass Criteria | Fail Indicators |
|---------|---------------|-----------------|
| Search | Results < 1s, relevant papers | Slow, irrelevant results |
| Chat | Response with citations | Error, no sources |
| Voice Input | Live transcription visible | No text appearing |
| Voice Output | Audio plays clearly | No sound, robotic voice |
| Sessions | Can create/rename/delete | Sessions don't save |
| Research Gaps | AI identifies 10+ gaps | Empty results, error |
| Missions | Shows 5+ recommendations | No data |
| Consensus | Consensus levels calculated | Loading forever |

---

## 🚀 Advanced Demo Scenarios (For Technical Audiences)

### Scenario A: "Follow-Up Question" (Context Memory)
```
Message 1: "What is muscle atrophy in space?"
AI responds with definition...

Message 2: "What causes it?"  ← Tests context awareness
AI should understand "it" = muscle atrophy

Message 3: "How can we prevent it?"  ← Tests continued context
AI provides prevention strategies
```

### Scenario B: "Compare and Contrast"
```
"Compare the effects of microgravity on bone density versus muscle mass. Which is more severe?"
```

### Scenario C: "Quantitative Query"
```
"How many publications in the database discuss radiation exposure?"
```

### Scenario D: "Temporal Query"
```
"What research has been done on space psychology in the last 3 years?"
```

---

## 📹 Video Chapter Timestamps (For YouTube Description)

```
0:00 - Introduction
0:10 - Semantic Search Demo
0:50 - AI Chatbot (Simple Query)
1:20 - AI Chatbot (Complex Query)
2:00 - Voice Input (Speech-to-Text)
2:45 - Voice Output (Text-to-Speech)
3:15 - Session Management
3:45 - Copy to Clipboard
4:00 - Research Gaps Analysis
4:40 - Mission Recommendations
5:20 - Scientific Consensus
6:00 - Markdown Formatting
6:20 - Conclusion
```

---

## 🎬 Alternative: Short-Form Video (2-3 minutes)

If you need a shorter demo:

### **Priority Features Only:**
1. **Search** (20s) - "bone density space"
2. **Chat** (30s) - "How does space affect muscles?"
3. **Voice** (40s) - Full voice loop (speak → AI → spoken response)
4. **One Analytics** (30s) - Pick Research Gaps OR Missions
5. **Closing** (20s) - Call to action

**Total: 2 minutes 20 seconds**

---

## ✨ Final Checklist Before Recording

- [ ] All services running (backend, frontend, database, Qdrant)
- [ ] Test each input once to verify it works
- [ ] Microphone and speakers tested
- [ ] Browser has no popups or notifications
- [ ] Screen recording software configured
- [ ] Script/notes ready off-screen
- [ ] Water nearby (dry mouth during recording)
- [ ] Phone on silent
- [ ] "Do Not Disturb" mode enabled on computer
- [ ] Good lighting (if showing face)
- [ ] Calm, confident mindset 😊

---

## 🏆 Success Metrics

Your demo video is successful if viewers can:
- ✅ Understand what Sol Data Compass does
- ✅ See the difference from generic search/AI tools
- ✅ Appreciate the voice features
- ✅ Recognize the analytical capabilities
- ✅ Feel confident to try it themselves

---

**Good luck with your video! You're demonstrating something genuinely innovative. Show it with pride! 🚀🎥**
