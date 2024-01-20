Instance: endpoint-usecase-type
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint usecase-type"
* status = #active
* code = #usecase-type
* name = "EndpointUsecaseTypeSearchParameter"
* description = "Select Endpoints that support the type of services indicated by a specific usecase-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-type"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-usecase').extension.where(url='endpointUsecasetype').value.ofType(CodeableConcept)"
//* xpath = "f:Endpoint/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-usecase']/f:extension[@url='endpointUsecasetype']/f:valueCodeableConcept/f:coding/f:code/@value"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: endpoint-nonfhir-usecase-type
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint nonfhir-usecase-type"
* status = #active
* code = #nonfhir-usecase-type
* name = "EndpointNonfhirUsecaseTypeSearchParameter"
* description = "Select Endpoints that support the type of services indicated by a specific nonfhir-usecase-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-nonfhir-usecase-type"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-non-fhir-usecase').extension.where(url='endpointUsecasetype').value.ofType(CodeableConcept)"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: endpoint-trust-framework-type
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint trust-framework-type"
* status = #active
* code = #trust-framework-type
* name = "EndpointTrustFrameworkTypeSearchParameter"
* description = "Select Endpoints that support the type of services indicated by a specific trust-framework-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-trust-framework-type"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-trustFramework').extension.where(url='trustFrameworkType').value.ofType(CodeableConcept)"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: endpoint-dynamic-registration-trust-profile
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint dynamic-registration-trust-profile"
* status = #active
* code = #dynamic-registration-trust-profile
* name = "EndpointDynamicRegistrationTrustProfileSearchParameter"
* description = "Select Endpoints that support the type of services indicated by a specific dynamic-registration-trust-profile"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-dynamic-registration-trust-profile"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-dynamicRegistration').extension.where(url='trustProfile').value.ofType(CodeableConcept)"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: endpoint-access-control-mechanism
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint access-control-mechanism"
* status = #active
* code = #access-control-mechanism
* name = "EndpointAccessControlMechanismSearchParameter"
* description = "Select Endpoints that support the type of services indicated by a specific access-control-mechanism"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-access-control-mechanism"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpointAccessControlMechanism').value.ofType(CodeableConcept)"
* xpathUsage = #normal
* multipleOr = true
//* multipleAnd = true
* modifier[+] = #text

Instance: endpoint-connection-type-version
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint connection-type-version"
* status = #active
* code = #connection-type-version
* name = "EndpointConnectionTypeVersionSearchParameter"
* description = "Select Endpoints that support the type of services indicated by a specific connection-type-version"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-connection-type-version"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-connection-type-version').value.ofType(CodeableConcept)"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: endpoint-ihe-connection-type
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint ihe-connection-type"
* status = #active
* code = #ihe-connection-type
* name = "EndpointIheConnectionTypeSearchParameter"
* description = "Select Endpoints that support the type of services indicated by a specific ihe-connection-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-ihe-connection-type"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-ihe-specific-connection-type').value.ofType(CodeableConcept)"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: endpoint-verification-status
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint verification-status"
* status = #active
* code = #verification-status
* name = "EndpointVerificationStatusSearchParameter"
* description = "Select Endpoints that support the type of services indicated by a specific verification-status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-verification-status"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-verification-status').value.ofType(CodeableConcept)"
* xpathUsage = #normal
* multipleOr = true
//* multipleAnd = true
* modifier[+] = #text


//--------------------------------------
// CareTeam
//--------------------------------------

Instance: careteam-endpoint
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam endpoint"
* status = #active
* code = #endpoint
* name = "CareTeamEndpointSearchParameter"
* description = "Select CareTeams with the specified endpoint"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-endpoint"
* base[0] = #CareTeam
* type = #reference
* expression = "CareTeam.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-reference').value.ofType(Reference)"
* xpathUsage = #normal
* target[+] = #Endpoint
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "connection-type"
* chain[+] = "connection-type-version"
* chain[+] = "organization"

Instance: careteam-location
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam location"
* status = #active
* code = #location
* name = "CareTeamLocationSearchParameter"
* description = "Select CareTeams operating at the specified location"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-location"
* base[0] = #CareTeam
* type = #reference
* expression = "CareTeam.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-location-reference').value.ofType(Reference)"
//* xpath = "f:CareTeam/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-location-reference']/f:extension/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* target[+] = #Location
* multipleOr = true
* multipleAnd = true
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "address"
* chain[+] = "organization"
* chain[+] = "type"

Instance: careteam-name
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam Name"
* status = #active
* code = #name
* name = "CareTeamNameSearchParameter"
* description = "Select CareTeams with the specified name or alias"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-name"
* base[0] = #CareTeam
* type = #string
//* expression = "CareTeam.name|CareTeam.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-careteam-alias').value as String"
* expression = "CareTeam.name|CareTeam.extension('http://hl7.org/fhir/StructureDefinition/careteam-alias').value.ofType(string)"
//* expression = "CareTeam.name|CareTeam.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-careteam-alias').value.ofType(string)"
//* xpath = "f:CareTeam/f:name | f:CareTeam/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-careteam-alias']/f:extension/f:valueString/@value"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #exact
* modifier[+] = #contains

