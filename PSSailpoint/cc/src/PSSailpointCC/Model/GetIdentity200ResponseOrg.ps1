#
# IdentityNow cc (private) APIs
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Name
No description available.
.PARAMETER ScriptName
No description available.
.PARAMETER Mode
No description available.
.PARAMETER NumQuestions
No description available.
.PARAMETER Status
No description available.
.PARAMETER MaxRegisteredUsers
No description available.
.PARAMETER Pod
No description available.
.PARAMETER PwdResetPersonalPhone
No description available.
.PARAMETER PwdResetPersonalEmail
No description available.
.PARAMETER PwdResetKba
No description available.
.PARAMETER PwdResetEmail
No description available.
.PARAMETER PwdResetDuo
No description available.
.PARAMETER PwdResetPhoneMask
No description available.
.PARAMETER AuthErrorText
No description available.
.PARAMETER StrongAuthKba
No description available.
.PARAMETER StrongAuthPersonalPhone
No description available.
.PARAMETER StrongAuthPersonalEmail
No description available.
.PARAMETER Integrations
No description available.
.PARAMETER ProductName
No description available.
.PARAMETER KbaReqForAuthn
No description available.
.PARAMETER KbaReqAnswers
No description available.
.PARAMETER LockoutAttemptThreshold
No description available.
.PARAMETER LockoutTimeMinutes
No description available.
.PARAMETER UsageCertRequired
No description available.
.PARAMETER AdminStrongAuthRequired
No description available.
.PARAMETER EnableExternalPasswordChange
No description available.
.PARAMETER EnablePasswordReplay
No description available.
.PARAMETER EnableAutomaticPasswordReplay
No description available.
.PARAMETER NotifyAuthenticationSettingChange
No description available.
.PARAMETER Netmasks
No description available.
.PARAMETER CountryCodes
No description available.
.PARAMETER WhiteList
No description available.
.PARAMETER UsernameEmptyText
No description available.
.PARAMETER UsernameLabel
No description available.
.PARAMETER EnableAutomationGeneration
No description available.
.PARAMETER EmailTestMode
No description available.
.PARAMETER EmailTestAddress
No description available.
.PARAMETER OrgType
No description available.
.PARAMETER PasswordReplayState
No description available.
.PARAMETER SystemNotificationConfig
No description available.
.PARAMETER RedirectPatterns
No description available.
.PARAMETER MaxClusterDebugHours
No description available.
.PARAMETER BrandName
No description available.
.PARAMETER Logo
No description available.
.PARAMETER EmailFromAddress
No description available.
.PARAMETER StandardLogoUrl
No description available.
.PARAMETER NarrowLogoUrl
No description available.
.PARAMETER ActionButtonColor
No description available.
.PARAMETER ActiveLinkColor
No description available.
.PARAMETER NavigationColor
No description available.
.OUTPUTS

GetIdentity200ResponseOrg<PSCustomObject>
#>

