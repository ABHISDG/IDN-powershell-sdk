#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum RequestableObjectRequestStatus.

.DESCRIPTION

Status indicating the ability of an access request for the object to be made by or on behalf of the identity specified by *identity-id*. *AVAILABLE* indicates the object is available to request. *PENDING* indicates the object is unavailable because the identity has a pending request in flight. *ASSIGNED* indicates the object is unavailable because the identity already has the indicated role or access profile. If *identity-id* is not specified (allowed only for admin users), then status will be *AVAILABLE* for all results.
#>

enum RequestableObjectRequestStatus {
    # enum value: "AVAILABLE"
    AVAILABLE
    # enum value: "PENDING"
    PENDING
    # enum value: "ASSIGNED"
    ASSIGNED
    # enum value: "null"
    null
}

