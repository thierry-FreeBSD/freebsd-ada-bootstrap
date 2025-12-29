#!/bin/sh
################################################################################
# Script de configuration initiale du dépôt FreeBSD Ada Bootstrap
#
# Ce script crée la structure complète du projet avec tous les fichiers
# Exécutez-le dans votre dépôt GitHub fraîchement créé
################################################################################

set -e

PROJECT_DIR=$(pwd)
echo "📁 Initialisation du projet dans:  $PROJECT_DIR"

# Créer la structure de répertoires
echo "📂 Création des répertoires..."
mkdir -p .  github/workflows
mkdir -p patches
mkdir -p scripts
mkdir -p docs
mkdir -p config

echo "✓ Répertoires créés"

# 1. README.md principal
cat > README.md << 'EOF'
# Ada Bootstrap Builder pour FreeBSD 15 & 16-CURRENT

**Générateur automatisé de bootstraps Ada/GCC pour FreeBSD, via CI/CD GitHub Actions**

## 📋 Vue rapide

```bash
# 1. Compiler le bootstrap (Linux/Ubuntu)
./scripts/build-bootstrap-cross.sh x86_64 15 ./dist

# 2. Vérifier
./scripts/verify-bootstrap.sh ./dist

# 3. Installer sur FreeBSD
./scripts/install-bootstrap.sh dist/ada-bootstrap. *. tar.bz2 /usr/local