Instance: careteam-organization
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam organization"
* status = #active
* code = #organization
* name = "CareTeamOrganizationSearchParameter"
* description = "Select CareTeams managed by the specified organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-organization"
* base[0] = #CareTeam
* type = #reference
* expression = "CareTeam.managingOrganization"
//* xpath = "f:CareTeam/f:managingOrganization"
* xpathUsage = #normal
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "address"
* chain[+] = "partof"
* chain[+] = "type"

Instance: careteam-service
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam service"
* status = #active
* code = #service
* name = "CareTeamServiceSearchParameter"
* description = "Select CareTeams providing the specified service"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-service"
* base[0] = #CareTeam
* type = #reference
* expression = "CareTeam.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-healthcareservice-reference').value.ofType(Reference)"
//* xpath = "f:CareTeam/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-healthcareservice-reference']/f:extension/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* target[+] = #HealthcareService
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "service-category"
* chain[+] = "organization"
* chain[+] = "location"

Instance: careteam-verification-status
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam verification-status"
* status = #active
* code = #verification-status
* name = "CareTeamVerificationStatusSearchParameter"
* description = "Select CareTeams with the specified verification-status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-verification-status"
* base[0] = #CareTeam
* type = #token
//* expression = "CareTeam.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-verification-status').value as CodeableConcept"
* expression = "CareTeam.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-verification-status').value.ofType(CodeableConcept)"
* xpathUsage = #normal
* multipleOr = true
//* multipleAnd = true
* modifier[+] = #text


//----------------------------------------------
// HealthcareService
//----------------------------------------------

Instance: healthcareservice-eligibility
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService eligibility"
* status = #active
* code = #eligibility
* name = "HealthcareServiceEligibilitySearchParameter"
* description = "Select HealthcareService with the specified eligibility"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-eligibility"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.eligibility.code"
//* xpath = "f:HealthcareService/f:eligibility/f:code"
* xpathUsage = #normal
* multipleAnd = true
* multipleOr = true
* modifier[+] = #text


Instance: healthcareservice-new-patient
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService new patient"
* status = #active
* code = #new-patient
* name = "HealthcareServiceNewPatientSearchParameter"
* description = "Select HealthcareService with the specified new patient"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url='acceptingPatients').value.ofType(CodeableConcept)"
//* xpath =  "f:HealthcareService/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients']/f:extension[@url='acceptingPatients']/f:valueCodeableConcept/f:coding/f:code/@value"
* xpathUsage = #normal
* multipleAnd = true
* multipleOr = true

Instance: healthcareservice-new-patient-from-network
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService new patient from network"
* status = #active
* code = #new-patient-from-network
* name = "HealthcareServiceNewPatientFromNetworkSearchParameter"
* description = "Select HealthcareService with the specified new patient from network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient-from-network"
* base[0] = #HealthcareService
* type = #reference
* expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url='fromNetwork').value.ofType(Reference)"
//* xpath =  "f:HealthcareService/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients']/f:extension[@url='fromNetwork']/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* chain[+] = "organization-identifier"
* chain[+] = "organization-name"
* chain[+] = "organization-partof"


Instance: healthcareservice-new-patient-and-from-network
InstanceOf: SearchParameter
Usage: #definition
Title: "Healthcareservice new-patient-and-from-network"
* status = #active
* code = #new-patient-and-from-network
* name = "HealthcareServiceNewPatientAndFromNetworkSearchParameter"
* description = "Select Healthcareservice of the specified new-patient and from-network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient-and-from-network"
* base[0] = #HealthcareService
* type = #composite
* expression = "HealthcareService.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients')"
* component[0].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient"
* component[=].expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url ='acceptingPatients').value.ofType(CodeableConcept)"
* component[+].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient-from-network"
* component[=].expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url='fromNetwork').value.ofType(Reference)"

Instance: healthcareservice-verification-status
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService verification status"
* status = #active
* code = #verification-status
* name = "HealthcareServiceVerificationStatusSearchParameter"
* description = "Select HealthcareService with the specified verification status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-verification-status"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-verification-status').value.ofType(CodeableConcept)"
* xpathUsage = #normal
//* multipleAnd = true
* multipleOr = true
* modifier[+] = #text


