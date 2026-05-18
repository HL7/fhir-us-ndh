Mapping: NdhToPlanNetEndpoint
Source: ndh-Endpoint
Target: "http://hl7.org/fhir/us/davinci-pdex-plan-net"
Id: ndh-to-plannet-endpoint
Title: "NDH to Plan-Net Endpoint Mapping"
Description: "Maps NDH Endpoint profile to the Plan-Net Endpoint profile, noting elements not present in Plan-Net."
* -> "Endpoint" "Top-level mapping from NDH to Plan-Net"
* extension[implementation-guide] -> "Not in Plan-Net" ", NDH-specific"
* extension[secure-exchange-artifacts] -> "Not in Plan-Net" ", NDH-specific"
* extension[security-details] -> "Not in Plan-Net" ", NDH-specific"
* extension[dynamic-registration] -> "Not in Plan-Net" ", NDH-specific"
* extension[associated-servers] -> "Not in Plan-Net" ", NDH-specific"
* extension[access-control-mechanism] -> "Not in Plan-Net" ", NDH-specific"
* extension[endpoint-rank] -> "Not in Plan-Net" ", NDH-specific"
* extension[ihe-specific-connection-type] -> "Not in Plan-Net" ", NDH-specific"
* extension[verification-status] -> "Not in Plan-Net" ", NDH-specific"
* extension[testing-certification] -> "Not in Plan-Net" ", NDH-specific"
* extension[environmentType] -> "Not in Plan-Net" ", NDH-specific"
* managingOrganization -> "Endpoint.managingOrganization" ", using NDH Organization Profile"
* contact.value -> "Endpoint.contact.value"
* contact.system -> "Endpoint.contact.system"
* contact.extension[contactpoint-availabletime] -> "Not in Plan-Net" ", NDH-specific"
* contact.extension[via-intermediary] -> "Not in Plan-Net" ", NDH-specific"
* identifier -> "Endpoint.identifier"
* identifier.extension[identifier-status] -> "Not in Plan-Net" ", NDH-specific"
* identifier.assigner -> "Endpoint.identifier.assigner" ", using NDH Organization Profile"
* meta.lastUpdated -> "Endpoint.meta.lastUpdated" ", is required in NDH"

Instance: PlanNetToNdhEndpointSM
InstanceOf: StructureMap
Title: "Plan-Net to NDH Endpoint Mapping StructureMap"
Description: "This StructureMap instance represents the mapping from the Plan-Net Endpoint profile to the NDH Endpoint profile. It serves as a reference for implementers to understand how Plan-Net Endpoint resources should be transformed to align with the NDH Endpoint profile."
Usage: #definition
* status = #active
* experimental = false
* url = "http://hl7.org/fhir/us/ndh/StructureMap/PlanNetToNdhEndpointSM"
* name = "PlanNetToNdhEndpoint"
* structure[+].url = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Endpoint"
* structure[=].mode = #source
* structure[=].alias = "Source"
* structure[+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Endpoint"
* structure[=].mode = #target
* structure[=].alias = "Target"
* group[+].name = "PlanNetToNdhEndpointGroup"
* group[=].typeMode = #types
* group[=].documentation = "Maps Plan-Net Endpoint to NDH Endpoint. NDH-specific extensions are not derivable from Plan-Net and are intentionally not mapped."
* group[=].input[+].name = "src"
* group[=].input[=].mode = #source
* group[=].input[=].type = "Endpoint"
* group[=].input[+].name = "tgt"
* group[=].input[=].mode = #target
* group[=].input[=].type = "Endpoint"
* group[=].rule[+].name = "copyManagingOrganization"
* group[=].rule[=].documentation = "Endpoint.managingOrganization maps directly."
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "managingOrganization"
* group[=].rule[=].source[=].variable = "vManagingOrg"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].element = "managingOrganization"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "vManagingOrg"
* group[=].rule[+].name = "copyContact"
* group[=].rule[=].documentation = "Endpoint.contact.value and Endpoint.contact.system map directly."
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "contact"
* group[=].rule[=].source[=].variable = "vContactSrc"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].element = "contact"
* group[=].rule[=].target[=].variable = "vContactTgt"
* group[=].rule[=].rule[+].name = "copyContactValue"
* group[=].rule[=].rule[=].source[+].context = "vContactSrc"
* group[=].rule[=].rule[=].source[=].element = "value"
* group[=].rule[=].rule[=].source[=].variable = "vContactValue"
* group[=].rule[=].rule[=].target[+].context = "vContactTgt"
* group[=].rule[=].rule[=].target[=].element = "value"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueId = "vContactValue"
* group[=].rule[=].rule[+].name = "copyContactSystem"
* group[=].rule[=].rule[=].source[+].context = "vContactSrc"
* group[=].rule[=].rule[=].source[=].element = "system"
* group[=].rule[=].rule[=].source[=].variable = "vContactSystem"
* group[=].rule[=].rule[=].target[+].context = "vContactTgt"
* group[=].rule[=].rule[=].target[=].element = "system"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueId = "vContactSystem"
* group[=].rule[+].name = "copyIdentifier"
* group[=].rule[=].documentation = "Endpoint.identifier maps directly."
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "identifier"
* group[=].rule[=].source[=].variable = "vIdentifier"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].element = "identifier"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "vIdentifier"
* group[=].rule[+].name = "copyMeta"
* group[=].rule[=].documentation = "Endpoint.meta.lastUpdated maps directly."
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "meta"
* group[=].rule[=].source[=].variable = "vMetaSrc"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].element = "meta"
* group[=].rule[=].target[=].variable = "vMetaTgt"
* group[=].rule[=].rule[+].name = "copyMetaLastUpdated"
* group[=].rule[=].rule[=].source[+].context = "vMetaSrc"
* group[=].rule[=].rule[=].source[=].element = "lastUpdated"
* group[=].rule[=].rule[=].source[=].variable = "vLastUpdated"
* group[=].rule[=].rule[=].target[+].context = "vMetaTgt"
* group[=].rule[=].rule[=].target[=].element = "lastUpdated"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueId = "vLastUpdated"



