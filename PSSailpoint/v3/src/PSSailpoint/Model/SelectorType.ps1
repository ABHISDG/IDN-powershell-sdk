#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum SelectorType.

.DESCRIPTION

Enum representing the currently supported selector types.  LIST - the *values* array contains one or more distinct values.  RANGE - the *values* array contains two values: the start and end of the range, inclusive.  Additional values may be added in the future without notice. 
#>

enum SelectorType {
    # enum value: "LIST"
    LIST
    # enum value: "RANGE"
    RANGE
}