Instance: healthcareservice-social-service-age-group
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService social service requirement age group"
* status = #active
* code = #social-service-age-group
* name = "HealthcareServiceSocialServiceAgeGroupSearchParameter"
* description = "Select HealthcareService with the specified social service requirement age group"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-social-service-age-group"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement').extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-ndh-age-group').value.ofType(CodeableConcept)"
* xpathUsage = #normal  
* multipleAnd = true
* multipleOr = true
* modifier[+] = #text


Instance: healthcareservice-social-service-birthsex
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService social service requirement birthsex"
* status = #active
* code = #social-service-birthsex
* name = "HealthcareServiceSocialServiceBirthsexSearchParameter"
* description = "Select HealthcareService with the specified social service requirement birthsex"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-social-service-birthsex"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement').extension.where(url='birthsex').value.ofType(code)"
* xpathUsage = #normal  
* multipleAnd = true
* multipleOr = true
//* modifier[+] = #text


Instance: healthcareservice-social-service-gender-identity
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService social service requirement gender identity"
* status = #active
* code = #social-service-gender-identity
* name = "HealthcareServiceSocialServiceGenderIdentitySearchParameter"
* description = "Select HealthcareService with the specified social service requirement gender identity"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-social-service-gender-identity"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement').extension.where(url='gender-identity').value.ofType(CodeableConcept)"
* xpathUsage = #normal  
* multipleAnd = true
* multipleOr = true
* modifier[+] = #text


Instance: healthcareservice-social-service-employment-status
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService social service requirement employment status"
* status = #active
* code = #social-service-employment-status
* name = "HealthcareServiceSocialServiceEmploymentStatusSearchParameter"
* description = "Select HealthcareService with the specified social service requirement employment status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-social-service-employment-status"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement').extension.where(url='employment-status').value.ofType(CodeableConcept)"
* xpathUsage = #normal  
* multipleAnd = true
* multipleOr = true
* modifier[+] = #text


Instance: healthcareservice-social-service-insurance-status
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService social service requirement insurance status"
* status = #active
* code = #social-service-insurance-status
* name = "HealthcareServiceSocialServiceInsuranceStatusSearchParameter"
* description = "Select HealthcareService with the specified social service requirement insurance status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-social-service-insurance-status"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement').extension.where(url='insurance-status').value.ofType(CodeableConcept)"
* xpathUsage = #normal  
* multipleAnd = true
* multipleOr = true
* modifier[+] = #text


Instance: healthcareservice-social-service-va-status
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService social service requirement va status"
* status = #active
* code = #social-service-va-status
* name = "HealthcareServiceSocialServiceVaStatusSearchParameter"
* description = "Select HealthcareService with the specified social service requirement va status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-social-service-va-status"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement').extension.where(url='va-status').value.ofType(boolean)"
* xpathUsage = #normal  
* multipleAnd = true
* multipleOr = true
//* modifier[+] = #text


Instance: healthcareservice-social-service-preferred-language
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService social service requirement preferred language"
* status = #active
* code = #social-service-preferred-language
* name = "HealthcareServiceSocialServicePreferredLanguageSearchParameter"
* description = "Select HealthcareService with the specified social service requirement preferred language"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-social-service-preferred-language"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement').extension.where(url='preferred-language').value.ofType(CodeableConcept)"
* xpathUsage = #normal  
* multipleAnd = true
* multipleOr = true
* modifier[+] = #text




Instance: healthcareservice-program-requirement-age-group
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService program requirement age group"
* status = #active
* code = #program-requirement-age-group
* name = "HealthcareServiceProgramRequirementAgeGroupSearchParameter"
* description = "Select HealthcareService with the specified program requirement age group"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-program-requirement-age-group"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.program.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement').extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-ndh-age-group').value.ofType(CodeableConcept)"
* xpathUsage = #normal  
* multipleAnd = true
* multipleOr = true
* modifier[+] = #text


Instance: healthcareservice-program-requirement-birthsex
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService program requirement birthsex"
* status = #active
* code = #program-requirement-birthsex
* name = "HealthcareServiceProgramRequirementBirthsexSearchParameter"
* description = "Select HealthcareService with the specified program requirement birthsex"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-program-requirement-birthsex"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.program.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement').extension.where(url='birthsex').value.ofType(code)"
* xpathUsage = #normal  
* multipleAnd = true
* multipleOr = true
* modifier[+] = #text


Instance: healthcareservice-program-requirement-gender-identity
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService program requirement gender identity"
* status = #active
* code = #program-requirement-gender-identity
* name = "HealthcareServiceProgramRequirementGenderIdentitySearchParameter"
* description = "Select HealthcareService with the specified program requirement gender identity"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-program-requirement-gender-identity"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.program.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement').extension.where(url='gender-identity').value.ofType(CodeableConcept)"
* xpathUsage = #normal  
* multipleAnd = true
* multipleOr = true
* modifier[+] = #text


