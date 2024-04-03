#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

This is used for representing email configuration for a lifecycle state

.PARAMETER NotifyManagers
If true, then the manager is notified of the lifecycle state change.
.PARAMETER NotifyAllAdmins
If true, then all the admins are notified of the lifecycle state change.
.PARAMETER NotifySpecificUsers
If true, then the users specified in ""emailAddressList"" below are notified of lifecycle state change.
.PARAMETER EmailAddressList
List of user email addresses. If ""notifySpecificUsers"" option is true, then these users are notified of lifecycle state change.
.OUTPUTS

EmailNotificationOption<PSCustomObject>
#>

function Initialize-EmailNotificationOption {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${NotifyManagers},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${NotifyAllAdmins},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${NotifySpecificUsers},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${EmailAddressList}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => EmailNotificationOption' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "notifyManagers" = ${NotifyManagers}
            "notifyAllAdmins" = ${NotifyAllAdmins}
            "notifySpecificUsers" = ${NotifySpecificUsers}
            "emailAddressList" = ${EmailAddressList}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailNotificationOption<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailNotificationOption<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailNotificationOption<PSCustomObject>
#>
function ConvertFrom-JsonToEmailNotificationOption {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => EmailNotificationOption' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EmailNotificationOption
        $AllProperties = ("notifyManagers", "notifyAllAdmins", "notifySpecificUsers", "emailAddressList")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notifyManagers"))) { #optional property not found
            $NotifyManagers = $null
        } else {
            $NotifyManagers = $JsonParameters.PSobject.Properties["notifyManagers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notifyAllAdmins"))) { #optional property not found
            $NotifyAllAdmins = $null
        } else {
            $NotifyAllAdmins = $JsonParameters.PSobject.Properties["notifyAllAdmins"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notifySpecificUsers"))) { #optional property not found
            $NotifySpecificUsers = $null
        } else {
            $NotifySpecificUsers = $JsonParameters.PSobject.Properties["notifySpecificUsers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddressList"))) { #optional property not found
            $EmailAddressList = $null
        } else {
            $EmailAddressList = $JsonParameters.PSobject.Properties["emailAddressList"].value
        }

        $PSO = [PSCustomObject]@{
            "notifyManagers" = ${NotifyManagers}
            "notifyAllAdmins" = ${NotifyAllAdmins}
            "notifySpecificUsers" = ${NotifySpecificUsers}
            "emailAddressList" = ${EmailAddressList}
        }

        return $PSO
    }

}

