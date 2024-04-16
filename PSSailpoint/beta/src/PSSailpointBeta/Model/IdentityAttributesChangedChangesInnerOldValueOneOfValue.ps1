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

.PARAMETER Json

JSON object

.OUTPUTS

IdentityAttributesChangedChangesInnerOldValueOneOfValue<PSCustomObject>
#>
function ConvertFrom-BetaJsonToIdentityAttributesChangedChangesInnerOldValueOneOfValue {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match Boolean defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToBoolean $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Boolean"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Boolean' defined in oneOf (BetaIdentityAttributesChangedChangesInnerOldValueOneOfValue). Proceeding to the next one if any."
        }

        # try to match Decimal defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToDecimal $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Decimal"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Decimal' defined in oneOf (BetaIdentityAttributesChangedChangesInnerOldValueOneOfValue). Proceeding to the next one if any."
        }

        # try to match Int32 defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToInt32 $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Int32"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Int32' defined in oneOf (BetaIdentityAttributesChangedChangesInnerOldValueOneOfValue). Proceeding to the next one if any."
        }

        # try to match String defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToString $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "String"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'String' defined in oneOf (BetaIdentityAttributesChangedChangesInnerOldValueOneOfValue). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([Boolean, Decimal, Int32, String]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("Boolean", "Decimal", "Int32", "String")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([Boolean, Decimal, Int32, String]). JSON Payload: $($Json)"
        }
    }
}

