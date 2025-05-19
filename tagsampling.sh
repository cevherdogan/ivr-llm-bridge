# Commit with detailed message
git commit -m "feat: initial repo scaffold for IVR-to-LLM bridge

- Added Medium article with APA references
- Created initial CloudFormation template and Lambda handler stub
- Published deploy guide (README_CFN.md)
- Added changelog and release notes to support versioning and future contribution
- Aligned roadmap with multi-agent GPT goals and AWS Marketplace potential
"

# Tag first release
git tag -a v0.1.0 -m "Initial public draft with CloudFormation + LLM workflow"

# Push to remote (replace URL with your repo)
git remote add origin https://github.com/cevherdogan/ivr-llm-bridge.git
git push -u origin main --tags

echo "Have you tried scripts/auto_commit_push.sh yet?"
echo """
# Basic commit (no tag)
./scripts/auto_commit_push.sh --msg commit_msg.txt

# Commit + Tag
./scripts/auto_commit_push.sh --tag --msg commit_msg.txt
"""


