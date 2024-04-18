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

The value to be used for the operation, required for ""add"" and ""replace"" operations

.PARAMETER Json

JSON object

.OUTPUTS

JsonPatchOperationValue<PSCustomObject>
#>
function ConvertFrom-JsonToJsonPatchOperationValue {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match ArrayInner[] defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToArrayInner[] $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "ArrayInner[]"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'ArrayInner[]' defined in oneOf (JsonPatchOperationValue). Proceeding to the next one if any."
        }

        # try to match Boolean defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToBoolean $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Boolean"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Boolean' defined in oneOf (JsonPatchOperationValue). Proceeding to the next one if any."
        }

        # try to match Int32 defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToInt32 $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Int32"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Int32' defined in oneOf (JsonPatchOperationValue). Proceeding to the next one if any."
        }

        # try to match String defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToString $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "String"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'String' defined in oneOf (JsonPatchOperationValue). Proceeding to the next one if any."
        }

        # try to match SystemCollectionsHashtable defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToSystemCollectionsHashtable $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "SystemCollectionsHashtable"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'SystemCollectionsHashtable' defined in oneOf (JsonPatchOperationValue). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([ArrayInner[], Boolean, Int32, String, SystemCollectionsHashtable]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("ArrayInner[]", "Boolean", "Int32", "String", "SystemCollectionsHashtable")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([ArrayInner[], Boolean, Int32, String, SystemCollectionsHashtable]). JSON Payload: $($Json)"
        }
    }
}

