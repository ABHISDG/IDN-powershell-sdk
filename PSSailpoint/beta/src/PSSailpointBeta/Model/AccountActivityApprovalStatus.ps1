#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum AccountActivityApprovalStatus.

.DESCRIPTION

The state of an approval status
#>

enum AccountActivityApprovalStatus {
    # enum value: "FINISHED"
    FINISHED
    # enum value: "REJECTED"
    REJECTED
    # enum value: "RETURNED"
    RETURNED
    # enum value: "EXPIRED"
    EXPIRED
    # enum value: "PENDING"
    PENDING
    # enum value: "CANCELED"
    CANCELED
    # enum value: "null"
    null
}