Mapping: NdhtoPlanNetPractitioner
Source: ndh-Practitioner
Target: "http://hl7.org/fhir/us/davinci-pdex-plan-net"
Id: ndh-to-plannet-practitioner
Title: "NDH to Plan-Net Practitioner Mapping"
Description: "Maps NDH Practitioner profile to the Plan-Net Practitioner profile, noting elements not present in Plan-Net."
* -> "Practitioner" "Top-level mapping from NDH to Plan-Net"
* extension[us-core-race] -> "Not in Plan-Net" ", NDH-specific"
* extension[us-core-ethnicity] -> "Not in Plan-Net" ", NDH-specific"
* extension[endpoint] -> "Not in Plan-Net" ", NDH-specific"
* extension[accessibility] -> "Not in Plan-Net" ", NDH-specific"
* extension[rating] -> "Not in Plan-Net" ", NDH-specific"
* extension[verification-status] -> "Not in Plan-Net" ", NDH-specific"
* identifier -> "Practitioner.identifier"
* identifier.extension[identifier-status] -> "Not in Plan-Net" ", NDH-specific"
* qualification -> "Practitioner.qualification"
* qualification.identifier.extension[identifier-status] -> "Not in Plan-Net" ", NDH-specific"
* meta.lastUpdated -> "Practitioner.meta.lastUpdated" ", is required in NDH"

Mapping: NdhtoPlannNetOrganization
Source: ndh-Organization
Target: "http://hl7.org/fhir/us/davinci-pdex-plan-net"
Id: ndh-to-plannet-organization
Title: "NDH to Plan-Net Organization Mapping"
Description: "Maps NDH Organization profile to the Plan-Net Organization profile, noting elements not present
in Plan-Net."
* -> "Organization" "Top-level mapping from NDH to Plan-Net"    
* extension[rating] -> "Not in Plan-Net" ", NDH-specific"
* extension[paymentaccepted] -> "Not in Plan-Net" ", NDH-specific"
* extension[fundingSource] -> "Not in Plan-Net" ", NDH-specific"
* extension[insuranceplan] -> "Not in Plan-Net" ", NDH-specific"
* extension[verification-status] -> "Not in Plan-Net" ", NDH-specific"
* extension[logo] -> "Not in Plan-Net" ", NDH-specific"
* -> "Organization.extension[org-period]" "Not in NDH, only in Plan-Net"
* identifier -> "Organization.identifier"
* identifier.extension[identifier-status] -> "Not in Plan-Net" ", NDH-specific"
* meta.lastUpdated -> "Organization.meta.lastUpdated" ", is required in NDH"
* alias -> "Organization.alias"
* alias.extension[org-alias-type] -> "Not in Plan-Net" ", NDH-specific"
* alias.extension[org-alias-period] -> "Not in Plan-Net" ", NDH-specific"
* telecom -> "Organization.telecom"
* telecom.extension[language-speak] -> "Not in Plan-Net" ", NDH-specific"

