Here’s a new file: `scripts/README_TAGGING.md`
It explains how to use `auto_commit_push.sh` for clean, version-controlled Git operations with optional tagging.

---

### 📘 `scripts/README_TAGGING.md`

````markdown
# 🚀 Git Automation: Commit & Optional Tagging Script

This script simplifies the Git workflow for contributors and maintainers by automating:

- Staging and committing changes
- Reading commit messages from a file
- Optionally creating annotated Git tags
- Confirming current branch before pushing

---

## 📂 Script Location

```bash
scripts/auto_commit_push.sh
````

---

## 🛠️ Usage

### ✅ Commit Only

```bash
./scripts/auto_commit_push.sh --msg commit_msg.txt
```

This will:

* Read the commit message from `commit_msg.txt`
* Confirm your current Git branch
* Commit and push changes to that branch

---

### 🏷️ Commit + Tag

```bash
./scripts/auto_commit_push.sh --tag --msg commit_msg.txt
```

You will be prompted to:

* Enter a tag version (e.g., `v0.1.0`)
* Enter a tag message (annotated tag)
* Approve your current branch before pushing

---

## 📂 Example File: `commit_msg.txt`

```text
feat: initial IVR-to-LLM repo scaffold

- Adds article and APA references
- Includes CloudFormation starter template
- Adds Lambda stub and deployment guide
- CHANGELOG and release notes included
```

---

## 🧠 Best Practices

* Use `--tag` only when you're ready to release a new version
* Maintain semantic versioning: `vMAJOR.MINOR.PATCH`
* Push tags only after successful tests and reviews

---

## 🧩 Coming Soon

* GitHub Action to auto-tag based on version file
* Conventional commits validator

```
