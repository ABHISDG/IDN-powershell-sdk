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

.PARAMETER Json

JSON object

.OUTPUTS

IdentityAccess<PSCustomObject>
#>
function ConvertFrom-JsonToIdentityAccess {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match AccessProfileEntitlement defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToAccessProfileEntitlement $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "AccessProfileEntitlement"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'AccessProfileEntitlement' defined in oneOf (IdentityAccess). Proceeding to the next one if any."
        }

        # try to match AccessProfileRole defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToAccessProfileRole $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "AccessProfileRole"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'AccessProfileRole' defined in oneOf (IdentityAccess). Proceeding to the next one if any."
        }

        # try to match AccessProfileSummary defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToAccessProfileSummary $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "AccessProfileSummary"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'AccessProfileSummary' defined in oneOf (IdentityAccess). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([AccessProfileEntitlement, AccessProfileRole, AccessProfileSummary]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("AccessProfileEntitlement", "AccessProfileRole", "AccessProfileSummary")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([AccessProfileEntitlement, AccessProfileRole, AccessProfileSummary]). JSON Payload: $($Json)"
        }
    }
}

