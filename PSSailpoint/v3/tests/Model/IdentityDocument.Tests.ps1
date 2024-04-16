#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSSailpoint' -name 'IdentityDocument' {
    Context 'IdentityDocument' {
        It 'Initialize-IdentityDocument' {
            # a simple test to create an object
            #$NewObject = Initialize-IdentityDocument -Id "TEST_VALUE" -Name "TEST_VALUE" -Type "TEST_VALUE" -DisplayName "TEST_VALUE" -FirstName "TEST_VALUE" -LastName "TEST_VALUE" -Email "TEST_VALUE" -Created "TEST_VALUE" -Modified "TEST_VALUE" -Phone "TEST_VALUE" -Synced "TEST_VALUE" -Inactive "TEST_VALUE" -Protected "TEST_VALUE" -Status "TEST_VALUE" -EmployeeNumber "TEST_VALUE" -Manager "TEST_VALUE" -IsManager "TEST_VALUE" -IdentityProfile "TEST_VALUE" -Source "TEST_VALUE" -Attributes "TEST_VALUE" -ProcessingState "TEST_VALUE" -ProcessingDetails "TEST_VALUE" -Accounts "TEST_VALUE" -AccountCount "TEST_VALUE" -Apps "TEST_VALUE" -AppCount "TEST_VALUE" -Access "TEST_VALUE" -AccessCount "TEST_VALUE" -EntitlementCount "TEST_VALUE" -RoleCount "TEST_VALUE" -AccessProfileCount "TEST_VALUE" -Owns "TEST_VALUE" -OwnsCount "TEST_VALUE" -Tags "TEST_VALUE"
            #$NewObject | Should -BeOfType IdentityDocument
            #$NewObject.property | Should -Be 0
        }
    }
}
