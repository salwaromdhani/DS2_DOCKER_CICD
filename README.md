# ✦ Horizon Voyages — Projet DS1 Git/GitHub

> Mini-site web statique développé dans le cadre du projet DS1 — Esprit School of Business  
> Module : Problem Solving | Année : 2025–2026

---

## 📋 Description du projet

**Horizon Voyages** est un mini-site web statique pour une agence de voyage fictive premium.  
Le site est composé de 3 pages :

- `html/index.html` — Page d'accueil (hero, stats, features, destinations populaires)
- `html/destinations.html` — Liste filtrée des destinations
- `html/contact.html` — Formulaire de contact

> ⚠️ L'objectif principal est la **maîtrise de Git/GitHub et du workflow collaboratif**, pas la complexité du site.

---

## 👥 Membres du groupe

| Nom | Rôle principal | Branches |
|-----|---------------|---------|
| Mahjoub Mohamed Anis | Chef de projet, Homepage | `feature-homepage`, `feature-navbar` |
| Ksouri Mohamed Aziz | Destinations & Responsive | `feature-destinations`, `feature-responsive-design` |
| Hassan Ahmed Mohamed | Contact, Footer, Issues | `feature-contact-page`, `feature-footer` |

---

## 📁 Structure du projet

```
horizon-voyages/
├── html/
│   ├── index.html          # Page d'accueil
│   ├── destinations.html   # Page destinations
│   └── contact.html        # Page contact
├── css/
│   ├── style.css           # Styles principaux
│   └── animations.css      # Animations et transitions
├── js/
│   ├── main.js             # Navbar, hamburger, scroll reveal
│   ├── filter.js           # Filtres destinations
│   └── contact.js          # Validation formulaire contact
└── README.md
```

---

## 🚀 Installation & Lancement

### Prérequis
- Un navigateur web moderne (Chrome, Firefox, Edge)
- Git installé sur votre machine

### Étapes

```bash
# 1. Cloner le dépôt
git clone https://github.com/<username>/horizon-voyages.git

# 2. Accéder au dossier
cd horizon-voyages

# 3. Ouvrir le site
# Option A : Ouvrir directement dans le navigateur
open html/index.html

# Option B : Avec VS Code Live Server (recommandé)
code .
# puis clic droit sur index.html > "Open with Live Server"
```

---

## 🌿 Workflow Git utilisé

### Stratégie de branches

```
main
 └── develop
      ├── feature-homepage
      ├── feature-navbar
      ├── feature-destinations
      ├── feature-contact-page
      ├── feature-footer
      └── feature-responsive-design
```

### Règles du workflow

1. Chaque fonctionnalité est développée sur sa propre branche `feature-*`
2. Les branches partent de `develop`, pas de `main`
3. Toute intégration passe par une **Pull Request** avec au moins 1 reviewer
4. `main` ne reçoit que du code stable et validé

---

## 🔧 Commandes Git utilisées

### Configuration initiale
```bash
git config --global user.name "Prenom Nom"
git config --global user.email "email@example.com"
```

### Initialisation & Clonage
```bash
git init
git clone https://github.com/<username>/horizon-voyages.git
```

### Branches
```bash
git branch                        # Lister les branches locales
git checkout -b feature-homepage  # Créer et basculer sur une branche
git checkout develop              # Changer de branche
git branch -d feature-homepage    # Supprimer une branche locale
```

### Commits
```bash
git status                        # Voir l'état du repo
git add .                         # Stager tous les fichiers
git add html/index.html           # Stager un fichier spécifique
git commit -m "feat: add homepage hero section"
git log --oneline                 # Historique compact
```

### Synchronisation
```bash
git pull origin develop           # Récupérer les dernières modifications
git push origin feature-homepage  # Pousser la branche feature
git fetch --all                   # Récupérer toutes les branches distantes
```

### Merge & Rebase
```bash
git merge develop                 # Fusionner develop dans la branche courante
git rebase develop                # Rejouer les commits (bonus)
```

