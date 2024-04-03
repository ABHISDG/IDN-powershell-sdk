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

The value of the identity attribute after it changed.

.PARAMETER Json

JSON object

.OUTPUTS

IdentityAttributesChangedChangesInnerNewValue<PSCustomObject>
#>
function ConvertFrom-BetaJsonToIdentityAttributesChangedChangesInnerNewValue {
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
            Write-Debug "Failed to match 'Boolean' defined in oneOf (BetaIdentityAttributesChangedChangesInnerNewValue). Proceeding to the next one if any."
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
            Write-Debug "Failed to match 'String' defined in oneOf (BetaIdentityAttributesChangedChangesInnerNewValue). Proceeding to the next one if any."
        }

        # try to match String[] defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToString[] $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "String[]"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'String[]' defined in oneOf (BetaIdentityAttributesChangedChangesInnerNewValue). Proceeding to the next one if any."
        }

        # try to match System.Collections.Hashtable defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToSystem.Collections.Hashtable $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "System.Collections.Hashtable"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'System.Collections.Hashtable' defined in oneOf (BetaIdentityAttributesChangedChangesInnerNewValue). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([Boolean, String, String[], System.Collections.Hashtable]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("Boolean", "String", "String[]", "System.Collections.Hashtable")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([Boolean, String, String[], System.Collections.Hashtable]). JSON Payload: $($Json)"
        }
    }
}

