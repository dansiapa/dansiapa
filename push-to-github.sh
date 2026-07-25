#!/bin/bash

# =========================================
# Push Profile to GitHub
# Repository: dansiapa/dansiapa
# =========================================

echo "🚀 Pushing profile to GitHub..."
echo ""

# Navigate to profile directory
cd /data/data/com.termux/files/home/dansiapa-profile

# Initialize git if not already
if [ ! -d ".git" ]; then
    git init
    git remote add origin https://github.com/dansiapa/dansiapa.git
fi

# Configure git (update with your info)
git config user.name "Rangga Putra"
git config user.email "dummymailrangga@gmail.com"

# Add all files
git add .

# Commit
git commit -m "✨ Update profile with featured projects & modern design

- Add custom logo SVG for Rangga Putra
- Add header animation SVG  
- Add coding animation SVG
- Highlight Nawala Gateway Platform
- Highlight Raksha Security Platform
- Update tech stack section
- Add GitHub stats & activity graph
- Add weekly development breakdown
- Modern dark theme design"

# Push to main branch
git branch -M main
git push -u origin main --force

echo ""
echo "✅ Profile pushed successfully!"
echo "🔗 View at: https://github.com/dansiapa"
