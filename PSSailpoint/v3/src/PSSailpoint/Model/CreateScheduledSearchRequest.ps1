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

No description available.

.PARAMETER Name
The name of the scheduled search. 
.PARAMETER Description
The description of the scheduled search. 
.PARAMETER SavedSearchId
The ID of the saved search that will be executed.
.PARAMETER Schedule
No description available.
.PARAMETER Recipients
A list of identities that should receive the scheduled search report via email.
.PARAMETER Enabled
Indicates if the scheduled search is enabled. 
.PARAMETER EmailEmptyResults
Indicates if email generation should occur when search returns no results. 
.PARAMETER DisplayQueryDetails
Indicates if the generated email should include the query and search results preview (which could include PII). 
.OUTPUTS

CreateScheduledSearchRequest<PSCustomObject>
#>

function Initialize-CreateScheduledSearchRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SavedSearchId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Schedule},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Recipients},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${EmailEmptyResults} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${DisplayQueryDetails} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => CreateScheduledSearchRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$SavedSearchId) {
            throw "invalid value for 'SavedSearchId', 'SavedSearchId' cannot be null."
        }

        if (!$Schedule) {
            throw "invalid value for 'Schedule', 'Schedule' cannot be null."
        }

        if (!$Recipients) {
            throw "invalid value for 'Recipients', 'Recipients' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "savedSearchId" = ${SavedSearchId}
            "schedule" = ${Schedule}
            "recipients" = ${Recipients}
            "enabled" = ${Enabled}
            "emailEmptyResults" = ${EmailEmptyResults}
            "displayQueryDetails" = ${DisplayQueryDetails}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateScheduledSearchRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateScheduledSearchRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateScheduledSearchRequest<PSCustomObject>
#>
function ConvertFrom-JsonToCreateScheduledSearchRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => CreateScheduledSearchRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CreateScheduledSearchRequest
        $AllProperties = ("name", "description", "savedSearchId", "created", "modified", "schedule", "recipients", "enabled", "emailEmptyResults", "displayQueryDetails")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'savedSearchId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "savedSearchId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'savedSearchId' missing."
        } else {
            $SavedSearchId = $JsonParameters.PSobject.Properties["savedSearchId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "schedule"))) {
            throw "Error! JSON cannot be serialized due to the required property 'schedule' missing."
        } else {
            $Schedule = $JsonParameters.PSobject.Properties["schedule"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipients"))) {
            throw "Error! JSON cannot be serialized due to the required property 'recipients' missing."
        } else {
            $Recipients = $JsonParameters.PSobject.Properties["recipients"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailEmptyResults"))) { #optional property not found
            $EmailEmptyResults = $null
        } else {
            $EmailEmptyResults = $JsonParameters.PSobject.Properties["emailEmptyResults"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayQueryDetails"))) { #optional property not found
            $DisplayQueryDetails = $null
        } else {
            $DisplayQueryDetails = $JsonParameters.PSobject.Properties["displayQueryDetails"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "savedSearchId" = ${SavedSearchId}
            "created" = ${Created}
            "modified" = ${Modified}
            "schedule" = ${Schedule}
            "recipients" = ${Recipients}
            "enabled" = ${Enabled}
            "emailEmptyResults" = ${EmailEmptyResults}
            "displayQueryDetails" = ${DisplayQueryDetails}
        }

        return $PSO
    }

}

