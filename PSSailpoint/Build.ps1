#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

function Get-FunctionsToExport {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true)]
        [ValidateNotNullOrEmpty()]
        [Alias('FullName')]
        $Path
    )

    Process {
        $Token = $null
        $ParserErr = $null

        $Ast = [System.Management.Automation.Language.Parser]::ParseFile(
            $Path,
            [ref]$Token,
            [ref]$ParserErr
        )

        if ($ParserErr) {
            throw $ParserErr
        }
        else {
            foreach ($name in 'Begin', 'Process', 'End') {
                foreach ($Statement in $Ast."${name}Block".Statements) {
                    if (
                        [String]::IsNullOrWhiteSpace($Statement.Name) -or
                        $Statement.Extent.ToString() -notmatch
                        ('function\W+{0}' -f $Statement.Name)
                    ) {
                        continue
                    }

                    $Statement.Name
                }
            }
        }
    }
}

$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
$FunctionPath = "$PSScriptRoot/v3/src/PSSailpoint/Api", "$PSScriptRoot/v3/src/PSSailpoint/Model", "$PSScriptRoot/v3/src/PSSailpoint/Client", "$PSScriptRoot/beta/src/PSSailpointBeta/Api", "$PSScriptRoot/beta/src/PSSailpointBeta/Model", "$PSScriptRoot/beta/src/PSSailpointBeta/Client", "$PSScriptRoot" | ForEach-Object { $_ }

$Manifest = @{
    Path              = "$ScriptDir\PSSailpoint.psd1"

    Author            = 'Sailpoint Developer Relations'
    CompanyName       = 'SailPoint Technologies'
    Description       = 'PSSailpoint - the PowerShell module for IdentityNow'

    ModuleVersion     = '1.2.2'

    RootModule        = 'PSSailpoint.psm1'
    Guid              = '7A197170-97E8-4DCD-A171-271D4AEC2F36' # Has to be static, otherwise each new build will be considered different module

    PowerShellVersion = '6.2'

    FunctionsToExport = $FunctionPath | Get-ChildItem -Filter *.ps1 | Get-FunctionsToExport

    VariablesToExport = @()
    AliasesToExport   = @()
    CmdletsToExport   = @()

}

New-ModuleManifest @Manifest