Instance: healthcareservice-program-requirement-employment-status
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService program requirement employment status"
* status = #active
* code = #program-requirement-employment-status
* name = "HealthcareServiceProgramRequirementEmploymentStatusSearchParameter"
* description = "Select HealthcareService with the specified program requirement employment status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-program-requirement-employment-status"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.program.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement').extension.where(url='employment-status').value.ofType(CodeableConcept)"
* xpathUsage = #normal  
* multipleAnd = true
* multipleOr = true
* modifier[+] = #text


Instance: healthcareservice-program-requirement-insurance-status
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService program requirement insurance status"
* status = #active
* code = #program-requirement-insurance-status
* name = "HealthcareServiceProgramRequirementInsuranceStatusSearchParameter"
* description = "Select HealthcareService with the specificed program requirement insurance status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-program-requirement-insurance-status"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.program.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement').extension.where(url='insurance-status').value.ofType(CodeableConcept)"
* xpathUsage = #normal  
* multipleAnd = true
* multipleOr = true
* modifier[+] = #text


Instance: healthcareservice-program-requirement-va-status
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService program requirement va status"
* status = #active
* code = #program-requirement-va-status
* name = "HealthcareServiceProgramRequirementVaStatusSearchParameter"
* description = "Select HealthcareService with the specified program requirement va status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-program-requirement-va-status"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.program.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement').extension.where(url='va-status').value.ofType(boolean)"
* xpathUsage = #normal  
* multipleAnd = true
* multipleOr = true
//* modifier[+] = #text


Instance: healthcareservice-program-requirement-preferred-language
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService program requirement preferred language"
* status = #active
* code = #program-requirement-preferred-language
* name = "HealthcareServiceProgramRequirementPreferredLanguageSearchParameter"
* description = "Select HealthcareService with the specified program requirement preferred language"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-program-requirement-preferred-language"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.program.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement').extension.where(url='preferred-language').value.ofType(CodeableConcept)"
* xpathUsage = #normal  
* multipleAnd = true
* multipleOr = true
* modifier[+] = #text

Instance: healthcareservice-network
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService network"
* status = #active
* code = #network
* name = "HealthcareServiceNetworkSearchParameter"
* description = "Select HealthcareService with the specified network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-network"
* base[0] = #HealthcareService
* type = #reference
* expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-network-reference').value.ofType(Reference)"
* xpathUsage = #normal
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true

//---------------------------------------
// InsurancePlan
//---------------------------------------
Instance: insuranceplan-coverage-area
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan coverage-area"
* status = #active
* code = #coverage-area
* name = "InsuranceCoverageAreaSearchParameter"
* description = "Select products that are offered in the specified location"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-area"
* base[0] = #InsurancePlan
* type = #reference
* target[+] = #Location
* expression = "InsurancePlan.coverageArea"
//* xpath = "f:InsurancePlan/f:coverageArea"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "contains"


Instance: insuranceplan-coverage-benefit-type
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan coverage-benefit-type"
* status = #active
* code = #coverage-benefit-type
* name = "InsuranceplanCoverageBenefitTypeSearchParameter"
* description = "Select products that are offered in the specified coverage-benefit-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-benefit-type"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.coverage.benefit.type"
//* xpath = "f:InsurancePlan/f:coverage/f:benefit/f:type"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text

Instance: insuranceplan-coverage-type
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan coverage-type"
* status = #active
* code = #coverage-type
* name = "InsuranceplanCoverageTypeSearchParameter"
* description = "Select products that are offered in the specified coverage-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-type"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.coverage.type"
//* xpath = "f:InsurancePlan/f:coverage/f:type"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text

Instance: insuranceplan-coverage-network
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan coverage-network"
* status = #active
* code = #coverage-network
* name = "InsuranceplanCoverageNetworkSearchParameter"
* description = "Select products offering covered benefits through the specified coverage network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-network"
* base[0] = #InsurancePlan
* type = #reference
* expression = "InsurancePlan.coverage.network"
//* xpath = "f:InsurancePlan/f:coverage/f:network"
* xpathUsage = #normal
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "partof"


Instance: insuranceplan-network
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan network"
* status = #active
* code = #network
* name = "InsuranceplanPlanNetworkSearchParameter"
* description = "Select products that are offered in the specified network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-network"
* base[0] = #InsurancePlan
* type = #reference
* expression = "InsurancePlan.network"
//* xpath = "f:InsurancePlan/f:network"
* xpathUsage = #normal
* target = #Organization
* multipleOr = true
* multipleAnd = true
* chain[0] = #identifier
* chain[+] = #name
* chain[+] = #partof

