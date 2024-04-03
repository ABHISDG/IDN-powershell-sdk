#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

The results of the most recent health check.

.PARAMETER Message
Detailed message of the result of the health check.
.PARAMETER ResultType
The type of the health check result.
.PARAMETER Status
The status of the health check.
.OUTPUTS

VAClusterStatusChangeEventHealthCheckResult<PSCustomObject>
#>

function Initialize-BetaVAClusterStatusChangeEventHealthCheckResult {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ResultType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Succeeded", "Failed")]
        [PSCustomObject]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaVAClusterStatusChangeEventHealthCheckResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Message) {
            throw "invalid value for 'Message', 'Message' cannot be null."
        }

        if (!$ResultType) {
            throw "invalid value for 'ResultType', 'ResultType' cannot be null."
        }

        if (!$Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "resultType" = ${ResultType}
            "status" = ${Status}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VAClusterStatusChangeEventHealthCheckResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to VAClusterStatusChangeEventHealthCheckResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VAClusterStatusChangeEventHealthCheckResult<PSCustomObject>
#>
function ConvertFrom-BetaJsonToVAClusterStatusChangeEventHealthCheckResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaVAClusterStatusChangeEventHealthCheckResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaVAClusterStatusChangeEventHealthCheckResult
        $AllProperties = ("message", "resultType", "status")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'message' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) {
            throw "Error! JSON cannot be serialized due to the required property 'message' missing."
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "resultType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'resultType' missing."
        } else {
            $ResultType = $JsonParameters.PSobject.Properties["resultType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "resultType" = ${ResultType}
            "status" = ${Status}
        }

        return $PSO
    }

}

