# Bulk-User-Provisioning.ps1
# Description: Automates the creation of mock user identities for Lab 02 lifecycle testing.

# Ensure Microsoft Graph module is available and connected
Import-Module Microsoft.Graph.Users
Connect-MgGraph -Scopes "User.ReadWrite.All", "Directory.AccessAsUser.All"

#Define path to mock user data CSV
$csvPath = "./01-Automation-Scripts/users-to-provision.csv"

if (!(Test-Path $CsvPath)) {
    Write-Error "CSV file not found at $CsvPath. Please create the mock data file first."
    exit
}

$Users = Import-Csv -Path $CsvPath

foreach ($User in $Users) {
    try {
        # Check if the user already exists
        $ExistingUser = Get-MgUser -Filter "UserPrincipalName eq '$($User.UserPrincipalName)'" -ErrorAction SilentlyContinue

        if ($ExistingUser) {
            Write-Host "User already exists: $($User.UserPrincipalName) (Skipping creation)" -ForegroundColor Yellow
        } else {
            $PasswordProfile = @{
                Password = $User.Password
                ForceChangePasswordNextSignIn = $true
            }

            New-MgUser -DisplayName $User.DisplayName `
                -GivenName $User.GivenName `
                -Surname $User.Surname `
                -UserPrincipalName $User.UserPrincipalName `
                -MailNickname $User.MailNickname `
                -PasswordProfile $PasswordProfile `
                -AccountEnabled

            # Apply UsageLocation if needed for future licensing
            Update-MgUser -UserId $User.UserPrincipalName -UsageLocation "US"

            Write-Host "Successfully provisioned: $($User.UserPrincipalName)" -ForegroundColor Green
        }
    }
    catch {
        Write-Error "Failed to provision $($User.UserPrincipalName): $_"
    }
}