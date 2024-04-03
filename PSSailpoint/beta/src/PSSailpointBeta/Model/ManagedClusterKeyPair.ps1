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

Managed Cluster key pair for Cluster

.PARAMETER PublicKey
ManagedCluster publicKey
.PARAMETER PublicKeyThumbprint
ManagedCluster publicKeyThumbprint
.PARAMETER PublicKeyCertificate
ManagedCluster publicKeyCertificate
.OUTPUTS

ManagedClusterKeyPair<PSCustomObject>
#>

function Initialize-BetaManagedClusterKeyPair {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PublicKey},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PublicKeyThumbprint},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PublicKeyCertificate}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaManagedClusterKeyPair' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "publicKey" = ${PublicKey}
            "publicKeyThumbprint" = ${PublicKeyThumbprint}
            "publicKeyCertificate" = ${PublicKeyCertificate}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ManagedClusterKeyPair<PSCustomObject>

.DESCRIPTION

Convert from JSON to ManagedClusterKeyPair<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ManagedClusterKeyPair<PSCustomObject>
#>
function ConvertFrom-BetaJsonToManagedClusterKeyPair {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaManagedClusterKeyPair' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaManagedClusterKeyPair
        $AllProperties = ("publicKey", "publicKeyThumbprint", "publicKeyCertificate")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "publicKey"))) { #optional property not found
            $PublicKey = $null
        } else {
            $PublicKey = $JsonParameters.PSobject.Properties["publicKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "publicKeyThumbprint"))) { #optional property not found
            $PublicKeyThumbprint = $null
        } else {
            $PublicKeyThumbprint = $JsonParameters.PSobject.Properties["publicKeyThumbprint"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "publicKeyCertificate"))) { #optional property not found
            $PublicKeyCertificate = $null
        } else {
            $PublicKeyCertificate = $JsonParameters.PSobject.Properties["publicKeyCertificate"].value
        }

        $PSO = [PSCustomObject]@{
            "publicKey" = ${PublicKey}
            "publicKeyThumbprint" = ${PublicKeyThumbprint}
            "publicKeyCertificate" = ${PublicKeyCertificate}
        }

        return $PSO
    }

}