Mapping: NdhtoPlanNetPractitionerRole
Source: ndh-PractitionerRole
Target: "http://hl7.org/fhir/us/davinci-pdex-plan-net"
Id: ndh-to-plannet-practitionerrole
Title: "NDH to Plan-Net PractitionerRole Mapping"
Description: "Maps NDH PractitionerRole profile to the Plan-Net PractitionerRole profile, noting elements not present in Plan-Net."
* -> "PractitionerRole" "Top-level mapping from NDH to Plan-Net"
* extension[rating] -> "Not in Plan-Net" ", NDH-specific"
* extension[network] -> "PractitionerRole.network" ", using NDH Network Profile"
* extension[verification-status] -> "Not in Plan-Net" ", NDH-specific"
* identifier -> "PractitionerRole.identifier"
* identifier.extension[identifier-status] -> "Not in Plan-Net" ", NDH-specific"
* meta.lastUpdated -> "PractitionerRole.meta.lastUpdated" ", is required in NDH"
* healthcareService -> "PractitionerRole.healthcareService" ", using NDH HealthcareService Profile"
* endpoint -> "PractitionerRole.endpoint" ", using NDH Endpoint Profile"


Mapping: NdhToPlanNetOrganizationAffiliation
Source: ndh-OrganizationAffiliation
Target: "http://hl7.org/fhir/us/davinci-pdex-plan-net"
Id: ndh-to-plannet-organizationaffiliation
Title: "NDH to Plan-Net OrganizationAffiliation Mapping"
Description: "Maps NDH OrganizationAffiliation profile to the Plan-Net OrganizationAffiliation profile, noting elements not present in Plan-Net."
* -> "OrganizationAffiliation" "Top-level mapping from NDH to Plan-Net"
* extension[verification-status] -> "Not in Plan-Net" ", NDH-specific"
* extension[logo] -> "Not in Plan-Net" ", NDH Network-specific"
* identifier -> "OrganizationAffiliation.identifier"
* identifier.extension[identifier-status] -> "Not in Plan-Net" ", NDH-specific"
* meta.lastUpdated -> "OrganizationAffiliation.meta.lastUpdated" ", is required in NDH"
* organization -> "OrganizationAffiliation.organization" ", using NDH Organization Profile"
* participatingOrganization -> "OrganizationAffiliation.participatingOrganization" ", using NDH Organization Profile"
* network -> "OrganizationAffiliation.network" ", using NDH Network Profile"
* location -> "OrganizationAffiliation.location" ", using NDH Location Profile"
* healthcareService -> "OrganizationAffiliation.healthcareService" ", using NDH HealthcareService Profile"
* telecom -> "OrganizationAffiliation.telecom"
* telecom.extension[contactpoint-availabletime] -> "Not in Plan-Net" ", NDH-specific"
* telecom.extension[via-intermediary] -> "Not in Plan-Net" ", NDH-specific"
* endpoint -> "OrganizationAffiliation.endpoint" ", using NDH Endpoint Profile"

Mapping: NdhToPlanNetLocation
Source: ndh-Location    
Target: "http://hl7.org/fhir/us/davinci-pdex-plan-net"
Id: ndh-to-plannet-location
Title: "NDH to Plan-Net Location Mapping"
Description: "Maps NDH Location profile to the Plan-Net Location profile, noting elements not present in Plan-Net."
* -> "Location" "Top-level mapping from NDH to Plan-Net"
* extension[verification-status] -> "Not in Plan-Net" ", NDH-specific"
* identifier -> "Location.identifier"
* identifier.extension[identifier-status] -> "Not in Plan-Net" ", NDH-specific"
* meta.lastUpdated -> "Location.meta.lastUpdated" ", is required in NDH"
* telecom -> "Location.telecom"
* telecom.extension[language-speak] -> "Not in Plan-Net" ", NDH-specific"
* endpoint -> "Location.endpoint" ", using NDH Endpoint Profile"

