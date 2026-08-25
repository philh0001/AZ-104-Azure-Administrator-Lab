# AZ-104 Azure Administrator Lab

## Project Overview

This repository documents my hands-on Microsoft Azure administration lab, built while studying for the **Microsoft AZ-104: Azure Administrator** certification.

The project is designed to demonstrate practical Azure administration skills rather than simply document exam theory. The environment is built progressively using realistic administration scenarios, configuration tasks, testing and troubleshooting.

The lab covers Azure identity, governance, storage, compute, networking, monitoring and automation.

---

## Project Objectives

- Build and administer a structured Microsoft Azure environment
- Apply Role-Based Access Control (RBAC) using least-privilege principles
- Implement Azure governance using Policy, resource locks and tagging
- Configure and secure Azure Storage
- Deploy and administer Azure Virtual Machines
- Design and configure Azure virtual networking
- Use managed identities for passwordless authentication
- Implement monitoring and operational controls
- Automate Azure administration using PowerShell and Infrastructure as Code
- Troubleshoot real Azure configuration and access issues

---

## Lab Environment

| Component | Configuration |
|---|---|
| Cloud Platform | Microsoft Azure |
| Primary Region | UK South |
| Identity | Microsoft Entra ID |
| Compute | Azure Virtual Machines |
| Storage | Azure Storage |
| Networking | Azure Virtual Network |
| Administration | Azure Portal / PowerShell |
| Infrastructure as Code | Bicep |
| Monitoring | Azure Monitor / Log Analytics |

---

## Architecture

> Architecture diagram will be added as the environment develops.

The lab is separated into dedicated resource groups for different Azure workloads and administrative functions.

---

## Project Sections

### 1. Identity

📁 [`Identity/`](Identity/)

Topics include:

- Microsoft Entra ID users
- Security groups
- Group membership
- Managed identities
- Identity-based access to Azure resources

---

### 2. Governance

📁 [`Governance/`](Governance/)

Topics include:

- Azure Resource Groups
- Resource tagging
- Azure RBAC
- Least-privilege access
- RBAC inheritance
- Effective permissions
- Azure Policy
- Policy enforcement testing
- Resource locks
- Cost Management and budgets

---

### 3. Storage

📁 [`Storage/`](Storage/)

Topics include:

- Azure Storage Accounts
- Blob Storage
- Private containers
- Storage RBAC
- Shared Access Signatures (SAS)
- Blob lifecycle management
- Azure Files
- SMB file-share mounting
- Storage firewall rules
- Selected network access
- Storage security testing

---

### 4. Compute

📁 [`compute/`](compute/)

Topics include:

- Azure Virtual Machines
- VM sizing
- Windows Server administration
- Managed disks
- Data disk configuration
- System-assigned managed identities
- Passwordless access to Azure Storage
- VM Extensions
- Custom Script Extension
- VM deallocation and cost management

---

### 5. Networking

📁 [`networking/`](networking/)

Topics include:

- Virtual Networks
- Address spaces
- Subnets
- Network Security Groups
- Inbound security rules
- RDP access restrictions
- Private and public IP addressing
- Service endpoints
- Storage network integration

---

### 6. Monitoring

📁 [`monitoring/`](monitoring/)

Topics will include:

- Azure Monitor
- Log Analytics Workspaces
- Diagnostic settings
- Azure alerts
- Activity Logs
- VM monitoring
- Backup and recovery

---

### 7. Automation

📁 [`automation/`](automation/)

Topics will include:

- PowerShell
- Azure PowerShell
- VM automation
- Custom Script Extension
- Bicep
- Infrastructure as Code
- Repeatable Azure deployments

---

## Troubleshooting

📁 [`troubleshooting/`](troubleshooting/)

The project also documents configuration problems encountered during the lab and how they were investigated and resolved.

Examples include:

### Resource Lock Deployment Failure

**Issue:**  
_To be completed._

**Cause:**  
_To be completed._

**Resolution:**  
_To be completed._

---

### Storage Network Authorization Failure

**Issue:**  
_To be completed._

**Cause:**  
_To be completed._

**Resolution:**  
_To be completed._

---

### Managed Identity Blob Access

**Issue:**  
_To be completed._

**Cause:**  
_To be completed._

**Resolution:**  
_To be completed._

---

### PowerShell Data Disk Configuration

**Issue:**  
_To be completed._

**Resolution:**  
_To be completed._

---

## Security Controls Implemented

- Role-Based Access Control (RBAC)
- Least-privilege role assignments
- Resource locks
- Azure Policy
- Restricted storage network access
- Network Security Groups
- Source-IP restricted RDP
- Private Blob containers
- Scoped SAS permissions
- Managed identities
- Passwordless workload authentication

---

## Cost Management

The environment is designed as a low-cost learning lab.

Cost-control measures include:

- Azure Cost Management budgets
- Budget alert thresholds
- Low-cost VM sizes
- VM deallocation when not in use
- Resource cleanup after testing
- Avoiding unnecessary premium Azure services

---

## Screenshot Evidence

Configuration and testing evidence is stored within each project section:

```text
identity/screenshots/
governance/screenshots/
storage/screenshots/
compute/screenshots/
networking/screenshots/
monitoring/screenshots/
automation/screenshots/
```

Screenshots have been reviewed to remove sensitive information such as subscription identifiers, public IP addresses and personal account information.

---

## Skills Demonstrated

- Microsoft Azure Administration
- Microsoft Entra ID
- Azure RBAC
- Azure Policy
- Azure Resource Management
- Azure Storage
- Azure Virtual Machines
- Azure Virtual Networking
- Network Security Groups
- Managed Identities
- Azure Files
- PowerShell
- Troubleshooting
- Cloud Security
- Cost Management
- Infrastructure as Code

---

## AZ-104 Alignment

This project is aligned with the major skill areas assessed by the **Microsoft AZ-104: Azure Administrator** certification:

- Manage Azure identities and governance
- Implement and manage storage
- Deploy and manage Azure compute resources
- Implement and manage virtual networking
- Monitor and maintain Azure resources

---

## Current Progress

| Area | Status |
|---|---|
| Identity | 🟢 In Progress |
| Governance | 🟢 In Progress |
| Storage | 🟢 In Progress |
| Compute | 🟢 In Progress |
| Networking | 🟡 In Progress |
| Monitoring | ⚪ Planned |
| Automation / IaC | 🟡 In Progress |

---

## Repository Structure

```text
AZ-104-Azure-Administrator-Lab/
│
├── README.md
├── architecture/
├── identity/
│   └── screenshots/
├── governance/
│   └── screenshots/
├── storage/
│   └── screenshots/
├── compute/
│   └── screenshots/
├── networking/
│   └── screenshots/
├── monitoring/
│   └── screenshots/
├── automation/
│   ├── powershell/
│   ├── bicep/
│   └── screenshots/
└── troubleshooting/
```

---

## Project Status

🚧 **Active Project**

This repository will continue to develop as additional AZ-104 topics, practical exercises and troubleshooting scenarios are completed.