Instance: insuranceplan-plan-network
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-network"
* status = #active
* code = #plan-network
* name = "InsuranceplanPlanNetworkSearchParameter"
* description = "Select products that are offered in the specified plan-network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-network"
* base[0] = #InsurancePlan
* type = #reference
* expression = "InsurancePlan.plan.network"
//* xpath = "f:InsurancePlan/f:plan/f:network"
* xpathUsage = #normal
* target = #Organization
* multipleOr = true
* multipleAnd = true
* chain[0] = #identifier
* chain[+] = #name
* chain[+] = #partof

Instance: insuranceplan-plan-type
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-type"
* status = #active
* code = #plan-type
* name = "InsuranceplanPlanTypeSearchParameter"
* description = "Select products that are offered in the specified plan-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-type"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.plan.type"
//* xpath = "f:InsurancePlan/f:plan/f:type"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text

Instance: insuranceplan-verification-status
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan verification-status"
* status = #active
* code = #verification-status
* name = "InsuranceplanVerificationStatusSearchParameter"
* description = "Select InsurancePlan by verification status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-verification-status"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-verification-status').value.ofType(CodeableConcept)"
* xpathUsage = #normal
* multipleOr = true
//* multipleAnd = true
* modifier[0] = #text


//-------------------------------------------
// Location
//-------------------------------------------    

Instance: location-accessibility
InstanceOf: SearchParameter
Usage: #definition
Title: "Location accessibility"
* status = #active
* code = #accessibility
* name = "LocationAccessibilitySearchParameter"
* description = "Select Locations of the specified accessibility"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/location-accessibility"
* base[0] = #Location
* type = #token
* expression = "Location.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-accessibility').extension.value.ofType(CodeableConcept)"
//* xpath =  "f:Location/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-accessibility']/f:extention/f:valueCodeableConcept/f:coding/f:code/@value"
* xpathUsage = #normal
* multipleAnd = true
* multipleOr = true
* modifier[+] = #text

Instance: location-contains
InstanceOf: SearchParameter
Usage: #definition
Title: "Location contains"
* status = #active
* code = #contains
* name = "LocationContainsSearchParameter"
* description = "Select Locations of the specified contains (co-ordinates)"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/location-contains"
* base[0] = #Location
* type = #special
* expression = "Location.extension.where(url='http://hl7.org/fhir/StructureDefinition/location-boundary-geojson').extension.value.ofType(Attachment)"
//* xpath = "f:Location/f:extension[@url='http://hl7.org/fhir/StructureDefinition/location-boundary-geojson']/f:boundary-geojson"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true

Instance: location-new-patient
InstanceOf: SearchParameter
Usage: #definition
Title: "Location new-patient"
* status = #active
* code = #new-patient
* name = "LocationNewPatientSearchParameter"
* description = "Select Locations of the specified new-patient"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient"
* base[0] = #Location
* type = #token
* expression = "Location.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url ='acceptingPatients').value.ofType(CodeableConcept)"
//* xpath = "f:Location/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients']/f:extension[@url ='acceptingPatients']/f:valueCodeableConcept/f:coding/f:code/@value"
* xpathUsage = #normal
* multipleAnd = true
* multipleOr = true

Instance: location-new-patient-from-network
InstanceOf: SearchParameter
Usage: #definition
Title: "Location new-patient-from-network"
* status = #active
* code = #new-patient-from-network
* name = "LocationNewPatientFromNetworkSearchParameter"
* description = "Select Locations of the specified new-patient-from-network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient-from-network"
* base[0] = #Location
* type = #reference
* target[0] = #Organization
* expression = "Location.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url='fromNetwork').value.ofType(Reference)"
//* xpath = "f:Location/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients']/f:extension[@url='fromNetwork']/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* multipleAnd = true
* multipleOr = true
* chain[0] = #identifier
* chain[+] = #name
* chain[+] = #partof

Instance: location-new-patient-and-from-network
InstanceOf: SearchParameter
Usage: #definition
Title: "Location new-patient-and-from-network"
* status = #active
* code = #new-patient-and-from-network
* name = "LocationNewPatientAndFromNetworkSearchParameter"
* description = "Select Locations of the specified new-patient and from-network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient-and-from-network"
* base[0] = #Location
* type = #composite
* expression = "Location.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients')"
* component[0].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient"
* component[=].expression = "Location.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url ='acceptingPatients').value.ofType(CodeableConcept)"
* component[+].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient-from-network"
* component[=].expression = "Location.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url='fromNetwork').value.ofType(Reference)"

Instance: location-verification-status
InstanceOf: SearchParameter
Usage: #definition
Title: "Location verification-status"
* status = #active
* code = #verification-status
* name = "LocationVerificationStatusSearchParameter"
* description = "Select Locations of the specified verification-status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/location-verification-status"
* base[0] = #Location
* type = #token
* expression = "Location.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-verification-status').value.ofType(CodeableConcept)"
* xpathUsage = #normal
//* multipleAnd = true
* multipleOr = true
* modifier[+] = #text




