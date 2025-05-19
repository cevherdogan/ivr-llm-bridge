# 🧠 IVR-to-LLM Bridge · Multi-Agent Contact Center Automation

**From Legacy IVRs to Zero-Wait Conversations.**  
This repo provides infrastructure, articles, and automation tools to transform outdated IVR systems into intelligent, context-aware, and voice-ready solutions powered by **Amazon Connect**, **AWS Lambda**, and **LLMs (OpenAI or Bedrock)**.

> ✅ Designed for public collaboration, early prototyping, and AWS Marketplace submission.

---

## 📁 Repo Structure

```bash
.
├── articles/                # Medium-ready content and drafts
├── cloudformation/         # YAML templates + deployment guides
├── scripts/                # Commit automation + tagging helpers
├── CHANGELOG.md            # Version history
├── RELEASE_NOTES.md        # Features per release
├── LICENSE                 # Project license
└── README.md               # You're here
````

---

## 📚 Article & Use Case

* 📄 [From Legacy IVR to Zero-Wait Conversations](articles/FromLegacyIVRtoZeroWait_v3.md)
  Learn how LLMs and AWS Connect reshape customer experience.

---

## ⚙️ Deploy & Build

* 📦 [`connect_llm_stack.yaml`](cloudformation/connect_llm_stack.yaml)
  CloudFormation template to launch a Lambda-to-LLM contact flow

* 🧭 [Deployment Guide](cloudformation/README_CFN.md)
  Full step-by-step CLI instructions

---

## 🔁 Git Workflow & Tagging

* 🪄 [Auto Commit + Tagging Script](scripts/auto_commit_push.sh)
* 📝 [Script Usage Guide](scripts/README_TAGGING.md)

---

## 🧪 Join the Pilot / Collaborate

We're building open GPT-based IVR automation kits.
Looking to:

* 🚀 Launch pilots with local orgs and real users
* 🤝 Collaborate on agent routing and prompt design
* 🛍️ Release as templates or apps to AWS Marketplace

📅 **[Schedule a Call](https://calendly.com/cevherdogan/30min)**
🔗 **[Author on Medium](https://medium.com/@cevherd)**

---

## 🧩 Future

* `lambda/handler.py`: Streamlined query to LLMs (OpenAI/BEDROCK)
* `sample_contact_flows/`: Amazon Connect logic + sample intents
* `docs/`: Modular GPT agent design and memory chaining

---

© 2025 Cevher Dogan — MIT License