Mapping: NdhToPlanNetNetwork
Source: ndh-Network
Target: "http://hl7.org/fhir/us/davinci-pdex-plan-net"
Id: ndh-to-plannet-network
Title: "NDH to Plan-Net Network Mapping"
Description: "Maps NDH Network profile to the Plan-Net Network profile, noting elements not present in Plan-Net."
* -> "Network" "Top-level mapping from NDH to Plan-Net"
* extension[verification-status] -> "Not in Plan-Net" ", NDH-specific"
* extension[organization-period] -> "Not in Plan-Net" ", NDH-specific"
* identifier -> "Network.identifier"
* identifier.extension[identifier-status] -> "Not in Plan-Net" ", NDH-specific"
* meta.lastUpdated -> "Network.meta.lastUpdated" ", is required in NDH"
* endpoint -> "Network.endpoint" ", using NDH Endpoint Profile"

Mapping: NdhToPlanNetHealthcareService
Source: ndh-HealthcareService
Target: "http://hl7.org/fhir/us/davinci-pdex-plan-net"
Id: ndh-to-plannet-healthcareservice
Title: "NDH to Plan-Net HealthcareService Mapping"
Description: "Maps NDH HealthcareService profile to the Plan-Net HealthcareService profile, noting elements not present in Plan-Net."
* -> "HealthcareService" "Top-level mapping from NDH to Plan-Net"
* extension[verification-status] -> "Not in Plan-Net" ", NDH-specific"
* extension[rating] -> "Not in Plan-Net" ", NDH-specific"
* extension[paymentaccepted] -> "Not in Plan-Net" ", NDH-specific"
* extension[fundingSource] -> "Not in Plan-Net" ", NDH-specific"
* extension[requiredDocument] -> "Not in Plan-Net" ", NDH-specific"
* extension[network] -> "Not in Plan-Net" ", NDH-specific"
* extension[social-service-requirement] -> "Not in Plan-Net" ", NDH-specific"
* extension[logo] -> "Not in Plan-Net" ", NDH-specific"
* identifier -> "HealthcareService.identifier"
* identifier.extension[identifier-status] -> "Not in Plan-Net" ", NDH-specific"
* meta.lastUpdated -> "HealthcareService.meta.lastUpdated" ", is required in NDH"
* location -> "HealthcareService.location" ", using NDH Location Profile"
* telecom -> "HealthcareService.telecom"
* telecom.extension[language-speak] -> "Not in Plan-Net" ", NDH-specific"
* program -> "HealthcareService.program"
* program.extension[program-requirement] -> "Not in Plan-Net" ", NDH-specific"
* endpoint -> "HealthcareService.endpoint" ", using NDH Endpoint Profile"

Mapping: NdhToPlanNetInsurancePlan
Source: ndh-InsurancePlan
Target: "http://hl7.org/fhir/us/davinci-pdex-plan-net"
Id: ndh-to-plannet-insuranceplan
Title: "NDH to Plan-Net InsurancePlan Mapping"
Description: "Maps NDH InsurancePlan profile to the Plan-Net InsurancePlan profile, noting elements not present in Plan-Net."
* -> "InsurancePlan" "Top-level mapping from NDH to Plan-Net"
* extension[verification-status] -> "Not in Plan-Net" ", NDH-specific"
* identifier -> "InsurancePlan.identifier"
* identifier.extension[identifier-status] -> "Not in Plan-Net" ", NDH-specific"
* meta.lastUpdated -> "InsurancePlan.meta.lastUpdated" ", is required in NDH"
* endpoint -> "InsurancePlan.endpoint" ", using NDH Endpoint Profile"

Mapping: NdhToPlanNetVerification
Source: ndh-Verification
Target: "http://hl7.org/fhir/us/davinci-pdex-plan-net"
Id: ndh-to-plannet-verification
Title: "There is no mapping between NDH and Plan-Net for Verification structure, since Plan-Net does not have a direct equivalent."
Description: "Plan-Net does not have a direct equivalent for NDH Verification."