//--------------------------------
// Organization
//--------------------------------
Instance: network-coverage-area
InstanceOf: SearchParameter
Usage: #definition
Title: "Network coverage-area"
* status = #active
* code = #coverage-area
* name = "NetworkCoverageAreaSearchParameter"
* description = "Select health insurance provider networks available in a region described by the specified location. This search parameter is for the NDH Network Profile 
Resource only."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/network-coverage-area"
* base[0] = #Organization
* type = #reference
* expression = "Organization.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-location-reference').value.ofType(Reference)"
//* xpath = "f:Organization/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-location-reference']/f:extension/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* target[+] = #Location
* multipleOr = true
* multipleAnd = true
* chain[+] = "location-identifier"
* chain[+] = "location-contains"

Instance: organization-verification-status
InstanceOf: SearchParameter
Usage: #definition
Title: "Organization or Network verification-status"
* status = #active
* code = #verification-status
* name = "OrganizationVerificationStatusSearchParameter"
* description = "Select Organization or Network with the specified verification status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/organization-verification-status"
* base[0] = #Organization
* type = #token
* expression = "Organization.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-verification-status').value.ofType(CodeableConcept)"
* xpathUsage = #normal
* multipleOr = true
//* multipleAnd = true
* modifier[+] = #text


//--------------------------------------
// OrganizationAffiliation
//--------------------------------------

Instance: organizationaffiliation-via-intermediary
InstanceOf: SearchParameter
Usage: #definition
Title: "OrganizationAffiliation via-intermediary"
* status = #active
* code = #via-intermediary
* name = "OrganizationAffiliationViaIntermediarySearchParameter"
* description = "Select OrganizationAffiliation of the specified via-intermediary"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/organizationaffiliation-via-intermediary"
* base[0] = #OrganizationAffiliation
* type = #reference
* expression = "OrganizationAffiliation.telecom.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-via-intermediary').value.ofType(Reference)"
* xpathUsage = #normal
* target[+] = #Location
* target[+] = #Organization
* target[+] = #OrganizationAffiliation
* target[+] = #PractitionerRole
* multipleOr = true
* multipleAnd = true

Instance: organizationaffiliation-verification-status
InstanceOf: SearchParameter
Usage: #definition
Title: "OrganizationAffiliation verification-status"
* status = #active
* code = #verification-status
* name = "OrganizationAffiliationVerificationStatusSearchParameter"
* description = "Select OrganizationAffiliation with the specified verification-status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/organizationaffiliation-verification-status"
* base[0] = #OrganizationAffiliation
* type = #token
* expression = "OrganizationAffiliation.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-verification-status').value.ofType(CodeableConcept)"
* xpathUsage = #normal
//* multipleAnd = true
* multipleOr = true
* modifier[+] = #text

//--------------------------------------
// Practitioner
//--------------------------------------

Instance: practitioner-qualification-code
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner qualification-code"
* status = #active
* code = #qualification-code
* name = "PractitionerQualificationCodeSearchParameter"
* description = "Select Practitioner with a type of qualification matching the specific code"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-code"
* base[0] = #Practitioner
* type = #token
* expression = "Practitioner.qualification.code"
//* xpath = "f:Practitioner/f:qualification/f:code"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: practitioner-qualification-issuer
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner qualification-issuer"
* status = #active
* code = #qualification-issuer
* name = "PractitionerQualificationIssuerSearchParameter"
* description = "Select Practitioners with a qualification issued by the specified organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-issuer"
* base[0] = #Practitioner
* type = #reference
* target[+] = #Organization
* expression = "Practitioner.qualification.issuer"
//* xpath = "f:Practitioner/f:qualification/f:issuer"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"

Instance: practitioner-verification-status
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner verification-status"
* status = #active
* code = #verification-status
* name = "PractitionerVerificationStatusSearchParameter"
* description = "Select Practitioner with the specified verification-status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-verification-status"
* base[0] = #Practitioner
* type = #token
* expression = "Practitioner.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-verification-status').value.ofType(CodeableConcept)"
* xpathUsage = #normal
//* multipleAnd = true
* multipleOr = true
* modifier[+] = #text

Instance: practitioner-endpoint
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner endpoint"
* status = #active
* code = #endpoint
* name = "PractitionerEndpointSearchParameter"
* description = "Select Practitioner with the specified endpoint"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-endpoint"
* base[0] = #Practitioner
* type = #reference
* target[+] = #Endpoint
* expression = "Practitioner.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-reference').value.ofType(Reference)"
* xpathUsage = #normal
* multipleAnd = true
* multipleOr = true
* chain[+] = "identifier"
* chain[+] = "connection-type"
* chain[+] = "organization"


