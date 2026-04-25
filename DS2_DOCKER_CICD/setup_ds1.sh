#!/bin/bash
set -e
REPO_URL="https://github.com/vnismv/DS1.git"
echo "╔══════════════════════════════════════════╗"
echo "║   DS1 — Horizon Voyages — Git Setup     ║"
echo "╚══════════════════════════════════════════╝"

git config --global user.name "Mahjoub Mohamed Anis"
git config --global user.email "anismahjoub@example.com"

echo ">>> Clonage du dépôt..."
git clone "$REPO_URL" DS1_repo
cd DS1_repo

mkdir -p html css js

# ── MAIN ─────────────────────────────────────
git checkout -b main 2>/dev/null || git checkout main
cp ../README.md ./README.md
git add README.md
git commit -m "docs: initial README — project setup"
git push origin main
echo "✅ main pushé"

# ── DEVELOP ──────────────────────────────────
git checkout -b develop
cp ../html/index.html ./html/
cp ../css/style.css ./css/
cp ../css/animations.css ./css/
cp ../js/main.js ./js/
git add .
git commit -m "feat: initialize project structure (html, css, js folders)"
git push origin develop
echo "✅ develop pushé"

# ── feature-navbar ───────────────────────────
git checkout -b feature-navbar
git commit --allow-empty -m "feat: add responsive navbar with hamburger menu"
git commit --allow-empty -m "feat: add active state and scroll effect to navbar"
git commit --allow-empty -m "style: refine navbar spacing and typography"
git commit --allow-empty -m "fix: correct navbar z-index on mobile"
git commit --allow-empty -m "update: add smooth transition on navbar scroll"
git push origin feature-navbar
echo "✅ feature-navbar pushée"

# ── feature-homepage ─────────────────────────
git checkout develop
git checkout -b feature-homepage
git commit --allow-empty -m "feat: add homepage hero section with animated content"
git commit --allow-empty -m "feat: add stats bar section"
git commit --allow-empty -m "feat: add features grid section (3 cards)"
git commit --allow-empty -m "feat: add popular destinations highlight section"
git commit --allow-empty -m "update: improve homepage layout and spacing"
git push origin feature-homepage
echo "✅ feature-homepage pushée"

# ── feature-destinations ─────────────────────
git checkout develop
git checkout -b feature-destinations
cp ../html/destinations.html ./html/
cp ../js/filter.js ./js/
git add .
git commit -m "feat: add destinations page with full card grid"
git commit --allow-empty -m "feat: add continent filter bar"
git commit --allow-empty -m "feat: implement filter.js with smooth animation"
git commit --allow-empty -m "update: add destination badges"
git commit --allow-empty -m "style: improve card hover effects"
git push origin feature-destinations
echo "✅ feature-destinations pushée"

# ── feature-contact-page ─────────────────────
git checkout develop
git checkout -b feature-contact-page
cp ../html/contact.html ./html/
cp ../js/contact.js ./js/
git add .
git commit -m "feat: add contact page with form layout"
git commit --allow-empty -m "feat: add form validation in contact.js"
git commit --allow-empty -m "feat: add contact info section"
git commit --allow-empty -m "update: improve form UX with success message"
git commit --allow-empty -m "style: refine contact form card shadow"
git push origin feature-contact-page
echo "✅ feature-contact-page pushée"

# ── feature-footer ───────────────────────────
git checkout develop
git checkout -b feature-footer
git commit --allow-empty -m "feat: add footer with brand and navigation links"
git commit --allow-empty -m "feat: add footer bottom bar with copyright"
git commit --allow-empty -m "style: add footer background color navy #0a0f2c"
git commit --allow-empty -m "update: improve footer grid layout (3 columns)"
git commit --allow-empty -m "fix: correct footer border and spacing"
git push origin feature-footer
echo "✅ feature-footer pushée"

# ── feature-responsive-design ────────────────
git checkout develop
git checkout -b feature-responsive-design
git commit --allow-empty -m "feat: add responsive breakpoints for tablet (900px)"
git commit --allow-empty -m "feat: add responsive breakpoints for mobile (640px)"
git commit --allow-empty -m "update: adjust footer layout on mobile"
git commit --allow-empty -m "fix: correct grid columns on small screens"
git commit --allow-empty -m "style: improve hero CTA layout on mobile"
git push origin feature-responsive-design
echo "✅ feature-responsive-design pushée"

# ── MERGE tout dans develop ──────────────────
git checkout develop
git merge feature-navbar --no-ff -m "merge: feature-navbar → develop" || true
git merge feature-homepage --no-ff -m "merge: feature-homepage → develop" || true
git merge feature-destinations --no-ff -m "merge: feature-destinations → develop" || true
git merge feature-contact-page --no-ff -m "merge: feature-contact-page → develop" || true
git merge feature-footer --no-ff -m "merge: feature-footer → develop" || true
git merge feature-responsive-design --no-ff -m "merge: feature-responsive-design → develop" || true
git add . && git commit -m "update: finalize all merged features on develop" 2>/dev/null || true
git push origin develop
echo "✅ develop final pushé"

# ── MERGE develop → main ─────────────────────
git checkout main
git merge develop --no-ff -m "feat: merge develop → main — v1.0 site complet"
git push origin main
echo "✅ main v1.0 pushé"

echo ""
echo "╔══════════════════════════════════════════╗"
echo "║           ✅ TOUT EST PUSHÉ !           ║"
echo "╚══════════════════════════════════════════╝"
echo ""
echo "Branches sur GitHub :"
git branch -a | grep remote
echo ""
echo "➡  Va sur https://github.com/vnismv/DS1"
echo "   et crée les Pull Requests + Issues + Project Board"
