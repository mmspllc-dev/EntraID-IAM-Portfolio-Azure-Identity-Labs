# Automation Scripts

This directory houses PowerShell automation scripts utilized across lab implementations for programmatic provisioning and security auditing within Microsoft Entra ID.

## Scripts Overview

* **`Bulk-User-Provisioning.ps1`**: Simulates organizational onboarding waves by programmatically creating mock user identities with built-in idempotency checks and usage location property compliance.
* **`Audit-Privileged-Roles.ps1`**: Programmatically inspects and reports on administrative role assignments to enforce least-privilege tracking.

## Usage & Safety
* All scripts rely on environment variables mapped securely from local configuration files.
* Executed exclusively within sandbox developer tenants (`MMSPLLC2.onmicrosoft.com`).