//----------------------------------------
// PractitionerRole
//----------------------------------------
Instance: practitionerrole-network
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole network"
* status = #active
* code = #network
* name = "PractitionerroleNetworkSearchParameter"
* description = "Select roles where the practitioner is a member of the specified health insurance provider network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-network"
* base[0] = #PractitionerRole
* type = #reference
* target[+] = #Organization
//* expression = "PractitionerRole.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-network-reference').value as Reference"
* expression = "PractitionerRole.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-network-reference').value.ofType(Reference)"
//* xpath = "f:PractitionerRole/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-network-reference']/f:extension/f:valueReference/f:reference/@value"
* xpathUsage = #normal
//* multipleOr = true
//* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "partof"

Instance: practitionerrole-new-patient
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole new-patient"
* status = #active
* code = #new-patient
* name = "PractitionerroleNewPatientSearchParameter"
* description = "Select roles where the practitioner new-patient"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient"
* base[0] = #PractitionerRole
* type = #token
* expression = "PractitionerRole.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url ='acceptingPatients').value.ofType(CodeableConcept)"
//* xpath = "f:PractitionerRole/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients']/f:extension[@url='acceptingPatients']/f:extension/f:valueCodeableConcept/f:coding/f:code/@value"
* xpathUsage = #normal
* multipleAnd = true
* multipleOr = true

Instance: practitionerrole-new-patient-from-network
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole new-patient-from-network"
* status = #active
* code = #new-patient-from-network
* name = "PractitionerroleNewPatientFromNetworkSearchParameter"
* description = "Select roles where the practitioner new-patient-from-network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient-from-network"
* base[0] = #PractitionerRole
* type = #reference
* target[+] = #Organization
* expression = "PractitionerRole.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url ='fromNetwork').value.ofType(Reference)"
//* xpath = "f:PractitionerRole/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients']/f:extension[@url='fromNetwork']/f:extension/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* multipleAnd = true
* multipleOr = true
* chain[+] = #identifier
* chain[+] = #name
* chain[+] = #partof


Instance: practitionerrole-new-patient-and-from-network
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitionerrole new-patient-and-from-network"
* status = #active
* code = #new-patient-and-from-network
* name = "PractitionerroleNewPatientAndFromNetworkSearchParameter"
* description = "Select roles where the practitioner with the specified new-patient and from-network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient-and-from-network"
* base[0] = #PractitionerRole
* type = #composite
* expression = "PractitionerRole.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients')"
* component[0].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient"
* component[=].expression = "PractitionerRole.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url ='acceptingPatients').value.ofType(CodeableConcept)"
* component[+].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient-from-network"
* component[=].expression = "PractitionerRole.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url ='fromNetwork').value.ofType(Reference)"

Instance: practitionerrole-verification-status
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole verification-status"
* status = #active
* code = #verification-status
* name = "PractitionerroleVerificationStatusSearchParameter"
* description = "Select roles where the practitioner verification-status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-verification-status"
* base[0] = #PractitionerRole
* type = #token
* expression = "PractitionerRole.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-verification-status').value.ofType(CodeableConcept)"
* xpathUsage = #normal
//* multipleAnd = true
* multipleOr = true
* modifier[+] = #text

//-----------------------------------
// VerificationResult
//-----------------------------------
Instance: verificationresult-attestation-communication-method
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult attestation-communication-method"
* status = #active
* code = #attestation-communication-method
* name = "VerificationResultAttestationCommunicationMethodSearchParameter"
* description = "Select validation information for data that was attested to by communication-method"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-attestation-communication-method"
* base[0] = #VerificationResult
* type = #token
* expression = "VerificationResult.attestation.communicationMethod"
//* xpath =  "f:VerificationResult/f:attestation/f:communicationMethod"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: verificationresult-attestation-onbehalfof
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult attestation-onbehalfof"
* status = #active
* code = #attestation-onbehalfof
* name = "VerificationResultAttestationOnbehalfofSearchParameter"
* description = "Select validation information for data that was attested to by onbehalfof"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-attestation-onbehalfof"
* base[0] = #VerificationResult
* type = #reference
* expression = "VerificationResult.attestation.onBehalfOf"
//* xpath =  "f:VerificationResult/f:attestation/f:onbehalfof"
* xpathUsage = #normal
* target[+] = #Practitioner
* target[+] = #PractitionerRole
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* modifier[+] = #type
* chain[+] = "identifier"
* chain[+] = "address"
* chain[+] = "name"
* chain[+] = "partof"
* chain[+] = "location"
* chain[+] = "organization"
* chain[+] = "practitioner"

Instance: verificationresult-attestation-who
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult attestation-who"
* status = #active
* code = #attestation-who
* name = "VerificationResultAttestationWhoSearchParameter"
* description = "Select validation information for data that was attested to by the specified individual or organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-attestation-who"
* base[0] = #VerificationResult
* type = #reference
* expression = "VerificationResult.attestation.who"
//* xpath = "f:VerificationResult/f:attestation/f:who"
* xpathUsage = #normal
* target[+] = #Practitioner
* target[+] = #PractitionerRole
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* modifier[+] = #type
* chain[+] = "identifier"
* chain[+] = "address"
* chain[+] = "name"
* chain[+] = "partof"
* chain[+] = "location"
* chain[+] = "organization"
* chain[+] = "practitioner"


