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

No description available.

.PARAMETER Expression
A comparison statement that follows the structure of `ValueA eq ValueB` where `ValueA` and `ValueB` are static strings or outputs of other transforms.   The `eq` operator is the only valid comparison
.PARAMETER PositiveCondition
The output of the transform if the expression evalutes to true
.PARAMETER NegativeCondition
The output of the transform if the expression evalutes to false
.PARAMETER RequiresPeriodicRefresh
A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process
.PARAMETER VarInput
This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI.
.OUTPUTS

Conditional<PSCustomObject>
#>

function Initialize-BetaConditional {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Expression},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PositiveCondition},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NegativeCondition},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequiresPeriodicRefresh} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${VarInput}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaConditional' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Expression) {
            throw "invalid value for 'Expression', 'Expression' cannot be null."
        }

        if (!$PositiveCondition) {
            throw "invalid value for 'PositiveCondition', 'PositiveCondition' cannot be null."
        }

        if (!$NegativeCondition) {
            throw "invalid value for 'NegativeCondition', 'NegativeCondition' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "expression" = ${Expression}
            "positiveCondition" = ${PositiveCondition}
            "negativeCondition" = ${NegativeCondition}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
            "input" = ${VarInput}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Conditional<PSCustomObject>

.DESCRIPTION

Convert from JSON to Conditional<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Conditional<PSCustomObject>
#>
function ConvertFrom-BetaJsonToConditional {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaConditional' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaConditional
        $AllProperties = ("expression", "positiveCondition", "negativeCondition", "requiresPeriodicRefresh", "input")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'expression' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expression"))) {
            throw "Error! JSON cannot be serialized due to the required property 'expression' missing."
        } else {
            $Expression = $JsonParameters.PSobject.Properties["expression"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "positiveCondition"))) {
            throw "Error! JSON cannot be serialized due to the required property 'positiveCondition' missing."
        } else {
            $PositiveCondition = $JsonParameters.PSobject.Properties["positiveCondition"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "negativeCondition"))) {
            throw "Error! JSON cannot be serialized due to the required property 'negativeCondition' missing."
        } else {
            $NegativeCondition = $JsonParameters.PSobject.Properties["negativeCondition"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requiresPeriodicRefresh"))) { #optional property not found
            $RequiresPeriodicRefresh = $null
        } else {
            $RequiresPeriodicRefresh = $JsonParameters.PSobject.Properties["requiresPeriodicRefresh"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "input"))) { #optional property not found
            $VarInput = $null
        } else {
            $VarInput = $JsonParameters.PSobject.Properties["input"].value
        }

        $PSO = [PSCustomObject]@{
            "expression" = ${Expression}
            "positiveCondition" = ${PositiveCondition}
            "negativeCondition" = ${NegativeCondition}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
            "input" = ${VarInput}
        }

        return $PSO
    }

}

