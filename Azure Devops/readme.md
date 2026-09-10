# 🚀 Azure DevOps

<p align="center">
  <img src="https://img.shields.io/badge/Azure%20DevOps-0078D4?style=for-the-badge&logo=azuredevops&logoColor=white" />
  <img src="https://img.shields.io/badge/Azure-0089D6?style=for-the-badge&logo=microsoftazure&logoColor=white" />
  <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/YAML-CB171E?style=for-the-badge&logo=yaml&logoColor=white" />
  <img src="https://img.shields.io/badge/DevOps-0A0A0A?style=for-the-badge&logo=devdotto&logoColor=white" />
</p>

<p align="center">
  <b>Plan • Code • Build • Test • Release • Deploy • Monitor</b>
</p>

---

## 🌐 What is Azure DevOps?

**Azure DevOps** is a collection of Microsoft services used to manage the complete software development and delivery lifecycle.

It provides tools for:

* 📋 Planning and work tracking
* 💻 Source-code management
* 🔄 CI/CD automation
* 📦 Package management
* 🧪 Testing
* ☁️ Cloud deployment

---

# 🧩 Azure DevOps Services

| Service                 | Purpose                           |
| ----------------------- | --------------------------------- |
| 📁 **Azure Repos**      | Git repositories & source control |
| 🔄 **Azure Pipelines**  | CI/CD automation                  |
| 📋 **Azure Boards**     | Agile planning & work tracking    |
| 📦 **Azure Artifacts**  | Package & artifact management     |
| 🧪 **Azure Test Plans** | Testing & quality management      |

---

# 🏗️ Azure DevOps Architecture

```text
                         ☁️ AZURE DEVOPS
                               │
              ┌────────────────┼────────────────┐
              │                │                │
              ▼                ▼                ▼
        📋 Azure Boards   📁 Azure Repos   🧪 Test Plans
              │                │                │
              │                ▼                │
              │          🔀 Pull Request        │
              │                │                │
              │                ▼                │
              │        🔍 Code Review            │
              │                │                │
              └────────────────┼────────────────┘
                               │
                               ▼
                       🔄 Azure Pipelines
                               │
                    ┌──────────┴──────────┐
                    │                     │
                    ▼                     ▼
                  🔨 Build              🧪 Test
                    │                     │
                    └──────────┬──────────┘
                               │
                               ▼
                         📦 Artifact
                               │
                               ▼
                        🚀 Deployment
                               │
                               ▼
                         ☁️ Azure Cloud
```

---

# 📁 Azure Repos

Azure Repos provides **Git-based source-code management**.

### 🔀 Git Workflow

```text
👨‍💻 Developer
      │
      ▼
🌿 Feature Branch
      │
      ▼
📝 Code Changes
      │
      ▼
💾 Git Commit
      │
      ▼
⬆️ Push
      │
      ▼
🔀 Pull Request
      │
      ▼
👀 Code Review
      │
      ▼
✅ Approval
      │
      ▼
🔀 Merge
      │
      ▼
🌳 main
```

### 💻 Common Git Commands

```bash
# Clone repository
git clone <repository-url>

# Create feature branch
git checkout -b feature/my-change

# Check changes
git status

# Stage changes
git add .

# Commit
git commit -m "Add new changes"

# Push feature branch
git push -u origin feature/my-change
```

---

# 🔀 Pull Request Workflow

Pull Requests provide a controlled way to review and merge code.

```text
🌿 Feature Branch
       │
       ▼
   💾 Commit
       │
       ▼
    ⬆️ Push
       │
       ▼
🔀 Pull Request
       │
       ▼
👀 Code Review
       │
       ▼
🧪 CI Validation
       │
       ▼
   ✅ Approval
       │
       ▼
🔀 Merge to main
```

### 🛡️ Branch Protection

Recommended controls:

* ✅ Pull Request required
* ✅ Code review required
* ✅ CI pipeline must pass
* 🚫 Direct push to `main`
* 🔒 Protected main branch

---

# 🔄 Azure Pipelines

Azure Pipelines provides **CI/CD automation** using YAML or classic pipelines.

### ⚙️ CI Pipeline

```text
        📁 Git Repository
               │
               ▼
          ⬇️ Checkout
               │
               ▼
        🔍 Code Validation
               │
               ▼
             🔨 Build
               │
               ▼
            🧪 Test
               │
               ▼
          📦 Artifact
               │
               ▼
             ✅ CI
```

### 🚀 CD Pipeline

```text
📦 Artifact
     │
     ▼
🧪 Test Environment
     │
     ▼
☁️ Development
     │
     ▼
🔍 Validation
     │
     ▼
☁️ Production
```

---

# 📜 YAML Pipeline Example

```yaml
trigger:
  - main

pool:
  vmImage: ubuntu-latest

steps:

  - checkout: self

  - script: |
      echo "🔍 Running validation"
      echo "🔨 Building application"
      echo "🧪 Running tests"
    displayName: "Build and Validate"
```

---

# 📋 Azure Boards

Azure Boards helps teams plan and track development work.

### 🗂️ Work Item Hierarchy

```text
🎯 Epic
 │
 ├── ⭐ Feature
 │      │
 │      ├── 📖 User Story
 │      │       ├── ✅ Task
 │      │       ├── ✅ Task
 │      │       └── 🐞 Bug
 │      │
 │      └── 📖 User Story
 │
 └── ⭐ Feature
```

