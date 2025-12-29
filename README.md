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