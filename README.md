# Entra ID Identity & Access Management (IAM) Portfolio

This repository documents hands-on engineering labs, administrative automation, and security hardening implementations built within a dedicated Microsoft Entra ID cloud-only test tenant (`MMSPLLC2.onmicrosoft.com`). 

Designed as a production-grade portfolio and permanent study guide aligned with the **SC-300 Identity and Access Administrator** certification framework.

## Architecture & Lab Index

| Lab / Module | Core Focus Area | Status | Documentation & Artifacts |
| :--- | :--- | :--- | :--- |
| **Lab 01** | Emergency Access (Break-Glass) & Secret Hygiene | Completed | [View Lab 01 Guide](Lab-01-BreakGlass-Implementation.md) |
| **Lab 02** | User Identity Lifecycle, Bulk Provisioning & RBAC | In Progress | [View Lab 02 Guide](Lab-02-Identity-Lifecycle.md) |
| **Scripts** | Automated Privilege Auditing & Provisioning Tools | Active | [View Scripts Directory](01-Automation-Scripts/README.md) |

## Repository Standards
* **Secret Isolation:** Local environment tracking managed via `.env` with public `.env.example` templates.
* **Visual Proof:** Step-by-step portal execution validated through sanitized screenshots embedded in all lab guides.