### Gestion des conflits
```bash
git status                        # Voir les fichiers en conflit
# Éditer manuellement les fichiers marqués
git add <fichier-résolu>
git commit -m "fix: resolve merge conflict in style.css"
```

---

## 💬 Convention de commits

Nous utilisons la convention **Conventional Commits** :

| Préfixe | Usage |
|---------|-------|
| `feat:` | Nouvelle fonctionnalité |
| `fix:` | Correction de bug |
| `update:` | Amélioration d'existant |
| `docs:` | Documentation |
| `style:` | Mise en forme (CSS) |
| `refactor:` | Refactoring sans changement de comportement |

**Exemples :**
```
feat: add responsive navbar with hamburger menu
fix: correct CSS alignment issue on mobile
update: improve homepage hero layout
docs: update README with installation steps
style: adjust footer padding and colors
```

---

## ⚡ Gestion des conflits Git

### Conflit simulé

**Cause :** Deux membres ont modifié la même zone du fichier `css/style.css` (le bloc `.footer`) simultanément sur deux branches différentes — `feature-footer` et `feature-responsive-design` — avant de merger dans `develop`.

**Simulation :**
```bash
# Membre A sur feature-footer
git checkout feature-footer
# modifie .footer { background: #0a0f2c; }
git commit -m "style: update footer background color"

# Membre B sur feature-responsive-design  
git checkout feature-responsive-design
# modifie .footer { background: #111840; }
git commit -m "style: darken footer for mobile"

# Merge → CONFLIT
git checkout develop
git merge feature-footer         # OK
git merge feature-responsive-design  # ⚠️ CONFLIT
```

**Résolution :**
```
<<<<<<< HEAD (feature-footer)
.footer { background: #0a0f2c; }
=======
.footer { background: #111840; }
>>>>>>> feature-responsive-design
```
→ Les deux membres se sont concertés et ont choisi `#0a0f2c` (couleur initiale).

```bash
git add css/style.css
git commit -m "fix: resolve merge conflict in footer background color"
```

---

## 📊 Tableau de bord GitHub Project

Le projet utilise un **GitHub Project Board** avec les colonnes :

| To Do | In Progress | Review | Done |
|-------|-------------|--------|------|
| Issues créées | Branches en cours | Pull Requests | Mergées ✅ |

---

## 📌 Issues GitHub

Au minimum 8 issues ont été créées et labellisées :

| # | Titre | Label | Assigné à |
|---|-------|-------|-----------|
| 1 | Créer la structure du projet | `enhancement` | Mahjoub |
| 2 | Développer la navbar responsive | `enhancement` | Mahjoub |
| 3 | Créer la section hero de l'accueil | `enhancement` | Mahjoub |
| 4 | Page destinations avec filtre | `enhancement` | Ksouri |
| 5 | Ajouter le responsive design mobile | `enhancement` | Ksouri |
| 6 | Créer la page contact avec formulaire | `enhancement` | Hassan |
| 7 | Développer le footer avec liens | `enhancement` | Hassan |
| 8 | Documenter le README complet | `documentation` | Mahjoub |
| 9 | Résoudre le conflit CSS footer | `bug` | Ksouri + Hassan |

---

## 🤝 Contributions

Chaque membre a :
- ✅ Créé au minimum **2 branches** feature
- ✅ Effectué au moins **5 commits** significatifs
- ✅ Créé au moins **2 Pull Requests**
- ✅ Commenté au moins **2 Pull Requests** d'autres membres
- ✅ Résolu au moins **2 issues**

---

## 🏫 Informations académiques

- **Module :** Problem Solving  
- **Institution :** Esprit School of Business  
- **Année :** 2025–2026  
- **Date de rendu :** 29/03/2026  
- **Date de présentation :** semaine du 30/03/2026


## Prérequis
- Docker version 20.x ou supérieure
- Docker Compose version 2.x ou supérieure