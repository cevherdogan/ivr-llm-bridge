#!/bin/bash

# 🏷️ Flags
TAG_REQUIRED=false
COMMIT_MSG_FILE="commit_msg.txt"

# 🔎 Parse CLI arguments
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --tag) TAG_REQUIRED=true ;;
        --msg) COMMIT_MSG_FILE="$2"; shift ;;
        *) echo "❌ Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

# 🧾 Validate commit message file
if [ ! -f "$COMMIT_MSG_FILE" ]; then
  echo "❌ Commit message file '$COMMIT_MSG_FILE' not found."
  exit 1
fi

# 🟢 Detect current Git branch
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo "🔍 Current branch: $CURRENT_BRANCH"
read -p "🚨 Continue committing to this branch? (y/n): " confirm
if [[ "$confirm" != "y" ]]; then
  echo "❌ Aborted by user."
  exit 1
fi

# 🧩 Commit changes
git add .
git commit -F "$COMMIT_MSG_FILE"
echo "✅ Committed using $COMMIT_MSG_FILE"

# 🏷️ Optional Tagging
if [ "$TAG_REQUIRED" = true ]; then
  read -p "📌 Enter tag version (e.g., v0.1.0): " TAG_VERSION
  read -p "📝 Enter tag message: " TAG_MESSAGE
  git tag -a "$TAG_VERSION" -m "$TAG_MESSAGE"
  echo "✅ Tagged as $TAG_VERSION"
fi

# 🚀 Push changes and optional tag
git push origin "$CURRENT_BRANCH"
[ "$TAG_REQUIRED" = true ] && git push origin "$TAG_VERSION"

echo "🎉 Done!"