function Initialize-CCGetIdentity200ResponseOrg {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ScriptName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Mode},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${NumQuestions},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${MaxRegisteredUsers},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Pod},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PwdResetPersonalPhone},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PwdResetPersonalEmail},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PwdResetKba},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PwdResetEmail},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PwdResetDuo},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PwdResetPhoneMask},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AuthErrorText},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${StrongAuthKba},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${StrongAuthPersonalPhone},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${StrongAuthPersonalEmail},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Integrations},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProductName},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${KbaReqForAuthn},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${KbaReqAnswers},
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${LockoutAttemptThreshold},
        [Parameter(Position = 22, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${LockoutTimeMinutes},
        [Parameter(Position = 23, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UsageCertRequired},
        [Parameter(Position = 24, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${AdminStrongAuthRequired},
        [Parameter(Position = 25, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EnableExternalPasswordChange},
        [Parameter(Position = 26, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EnablePasswordReplay},
        [Parameter(Position = 27, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EnableAutomaticPasswordReplay},
        [Parameter(Position = 28, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${NotifyAuthenticationSettingChange},
        [Parameter(Position = 29, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Netmasks},
        [Parameter(Position = 30, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CountryCodes},
        [Parameter(Position = 31, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${WhiteList},
        [Parameter(Position = 32, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UsernameEmptyText},
        [Parameter(Position = 33, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UsernameLabel},
        [Parameter(Position = 34, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EnableAutomationGeneration},
        [Parameter(Position = 35, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EmailTestMode},
        [Parameter(Position = 36, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailTestAddress},
        [Parameter(Position = 37, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OrgType},
        [Parameter(Position = 38, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PasswordReplayState},
        [Parameter(Position = 39, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SystemNotificationConfig},
        [Parameter(Position = 40, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RedirectPatterns},
        [Parameter(Position = 41, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MaxClusterDebugHours},
        [Parameter(Position = 42, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BrandName},
        [Parameter(Position = 43, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Logo},
        [Parameter(Position = 44, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EmailFromAddress},
        [Parameter(Position = 45, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StandardLogoUrl},
        [Parameter(Position = 46, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${NarrowLogoUrl},
        [Parameter(Position = 47, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ActionButtonColor},
        [Parameter(Position = 48, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ActiveLinkColor},
        [Parameter(Position = 49, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NavigationColor}
    )

    Process {
        'Creating PSCustomObject: PSSailpointCC => CCGetIdentity200ResponseOrg' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "scriptName" = ${ScriptName}
            "mode" = ${Mode}
            "numQuestions" = ${NumQuestions}
            "status" = ${Status}
            "maxRegisteredUsers" = ${MaxRegisteredUsers}
            "pod" = ${Pod}
            "pwdResetPersonalPhone" = ${PwdResetPersonalPhone}
            "pwdResetPersonalEmail" = ${PwdResetPersonalEmail}
            "pwdResetKba" = ${PwdResetKba}
            "pwdResetEmail" = ${PwdResetEmail}
            "pwdResetDuo" = ${PwdResetDuo}
            "pwdResetPhoneMask" = ${PwdResetPhoneMask}
            "authErrorText" = ${AuthErrorText}
            "strongAuthKba" = ${StrongAuthKba}
            "strongAuthPersonalPhone" = ${StrongAuthPersonalPhone}
            "strongAuthPersonalEmail" = ${StrongAuthPersonalEmail}
            "integrations" = ${Integrations}
            "productName" = ${ProductName}
            "kbaReqForAuthn" = ${KbaReqForAuthn}
            "kbaReqAnswers" = ${KbaReqAnswers}
            "lockoutAttemptThreshold" = ${LockoutAttemptThreshold}
            "lockoutTimeMinutes" = ${LockoutTimeMinutes}
            "usageCertRequired" = ${UsageCertRequired}
            "adminStrongAuthRequired" = ${AdminStrongAuthRequired}
            "enableExternalPasswordChange" = ${EnableExternalPasswordChange}
            "enablePasswordReplay" = ${EnablePasswordReplay}
            "enableAutomaticPasswordReplay" = ${EnableAutomaticPasswordReplay}
            "notifyAuthenticationSettingChange" = ${NotifyAuthenticationSettingChange}
            "netmasks" = ${Netmasks}
            "countryCodes" = ${CountryCodes}
            "whiteList" = ${WhiteList}
            "usernameEmptyText" = ${UsernameEmptyText}
            "usernameLabel" = ${UsernameLabel}
            "enableAutomationGeneration" = ${EnableAutomationGeneration}
            "emailTestMode" = ${EmailTestMode}
            "emailTestAddress" = ${EmailTestAddress}
            "orgType" = ${OrgType}
            "passwordReplayState" = ${PasswordReplayState}
            "systemNotificationConfig" = ${SystemNotificationConfig}
            "redirectPatterns" = ${RedirectPatterns}
            "maxClusterDebugHours" = ${MaxClusterDebugHours}
            "brandName" = ${BrandName}
            "logo" = ${Logo}
            "emailFromAddress" = ${EmailFromAddress}
            "standardLogoUrl" = ${StandardLogoUrl}
            "narrowLogoUrl" = ${NarrowLogoUrl}
            "actionButtonColor" = ${ActionButtonColor}
            "activeLinkColor" = ${ActiveLinkColor}
            "navigationColor" = ${NavigationColor}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to GetIdentity200ResponseOrg<PSCustomObject>

.DESCRIPTION

Convert from JSON to GetIdentity200ResponseOrg<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

GetIdentity200ResponseOrg<PSCustomObject>
#>
function ConvertFrom-CCJsonToGetIdentity200ResponseOrg {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointCC => CCGetIdentity200ResponseOrg' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CCGetIdentity200ResponseOrg
        $AllProperties = ("name", "scriptName", "mode", "numQuestions", "status", "maxRegisteredUsers", "pod", "pwdResetPersonalPhone", "pwdResetPersonalEmail", "pwdResetKba", "pwdResetEmail", "pwdResetDuo", "pwdResetPhoneMask", "authErrorText", "strongAuthKba", "strongAuthPersonalPhone", "strongAuthPersonalEmail", "integrations", "productName", "kbaReqForAuthn", "kbaReqAnswers", "lockoutAttemptThreshold", "lockoutTimeMinutes", "usageCertRequired", "adminStrongAuthRequired", "enableExternalPasswordChange", "enablePasswordReplay", "enableAutomaticPasswordReplay", "notifyAuthenticationSettingChange", "netmasks", "countryCodes", "whiteList", "usernameEmptyText", "usernameLabel", "enableAutomationGeneration", "emailTestMode", "emailTestAddress", "orgType", "passwordReplayState", "systemNotificationConfig", "redirectPatterns", "maxClusterDebugHours", "brandName", "logo", "emailFromAddress", "standardLogoUrl", "narrowLogoUrl", "actionButtonColor", "activeLinkColor", "navigationColor")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scriptName"))) { #optional property not found
            $ScriptName = $null
        } else {
            $ScriptName = $JsonParameters.PSobject.Properties["scriptName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mode"))) { #optional property not found
            $Mode = $null
        } else {
            $Mode = $JsonParameters.PSobject.Properties["mode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numQuestions"))) { #optional property not found
            $NumQuestions = $null
        } else {
            $NumQuestions = $JsonParameters.PSobject.Properties["numQuestions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxRegisteredUsers"))) { #optional property not found
            $MaxRegisteredUsers = $null
        } else {
            $MaxRegisteredUsers = $JsonParameters.PSobject.Properties["maxRegisteredUsers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pod"))) { #optional property not found
            $Pod = $null
        } else {
            $Pod = $JsonParameters.PSobject.Properties["pod"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pwdResetPersonalPhone"))) { #optional property not found
            $PwdResetPersonalPhone = $null
        } else {
            $PwdResetPersonalPhone = $JsonParameters.PSobject.Properties["pwdResetPersonalPhone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pwdResetPersonalEmail"))) { #optional property not found
            $PwdResetPersonalEmail = $null
        } else {
            $PwdResetPersonalEmail = $JsonParameters.PSobject.Properties["pwdResetPersonalEmail"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pwdResetKba"))) { #optional property not found
            $PwdResetKba = $null
        } else {
            $PwdResetKba = $JsonParameters.PSobject.Properties["pwdResetKba"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pwdResetEmail"))) { #optional property not found
            $PwdResetEmail = $null
        } else {
            $PwdResetEmail = $JsonParameters.PSobject.Properties["pwdResetEmail"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pwdResetDuo"))) { #optional property not found
            $PwdResetDuo = $null
        } else {
            $PwdResetDuo = $JsonParameters.PSobject.Properties["pwdResetDuo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pwdResetPhoneMask"))) { #optional property not found
            $PwdResetPhoneMask = $null
        } else {
            $PwdResetPhoneMask = $JsonParameters.PSobject.Properties["pwdResetPhoneMask"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "authErrorText"))) { #optional property not found
            $AuthErrorText = $null
        } else {
            $AuthErrorText = $JsonParameters.PSobject.Properties["authErrorText"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "strongAuthKba"))) { #optional property not found
            $StrongAuthKba = $null
        } else {
            $StrongAuthKba = $JsonParameters.PSobject.Properties["strongAuthKba"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "strongAuthPersonalPhone"))) { #optional property not found
            $StrongAuthPersonalPhone = $null
        } else {
            $StrongAuthPersonalPhone = $JsonParameters.PSobject.Properties["strongAuthPersonalPhone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "strongAuthPersonalEmail"))) { #optional property not found
            $StrongAuthPersonalEmail = $null
        } else {
            $StrongAuthPersonalEmail = $JsonParameters.PSobject.Properties["strongAuthPersonalEmail"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "integrations"))) { #optional property not found
            $Integrations = $null
        } else {
            $Integrations = $JsonParameters.PSobject.Properties["integrations"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "productName"))) { #optional property not found
            $ProductName = $null
        } else {
            $ProductName = $JsonParameters.PSobject.Properties["productName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "kbaReqForAuthn"))) { #optional property not found
            $KbaReqForAuthn = $null
        } else {
            $KbaReqForAuthn = $JsonParameters.PSobject.Properties["kbaReqForAuthn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "kbaReqAnswers"))) { #optional property not found
            $KbaReqAnswers = $null
        } else {
            $KbaReqAnswers = $JsonParameters.PSobject.Properties["kbaReqAnswers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lockoutAttemptThreshold"))) { #optional property not found
            $LockoutAttemptThreshold = $null
        } else {
            $LockoutAttemptThreshold = $JsonParameters.PSobject.Properties["lockoutAttemptThreshold"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lockoutTimeMinutes"))) { #optional property not found
            $LockoutTimeMinutes = $null
        } else {
            $LockoutTimeMinutes = $JsonParameters.PSobject.Properties["lockoutTimeMinutes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usageCertRequired"))) { #optional property not found
            $UsageCertRequired = $null
        } else {
            $UsageCertRequired = $JsonParameters.PSobject.Properties["usageCertRequired"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "adminStrongAuthRequired"))) { #optional property not found
            $AdminStrongAuthRequired = $null
        } else {
            $AdminStrongAuthRequired = $JsonParameters.PSobject.Properties["adminStrongAuthRequired"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enableExternalPasswordChange"))) { #optional property not found
            $EnableExternalPasswordChange = $null
        } else {
            $EnableExternalPasswordChange = $JsonParameters.PSobject.Properties["enableExternalPasswordChange"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enablePasswordReplay"))) { #optional property not found
            $EnablePasswordReplay = $null
        } else {
            $EnablePasswordReplay = $JsonParameters.PSobject.Properties["enablePasswordReplay"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enableAutomaticPasswordReplay"))) { #optional property not found
            $EnableAutomaticPasswordReplay = $null
        } else {
            $EnableAutomaticPasswordReplay = $JsonParameters.PSobject.Properties["enableAutomaticPasswordReplay"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notifyAuthenticationSettingChange"))) { #optional property not found
            $NotifyAuthenticationSettingChange = $null
        } else {
            $NotifyAuthenticationSettingChange = $JsonParameters.PSobject.Properties["notifyAuthenticationSettingChange"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "netmasks"))) { #optional property not found
            $Netmasks = $null
        } else {
            $Netmasks = $JsonParameters.PSobject.Properties["netmasks"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "countryCodes"))) { #optional property not found
            $CountryCodes = $null
        } else {
            $CountryCodes = $JsonParameters.PSobject.Properties["countryCodes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "whiteList"))) { #optional property not found
            $WhiteList = $null
        } else {
            $WhiteList = $JsonParameters.PSobject.Properties["whiteList"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usernameEmptyText"))) { #optional property not found
            $UsernameEmptyText = $null
        } else {
            $UsernameEmptyText = $JsonParameters.PSobject.Properties["usernameEmptyText"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usernameLabel"))) { #optional property not found
            $UsernameLabel = $null
        } else {
            $UsernameLabel = $JsonParameters.PSobject.Properties["usernameLabel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enableAutomationGeneration"))) { #optional property not found
            $EnableAutomationGeneration = $null
        } else {
            $EnableAutomationGeneration = $JsonParameters.PSobject.Properties["enableAutomationGeneration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailTestMode"))) { #optional property not found
            $EmailTestMode = $null
        } else {
            $EmailTestMode = $JsonParameters.PSobject.Properties["emailTestMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailTestAddress"))) { #optional property not found
            $EmailTestAddress = $null
        } else {
            $EmailTestAddress = $JsonParameters.PSobject.Properties["emailTestAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "orgType"))) { #optional property not found
            $OrgType = $null
        } else {
            $OrgType = $JsonParameters.PSobject.Properties["orgType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "passwordReplayState"))) { #optional property not found
            $PasswordReplayState = $null
        } else {
            $PasswordReplayState = $JsonParameters.PSobject.Properties["passwordReplayState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "systemNotificationConfig"))) { #optional property not found
            $SystemNotificationConfig = $null
        } else {
            $SystemNotificationConfig = $JsonParameters.PSobject.Properties["systemNotificationConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "redirectPatterns"))) { #optional property not found
            $RedirectPatterns = $null
        } else {
            $RedirectPatterns = $JsonParameters.PSobject.Properties["redirectPatterns"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxClusterDebugHours"))) { #optional property not found
            $MaxClusterDebugHours = $null
        } else {
            $MaxClusterDebugHours = $JsonParameters.PSobject.Properties["maxClusterDebugHours"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "brandName"))) { #optional property not found
            $BrandName = $null
        } else {
            $BrandName = $JsonParameters.PSobject.Properties["brandName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "logo"))) { #optional property not found
            $Logo = $null
        } else {
            $Logo = $JsonParameters.PSobject.Properties["logo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailFromAddress"))) { #optional property not found
            $EmailFromAddress = $null
        } else {
            $EmailFromAddress = $JsonParameters.PSobject.Properties["emailFromAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "standardLogoUrl"))) { #optional property not found
            $StandardLogoUrl = $null
        } else {
            $StandardLogoUrl = $JsonParameters.PSobject.Properties["standardLogoUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "narrowLogoUrl"))) { #optional property not found
            $NarrowLogoUrl = $null
        } else {
            $NarrowLogoUrl = $JsonParameters.PSobject.Properties["narrowLogoUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "actionButtonColor"))) { #optional property not found
            $ActionButtonColor = $null
        } else {
            $ActionButtonColor = $JsonParameters.PSobject.Properties["actionButtonColor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "activeLinkColor"))) { #optional property not found
            $ActiveLinkColor = $null
        } else {
            $ActiveLinkColor = $JsonParameters.PSobject.Properties["activeLinkColor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "navigationColor"))) { #optional property not found
            $NavigationColor = $null
        } else {
            $NavigationColor = $JsonParameters.PSobject.Properties["navigationColor"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "scriptName" = ${ScriptName}
            "mode" = ${Mode}
            "numQuestions" = ${NumQuestions}
            "status" = ${Status}
            "maxRegisteredUsers" = ${MaxRegisteredUsers}
            "pod" = ${Pod}
            "pwdResetPersonalPhone" = ${PwdResetPersonalPhone}
            "pwdResetPersonalEmail" = ${PwdResetPersonalEmail}
            "pwdResetKba" = ${PwdResetKba}
            "pwdResetEmail" = ${PwdResetEmail}
            "pwdResetDuo" = ${PwdResetDuo}
            "pwdResetPhoneMask" = ${PwdResetPhoneMask}
            "authErrorText" = ${AuthErrorText}
            "strongAuthKba" = ${StrongAuthKba}
            "strongAuthPersonalPhone" = ${StrongAuthPersonalPhone}
            "strongAuthPersonalEmail" = ${StrongAuthPersonalEmail}
            "integrations" = ${Integrations}
            "productName" = ${ProductName}
            "kbaReqForAuthn" = ${KbaReqForAuthn}
            "kbaReqAnswers" = ${KbaReqAnswers}
            "lockoutAttemptThreshold" = ${LockoutAttemptThreshold}
            "lockoutTimeMinutes" = ${LockoutTimeMinutes}
            "usageCertRequired" = ${UsageCertRequired}
            "adminStrongAuthRequired" = ${AdminStrongAuthRequired}
            "enableExternalPasswordChange" = ${EnableExternalPasswordChange}
            "enablePasswordReplay" = ${EnablePasswordReplay}
            "enableAutomaticPasswordReplay" = ${EnableAutomaticPasswordReplay}
            "notifyAuthenticationSettingChange" = ${NotifyAuthenticationSettingChange}
            "netmasks" = ${Netmasks}
            "countryCodes" = ${CountryCodes}
            "whiteList" = ${WhiteList}
            "usernameEmptyText" = ${UsernameEmptyText}
            "usernameLabel" = ${UsernameLabel}
            "enableAutomationGeneration" = ${EnableAutomationGeneration}
            "emailTestMode" = ${EmailTestMode}
            "emailTestAddress" = ${EmailTestAddress}
            "orgType" = ${OrgType}
            "passwordReplayState" = ${PasswordReplayState}
            "systemNotificationConfig" = ${SystemNotificationConfig}
            "redirectPatterns" = ${RedirectPatterns}
            "maxClusterDebugHours" = ${MaxClusterDebugHours}
            "brandName" = ${BrandName}
            "logo" = ${Logo}
            "emailFromAddress" = ${EmailFromAddress}
            "standardLogoUrl" = ${StandardLogoUrl}
            "narrowLogoUrl" = ${NarrowLogoUrl}
            "actionButtonColor" = ${ActionButtonColor}
            "activeLinkColor" = ${ActiveLinkColor}
            "navigationColor" = ${NavigationColor}
        }

        return $PSO
    }

}