### 📌 Common Work Items

* 🎯 Epic
* ⭐ Feature
* 📖 User Story
* ✅ Task
* 🐞 Bug

---

# 📦 Azure Artifacts

Azure Artifacts provides package management for development teams.

Supported package types include:

```text
📦 NuGet
📦 npm
📦 Maven
📦 Python
```

Example workflow:

```text
👨‍💻 Developer
      │
      ▼
💻 Build Application
      │
      ▼
📦 Create Package
      │
      ▼
☁️ Azure Artifacts
      │
      ▼
🔄 CI/CD Pipeline
      │
      ▼
🚀 Deployment
```

---

# 🧪 Azure Test Plans

Azure Test Plans provides testing and quality-management capabilities.

### Testing Workflow

```text
📝 Test Case
     │
     ▼
▶️ Test Execution
     │
     ▼
📊 Test Result
     │
     ├──── ✅ Pass
     │
     └──── ❌ Fail
              │
              ▼
           🐞 Bug
```

---

# 🌎 Complete DevOps Lifecycle

```text
        📋 PLAN
          │
          ▼
        💻 CODE
          │
          ▼
       🔀 REVIEW
          │
          ▼
        🔨 BUILD
          │
          ▼
        🧪 TEST
          │
          ▼
       📦 PACKAGE
          │
          ▼
       🚀 DEPLOY
          │
          ▼
       📊 MONITOR
          │
          └──────────────┐
                         │
                         ▼
                       🔄 PLAN
```

---

# ☁️ Azure + DevOps

Azure DevOps can integrate with Azure infrastructure and DevOps tools.

```text
                    👨‍💻 Developer
                         │
                         ▼
                    📁 Git Repo
                         │
                         ▼
                  🔀 Pull Request
                         │
                         ▼
                 🔄 CI/CD Pipeline
                         │
              ┌──────────┴──────────┐
              │                     │
              ▼                     ▼
         🔨 Build/Test          🏗️ Terraform
                                    │
                                    ▼
                              ☁️ Azure
                                    │
                   ┌────────────────┼────────────────┐
                   │                │                │
                   ▼                ▼                ▼
                  🖥️ VM           🌐 VNet          🔐 Key Vault
                   │                │                │
                   └────────────────┼────────────────┘
                                    │
                                    ▼
                               📊 Monitoring
```

---

# 🛠️ Tools & Technologies

<p align="center">

<img src="https://img.shields.io/badge/Azure%20DevOps-0078D4?style=for-the-badge&logo=azuredevops&logoColor=white" />
<img src="https://img.shields.io/badge/Azure-0089D6?style=for-the-badge&logo=microsoftazure&logoColor=white" />
<img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white" />
<img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" />
<img src="https://img.shields.io/badge/Terraform-844FBA?style=for-the-badge&logo=terraform&logoColor=white" />
<img src="https://img.shields.io/badge/YAML-CB171E?style=for-the-badge&logo=yaml&logoColor=white" />
<img src="https://img.shields.io/badge/PowerShell-5391FE?style=for-the-badge&logo=powershell&logoColor=white" />
<img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" />

</p>

---

# 📚 Key Concepts Learned

### 🔹 Source Control

* Git repositories
* Branching
* Pull Requests
* Merge strategies
* Branch protection

### 🔹 CI/CD

* YAML pipelines
* Continuous Integration
* Continuous Delivery
* Build automation
* Deployment automation
* Pipeline variables
* Secrets

### 🔹 Infrastructure Automation

* Terraform
* Infrastructure as Code
* Azure resources
* Automated deployments

### 🔹 Agile

* Azure Boards
* Epics
* Features
* User Stories
* Tasks
* Bugs
* Sprints

---

# 🎯 Project Objectives

The main objectives of this project are:

* 🚀 Build practical Azure DevOps knowledge
* 🔄 Implement CI/CD pipelines
* 🌿 Practice Git branching and Pull Requests
* 🏗️ Automate Azure infrastructure using Terraform
* 🔐 Implement secure authentication
* 📦 Understand artifact management
* 🧪 Implement automated validation and testing
* ☁️ Deploy infrastructure to Azure

---

# 📈 DevOps Skills

```text
Azure DevOps       ████████████████████░  Advanced
Git & GitHub       ███████████████████░░  Advanced
CI/CD              ██████████████████░░░  Advanced
Terraform          ██████████████████░░░  Advanced
Azure              ███████████████████░░  Advanced
YAML               ████████████████░░░░░  Intermediate
Linux              █████████████████░░░░  Intermediate
```

---

# 🏆 Hands-On Practice

This repository demonstrates practical implementation of:

```text
✅ Azure DevOps Project
✅ Azure Repos
✅ Git Branching
✅ Pull Requests
✅ Code Review
✅ YAML Pipelines
✅ CI/CD
✅ Terraform Automation
✅ Azure Infrastructure
✅ Agile Work Tracking
```

---

# 👨‍💻 Author

**Mohammad Daud**

### ☁️ Cloud & DevOps Engineer

**Azure • AWS • Kubernetes • Terraform • CI/CD • Git • Networking**

> 🚀 Automate • Deploy • Scale

---

⭐ **If you find this repository useful, consider giving it a star!**