Instance: verificationresult-primarysource-validation-date
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult primarysource-validation-date"
* status = #active
* code = #primarysource-validation-date
* name = "VerificationResultPrimarysourceValidationDateSearchParameter"
* description = "Select verification information for data that was verified against the specified primary source validationDate"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-validation-date"
* base[0] = #VerificationResult
* type = #date
* expression = "VerificationResult.primarySource.validationDate"
//* xpath = "f:VerificationResult/f:primarysource/f:validationDate"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* comparator[0] = #eq
* comparator[+] = #gt
* comparator[+] = #lt 
* comparator[+] = #ge 
* comparator[+] = #le 
* comparator[+] = #sa 
* comparator[+] = #eb

Instance: verificationresult-primarysource-validation-status
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult primarysource-validation-status"
* status = #active
* code = #primarysource-validation-status
* name = "VerificationResultPrimarysourceValidationStatusSearchParameter"
* description = "Select verification information for data that was verified against the specified primary source validationStatus"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-validation-status"
* base[0] = #VerificationResult
* type = #token
* expression = "VerificationResult.primarySource.validationStatus"
//* xpath = "f:VerificationResult/f:primarysource/f:validationStatus"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: verificationresult-primarysource-type
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult primarysource-type"
* status = #active
* code = #primarysource-type
* name = "VerificationResultPrimarysourceTypeSearchParameter"
* description = "Select verification information for data that was verified against the specified primary source type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-type"
* base[0] = #VerificationResult
* type = #token
* expression = "VerificationResult.primarySource.type"
//* xpath = "f:VerificationResult/f:primarysource/f:type"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: verificationresult-primarysource-who
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult primarysource-who"
* status = #active
* code = #primarysource-who
* name = "VerificationResultPrimarysourceWhoSearchParameter"
* description = "Select verification information for data that was verified against the specified primary source who"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-who"
* base[0] = #VerificationResult
* type = #reference
* expression = "VerificationResult.primarySource.who"
//* xpath = "f:VerificationResult/f:primarysource/f:who"
* xpathUsage = #normal
* target[+] = #Practitioner
* target[+] = #PractitionerRole
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* modifier[+] = #type
* chain[+] = "identifier"
* chain[+] = "address"
* chain[+] = "name"
* chain[+] = "partof"
* chain[+] = "location"
* chain[+] = "organization"
* chain[+] = "practitioner"


Instance: verificationresult-status-date
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult status-date"
* status = #active
* code = #status-date
* name = "VerificationResultStatusDateSearchParameter"
* description = "Select verification information for data that was verified against the specified statusDate"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-status-date"
* base[0] = #VerificationResult
* type = #date
* expression = "VerificationResult.statusDate"
//* xpath =  "f:VerificationResult/f:statusDate"
* xpathUsage = #normal
* multipleOr = true
//* multipleAnd = true
* comparator[0] = #eq
* comparator[+] = #gt
* comparator[+] = #lt 
* comparator[+] = #ge 
* comparator[+] = #le 
* comparator[+] = #sa 
* comparator[+] = #eb

Instance: verificationresult-status
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult status"
* status = #active
* code = #status
* name = "VerificationResultStatusSearchParameter"
* description = "Select verification information for data that was verified against the specified status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-status"
* base[0] = #VerificationResult
* type = #token
* expression = "VerificationResult.status"
//* xpath = "f:VerificationResult/f:status"
* xpathUsage = #normal
* multipleOr = true
//* multipleAnd = true

Instance: verificationresult-target
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult target"
* status = #active
* code = #target
* name = "VerificationResultTargetSearchParameter"
* description = "Select verification information for data that was verified against the specified target"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-target"
* base[0] = #VerificationResult
* type = #reference
* expression = "VerificationResult.target"
//* xpath = "f:VerificationResult/f:target"
* xpathUsage = #normal
* target[+] = #Resource
* multipleOr = true
* multipleAnd = true
* modifier[+] = #type


Instance: verificationresult-validator-organization
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult validator-organization"
* status = #active
* code = #validator-organization
* name = "VerificationResultValidatorOrganizationSearchParameter"
* description = "Select verification information for data that was verified against the specified validator-organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-validator-organization"
* base[0] = #VerificationResult
* type = #reference
* expression = "VerificationResult.validator.organization"
//* xpath =  "f:VerificationResult/f:validator/f:organization"
* xpathUsage = #normal
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* chain[+] = #identifier
* chain[+] = #name



