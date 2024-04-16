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

Specifies which months of a schedule are active. Only valid for ANNUALLY schedule types. Examples:  On February and March: * type LIST * values ""2"", ""3""  Every 3 months, starting in January (quarterly): * type LIST * values ""1"" * interval 3  Every two months between July and December: * type RANGE * values ""7"", ""12"" * interval 2 

.PARAMETER Type
Enum type to specify months value
.PARAMETER Values
Values of the months based on the enum type mentioned above
.PARAMETER Interval
Interval between the cert generations
.OUTPUTS

ScheduleMonths<PSCustomObject>
#>

function Initialize-BetaScheduleMonths {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("LIST", "RANGE")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Values},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Interval}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaScheduleMonths' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Values) {
            throw "invalid value for 'Values', 'Values' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "values" = ${Values}
            "interval" = ${Interval}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ScheduleMonths<PSCustomObject>

.DESCRIPTION

Convert from JSON to ScheduleMonths<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ScheduleMonths<PSCustomObject>
#>
function ConvertFrom-BetaJsonToScheduleMonths {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaScheduleMonths' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaScheduleMonths
        $AllProperties = ("type", "values", "interval")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "values"))) {
            throw "Error! JSON cannot be serialized due to the required property 'values' missing."
        } else {
            $Values = $JsonParameters.PSobject.Properties["values"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "interval"))) { #optional property not found
            $Interval = $null
        } else {
            $Interval = $JsonParameters.PSobject.Properties["interval"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "values" = ${Values}
            "interval" = ${Interval}
        }

        return $PSO
    }

}

