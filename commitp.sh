# Optional: Review staged files
git status

# Write commit message to file
cat <<EOF > commit_msg.txt
feat: added landing README and script output log

- Added root README.md summarizing repo and navigation
- Captured output of auto_commit_push.sh for reference
- Continues v0.1.0 milestone with public-facing structure
EOF

# Commit using message from file
git commit -F commit_msg.txt

# Push to origin/main
git push origin main


