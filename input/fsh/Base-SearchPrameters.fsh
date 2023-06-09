/*
Instance: endpoint-mime-type
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint mime-type"
* status = #active
* code = #endpoint-mime-type
* name = "EndpointMimeTypeSearchParameter"
* description = "Select Endpoints that support the specified mime-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-mime-type"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.payloadMimeType"
//* xpath = "f:Endpoint/f:payloadMimeType"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
*/

/*
Instance: endpoint-identifier-assigner
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint identifier-assigner"
* status = #active
* code = #endpoint-identifier-assigner
* name = "EndpointIdentifierAssignerSearchParameter"
* description = "Select Endpoints managed by the specified Identifier Assigner"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-identifier-assigner"
* base[0] = #Endpoint
* type = #reference
* target[+] = #Organization
* expression = "Endpoint.identifier.assigner"
//* xpath = "f:Endpoint/f:identifier/f:assigner"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
*/

/*
Instance: endpoint-usecase-standard
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint usecase-standard"
* status = #active
* code = #endpoint-usecase-standard
* name = "EndpointUsecaseStandardSearchParameter"
* description = "Select Endpoints that support the specified usecase standard"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-standard"
* base[0] = #Endpoint
* type = #uri
* expression = "Endpoint.extension.where(url = 'http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-usecase').extension.where(url='standard').value as uri"
//* xpath = "f:Endpoint/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-usecase']/f:extension[@url='standard']/f:valueUri/@value"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #below
*/

Instance: endpoint-usecase-type
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint usecase-type"
* status = #active
* code = #endpoint-usecase-type
* name = "EndpointUsecaseTypeSearchParameter"
* description = "Select Endpoints that support the type of services indicated by a specific usecase-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-type"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-usecase').extension.where(url='endpointUsecasetype').value as CodeableConcept"
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
* code = #endpoint-nonfhir-usecase-type
* name = "EndpointNonfhirUsecaseTypeSearchParameter"
* description = "Select Endpoints that support the type of services indicated by a specific nonfhir-usecase-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-nonfhir-usecase-type"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-non-fhir-usecase').extension.where(url='endpointUsecasetype').value as CodeableConcept"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: endpoint-trust-framework-type
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint trust-framework-type"
* status = #active
* code = #endpoint-trust-framework-type
* name = "EndpointTrustFrameworkTypeSearchParameter"
* description = "Select Endpoints that support the type of services indicated by a specific trust-framework-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-trust-framework-type"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-trustFramework').extension.where(url='trustFrameworkType').value as CodeableConcept"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: endpoint-dynamic-registration-trust-profile
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint dynamic-registration-trust-profile"
* status = #active
* code = #endpoint-dynamic-registration-trust-profile
* name = "EndpointDynamicRegistrationTrustProfileSearchParameter"
* description = "Select Endpoints that support the type of services indicated by a specific dynamic-registration-trust-profile"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-dynamic-registration-trust-profile"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-dynamicRegistration').extension.where(url='trustProfile').value as CodeableConcept"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: endpoint-access-control-mechanism
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint access-control-mechanism"
* status = #active
* code = #endpoint-access-control-mechanism
* name = "EndpointAccessControlMechanismSearchParameter"
* description = "Select Endpoints that support the type of services indicated by a specific access-control-mechanism"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-access-control-mechanism"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpointAccessControlMechanism').value as CodeableConcept"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: endpoint-connection-type-version
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint connection-type-version"
* status = #active
* code = #endpoint-connection-type-version
* name = "EndpointConnectionTypeVersionSearchParameter"
* description = "Select Endpoints that support the type of services indicated by a specific connection-type-version"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-connection-type-version"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-connection-type-version').value as CodeableConcept"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: endpoint-ihe-connection-type
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint ihe-connection-type"
* status = #active
* code = #endpoint-ihe-connection-type
* name = "EndpointIheConnectionTypeSearchParameter"
* description = "Select Endpoints that support the type of services indicated by a specific ihe-connection-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-ihe-connection-type"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-ihe-specific-connection-type').value as CodeableConcept"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: endpoint-verification-status
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint verification-status"
* status = #active
* code = #endpoint-verification-status
* name = "EndpointVerificationStatusSearchParameter"
* description = "Select Endpoints that support the type of services indicated by a specific verification-status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-verification-status"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-verification-status').value as CodeableConcept"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text









/*
Instance: careteam-endpoint
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam endpoint"
* status = #active
* code = #careteam-endpoint
* name = "CareTeamEndpointSearchParameter"
* description = "Select CareTeams with the specified endpoint"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-endpoint"
* base[0] = #CareTeam
* type = #reference
* expression = "CareTeam.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-reference').extension.value as Reference"
//* xpath = "f:CareTeam/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-reference']/f:extension/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* target[+] = #Endpoint
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "connection-type"
* chain[+] = "organization"
*/

/*
Instance: careteam-identifier-assigner
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam identifier-assigner"
* status = #active
* code = #careteam-identifier-assigner
* name = "CareTeamIdentifierAssignerSearchParameter"
* description = "Select CareTeams managed by the specified identifier-assigner"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-identifier-assigner"
* base[0] = #CareTeam
* type = #reference
* expression = "CareTeam.identifier.assigner"
* xpathUsage = #normal
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
*/


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
* expression = "CareTeam.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-location-reference').extension.value as Reference"
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
Title: "CareTeam name"
* status = #active
* code = #careteam-name
* name = "CareTeamServiceSearchParameter"
* description = "Select CareTeams with the specified name"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-name"
* base[0] = #CareTeam
* type = #string
* expression = "CareTeam.name|CareTeam.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-careteam-alias').extension.value as String"
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
* code = #careteam-organization
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
* code = #careteam-service
* name = "CareTeamServiceSearchParameter"
* description = "Select CareTeams providing the specified service"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-service"
* base[0] = #CareTeam
* type = #reference
* expression = "CareTeam.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-healthcareservice-reference').extension.value as Reference"
//* xpath = "f:CareTeam/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-healthcareservice-reference']/f:extension/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* target[+] = #HealthcareService
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "service-category"
* chain[+] = "organization"
* chain[+] = "location"

/*
Instance: careteam-via-intermediary
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam via-intermediary"
* status = #active
* code = #careteam-via-intermediary
* name = "CareTeamViaIntermediarySearchParameter"
* description = "Select CareTeam with the specified via-intermediary"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-via-intermediary"
* base[0] = #CareTeam
* type = #reference
* expression = "CareTeam.telecom.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-via-intermediary').extension.value as Reference"
* xpathUsage = #normal
* target[+] = #Organization
* target[+] = #OrganizationAffiliation
* target[+] = #PractitionerRole
* target[+] = #Location
* multipleOr = true
* multipleAnd = true
*/

Instance: healthcareservice-category
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService category"
* status = #active
* code = #category
* name = "HealthcareServiceCategorySearchParameter"
* description = "Select HealthcareService with the specified category"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-category"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.category"
//* xpath = "f:HealthcareService/f:category"
* xpathUsage = #normal
* multipleAnd = true
* multipleOr = true
* modifier[+] = #text

/*
Instance: healthcareservice-coverage-area
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService coverage area"
* status = #active
* code = #healthcareservice-coverage-area
* name = "HealthcareServiceCoverageAreaSearchParameter"
* description = "Select HealthcareService operating at the specified coverage-area"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-coverage-area"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/HealthcareService-coverage-area"
* base[0] = #HealthcareService
* type = #reference
* expression = "HealthcareService.coverageArea"
//* xpathUsage = #normal
* target[+] = #Location
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "contains"
*/

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

/*
Instance: healthcareservice-endpoint
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService endpoint"
* status = #active
* code = #healthcareservice-endpoint
* name = "HealthcareServiceEndpointSearchParameter"
* description = "Select HealthcareService with the specified endpoint"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-endpoint"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/HealthcareService-endpoint"
* base[0] = #HealthcareService
* type = #reference
* expression = "HealthcareService.endpoint"
//* xpath = "f:HealthcareService/f:endpoint"
* xpathUsage = #normal
* target[+] = #Endpoint
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "connection-type"
* chain[+] = "organization"
*/

/*
Instance: healthcareservice-location
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService location"
* status = #active
* code = #healthcareservice-ocation
* name = "HealthcareServiceLocationSearchParameter"
* description = "Select HealthcareService operating at the specified location"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-location"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/HealthcareService-location"
* base[0] = #HealthcareService
* type = #reference
* expression = "HealthcareService.location"
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
*/

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
* expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url='acceptingPatients').value as CodeableConcept"
//* xpath =  "f:HealthcareService/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients']/f:extension[@url='acceptingPatients']/f:valueCodeableConcept/f:coding/f:code/@value"
* xpathUsage = #normal
* multipleAnd = true

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
* expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url='fromNetwork').valueReference.reference"
//* xpath =  "f:HealthcareService/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients']/f:extension[@url='fromNetwork']/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* chain[+] = "organization-identifier"
* chain[+] = "organization-name"
* chain[+] = "organization-partof"

/*
Instance: healthcareservice-organization
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService providedBy organization"
* status = #active
* code = #healthcareservice-organization
* name = "HealthcareServiceOrganizationSearchParameter"
* description = "Select HealthcareService operating at the specified providedBy organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-organization"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/HealthcareService-organization"
* base[0] = #HealthcareService
* type = #reference
* expression = "HealthcareService.providedBy"
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
*/

Instance: healthcareservice-type
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService type"
* status = #active
* code = #type
* name = "HealthcareServiceTypeSearchParameter"
* description = "Select HealthcareService with the specified type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-type"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.type"
//* xpath = "f:HealthcareService/f:type"
* xpathUsage = #normal
* multipleAnd = true
* multipleAnd = true
* modifier[+] = #text

Instance: healthcareservice-via-intermediary
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService via-intermediary"
* status = #active
* code = #via-intermediary
* name = "HealthcareServiceViaIntermediarySearchParameter"
* description = "Select HealthcareService with the specified via-intermediary"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-via-intermediary"
* base[0] = #HealthcareService
* type = #reference
* expression = "HealthcareService.telecom.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-via-intermediary').extension.value as Reference"
//* xpath = "f:HealthcareService/f:telecom/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-via-intermediary']/fL:extension/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* target[+] = #Organization
* target[+] = #OrganizationAffiliation
* target[+] = #PractitionerRole
* target[+] = #Location
* multipleOr = true
* multipleAnd = true

/*
Instance: insuranceplan-administered-by
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan administered by"
* status = #active
* code = #insuranceplan-administered-by
* name = "InsurancePlanAdministeredBySearchParameter"
* description = "Select InsurancePlan by a specific administering organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-administered-by"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/InsurancePlan-administered-by"
* base[0] = #InsurancePlan
* type = #reference
* expression = "InsurancePlan.administeredBy"
* xpathUsage = #normal
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "partof"
*/

Instance: insuranceplan-coverage-area
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan coverage-area"
* status = #active
* code = #insuranceplan-coverage-area
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

Instance: insuranceplan-coverage-benefit-limit-value
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan coverage-benefit-limit-value"
* status = #active
* code = #insuranceplan-coverage-benefit-limit-value
* name = "InsuranceplanCoverageBenefitLimitValueSearchParameter"
* description = "Select products that are offered in the specified benefit limit value"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-benefit-limit-value"
* base[0] = #InsurancePlan
* type = #quantity
* expression = "InsurancePlan.coverage.benefit.limit.value"
//* xpath =  "f:InsurancePlan/f:coverage/f:benefit/f:limit/f:value"
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


Instance: insuranceplan-coverage-benefit-type
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan coverage-benefit-type"
* status = #active
* code = #insuranceplan-coverage-benefit-type
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
* code = #insuranceplan-coverage-type
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
* code = #insuranceplan-coverage-network
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

/*
Instance: insuranceplan-endpoint
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan endpoint"
* status = #active
* code = #insuranceplan-endpoint
* name = "HealthcareInsurancePlanEndpointSearchParameter"
* description = "Select InsurancePlan with the specified endpoint"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-endpoint"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/InsurancePlan-endpoint"
* base[0] = #InsurancePlan
* type = #reference
* expression = "InsurancePlan.endpoint"
* xpathUsage = #normal
* target[+] = #Endpoint
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "connection-type"
* chain[+] = "organization"
*/

Instance: insuranceplan-network
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan network"
* status = #active
* code = #insuranceplan-network
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

/*
Instance: insuranceplan-owned-by
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan owned by"
* status = #active
* code = #insuranceplan-owned-by
* name = "InsurancePlanOwnedBySearchParameter"
* description = "Select InsurancePlan by a specific owning organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-owned-by"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/InsurancePlan-owned-by"
* base[0] = #InsurancePlan
* type = #reference
* expression = "InsurancePlan.ownedBy"
* xpathUsage = #normal
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "partof"
*/

Instance: insuranceplan-plan-coverage-area
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan coverage area"
* status = #active
* code = #insuranceplan-plan-coverage-area
* name = "InsuranceplanPlanCoverageAreaSearchParameter"
* description = "Select products offering covered benefits through the specified plan coverage area"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-coverage-area"
* base[0] = #InsurancePlan
* type = #reference
* expression = "InsurancePlan.plan.coverageArea"
//* xpath = "f:InsurancePlan/f:plan/f:coverageArea"
* xpathUsage = #normal
* target[+] = #Location
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "contains"

Instance: insuranceplan-plan-general-cost-cost
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-general-cost-cost"
* status = #active
* code = #insuranceplan-plan-general-cost-cost
* name = "InsuranceplanPlanGeneralCostCostSearchParameter"
* description = "Select products that are offered in the specified plan-general-cost-cost"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-general-cost-cost"
* base[0] = #InsurancePlan
* type = #quantity
* expression = "InsurancePlan.plan.generalCost.cost"
//* xpath = "f:InsurancePlan/f:plan/f:generalCost/f:cost"
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

Instance: insuranceplan-plan-general-cost-groupsize
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-general-cost-groupsize"
* status = #active
* code = #insuranceplan-plan-general-cost-groupsize
* name = "InsuranceplanPlanGeneralCostGroupsizeSearchParameter"
* description = "Select products that are offered in the specified plan-general-cost-groupsize"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-general-cost-groupsize"
* base[0] = #InsurancePlan
* type = #number
* expression = "InsurancePlan.plan.generalCost.groupsize"
//* xpath = "f:InsurancePlan/f:plan/f:generalCost/f:groupsize"
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

Instance: insuranceplan-plan-general-cost-type
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-general-cost-type"
* status = #active
* code = #insuranceplan-plan-general-cost-type
* name = "InsuranceplanPlanGeneralCostTypeSearchParameter"
* description = "Select products that are offered in the specified plan-general-cost-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-general-cost-type"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.plan.generalCost.type"
//* xpath = "f:InsurancePlan/f:plan/f:generalCost/f:type"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text

Instance: insuranceplan-plan-identifier
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-identifier"
* status = #active
* code = #insuranceplan-plan-identifier
* name = "InsuranceplanPlanIdentifierSearchParameter"
* description = "Select products that are offered in the specified plan-identifier"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-identifier"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.plan.identifier"
//* xpath = "f:InsurancePlan/f:plan/f:identifier"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text
//* modifier[+] = #ofType

Instance: insuranceplan-plan-network
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-network"
* status = #active
* code = #insuranceplan-plan-network
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
* code = #insuranceplan-plan-type
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


Instance: insuranceplan-plan-specific-cost-category
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-specific-cost-category"
* status = #active
* code = #insuranceplan-plan-specific-cost-category
* name = "InsuranceplanPlanSpecificCostCategorySearchParameter"
* description = "Select products that are offered in the specified plan-specific-cost-category"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-specific-cost-category"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.plan.specificCost.category"
//* xpath = "f:InsurancePlan/f:plan/f:specificCost/f:category"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text

Instance: insuranceplan-plan-specific-cost-benefit-type
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-specific-cost-benefit-type"
* status = #active
* code = #insuranceplan-plan-specific-cost-benefit-type
* name = "InsuranceplanPlanSpecificCostBenefitTypeSearchParameter"
* description = "Select products that are offered in the specified plan-specific-cost-benefit-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-specific-cost-benefit-type"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.plan.specificCost.benefit.type"
//* xpath = "f:InsurancePlan/f:plan/f:specificCost/f:benefit/f:type"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text


Instance: insuranceplan-plan-specific-cost-benefit-cost-type
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-specific-cost-benefit-cost-type"
* status = #active
* code = #insuranceplan-plan-specific-cost-benefit-cost-type
* name = "InsuranceplanPlanSpecificCostBenefitCostTypeSearchParameter"
* description = "Select products that are offered in the specified plan-specific-cost-benefit-cost-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-specific-cost-benefit-cost-type"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.plan.specificCost.benefit.cost.type"
//* xpath = "f:InsurancePlan/f:plan/f:specificCost/f:benefit/f:cost/f:type"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text

Instance: insuranceplan-plan-specific-cost-benefit-cost-value
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-specific-cost-benefit-cost-value"
* status = #active
* code = #insuranceplan-plan-specific-cost-benefit-cost-value
* name = "InsuranceplanPlanSpecificCostBenefitCostValueSearchParameter"
* description = "Select products that are offered in the specified plan-specific-cost-benefit-cost-value"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-specific-cost-benefit-cost-value"
* base[0] = #InsurancePlan
* type = #quantity
* expression = "InsurancePlan.plan.specificCost.benefit.cost.value"
//* xpath = "f:InsurancePlan/f:plan/f:specificCost/f:benefit/f:cost/f:value"
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


Instance: location-accessibility
InstanceOf: SearchParameter
Usage: #definition
Title: "Location accessibility"
* status = #active
* code = #location-accessibility
* name = "LocationAccessibilitySearchParameter"
* description = "Select Locations of the specified accessibility"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/location-accessibility"
* base[0] = #Location
* type = #token
* expression = "Location.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-accessibility').extention.value as CodeabeConcept"
//* xpath =  "f:Location/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-accessibility']/f:extention/f:valueCodeabeConcept/f:coding/f:code/@value"
* xpathUsage = #normal
* multipleAnd = true
* multipleOr = true
* modifier[+] = #text

Instance: location-contains
InstanceOf: SearchParameter
Usage: #definition
Title: "Location contains"
* status = #active
* code = #location-contains
* name = "LocationContainsSearchParameter"
* description = "Select Locations of the specified contains (co-ordinates)"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/location-contains"
* base[0] = #Location
* type = #special
* expression = "Location.extension.where(url='http://hl7.org/fhir/StructureDefinition/location-boundary-geojson').boundary-geojson"
//* xpath = "f:Location/f:extension[@url='http://hl7.org/fhir/StructureDefinition/location-boundary-geojson']/f:boundary-geojson"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true

/*
Instance: location-endpoint
InstanceOf: SearchParameter
Usage: #definition
Title: "Location endpoint"
* status = #active
* code = #location-endpoint
* name = "HealthcareLocationEndpointSearchParameter"
* description = "Select Location with the specified endpoint"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/location-endpoint"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Location-endpoint"
* base[0] = #Location
* type = #reference
* expression = "Location.endpoint"
//* xpathUsage = #normal
* target[+] = #Endpoint
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "connection-type"
* chain[+] = "organization"
*/

Instance: location-new-patient
InstanceOf: SearchParameter
Usage: #definition
Title: "Location new-patient"
* status = #active
* code = #location-new-patient
* name = "LocationNewPatientSearchParameter"
* description = "Select Locations of the specified new-patient"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient"
* base[0] = #Location
* type = #token
* expression = "Location.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url ='acceptingPatients').value as CodeableConcept"
//* xpath = "f:Location/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients']/f:extension[@url ='acceptingPatients']/f:valueCodeableConcept/f:coding/f:code/@value"
* xpathUsage = #normal
* multipleAnd = true

Instance: location-new-patient-from-network
InstanceOf: SearchParameter
Usage: #definition
Title: "Location new-patient-from-network"
* status = #active
* code = #location-new-patient-from-network
* name = "LocationNewPatientFromNetworkSearchParameter"
* description = "Select Locations of the specified new-patient-from-network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient-from-network"
* base[0] = #Location
* type = #reference
* target[0] = #Organization
* expression = "Location.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url='fromNetwork').valueReference.reference"
//* xpath = "f:Location/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients']/f:extension[@url='fromNetwork']/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* multipleAnd = true
* multipleOr = true
* chain[0] = #identifier
* chain[+] = #name
* chain[+] = #partof

/*
Instance: location-organization
InstanceOf: SearchParameter
Usage: #definition
Title: "Location managing organization"
* status = #active
* code = #location-organization
* name = "LocationOrganizationSearchParameter"
* description = "Select Location operating at the specified managing organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/location-organization"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Location-organization"
* base[0] = #Location
* type = #reference
* expression = "Location.managingOrganization"
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
*/

/*
Instance: location-partof
InstanceOf: SearchParameter
Usage: #definition
Title: "Location partof location"
* status = #active
* code = #location-partof
* name = "LocationPartofSearchParameter"
* description = "Select Location operating at the specific partof location"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/location-partof"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Location-partof"
* base[0] = #Location
* type = #reference
* expression = "Location.partOf"
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
*/

/*
Instance: location-type
InstanceOf: SearchParameter
Usage: #definition
Title: "Location type"
* status = #active
* code = #location-type
* name = "LocationTypeSearchParameter"
* description = "Select Locations of the specified type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/location-type"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Location-type"
* base[0] = #Location
* type = #token
* expression = "Location.type"
//* xpath = "f:Location/f:type"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text
*/

Instance: location-via-intermediary
InstanceOf: SearchParameter
Usage: #definition
Title: "Location via-intermediary"
* status = #active
* code = #location-via-intermediary
* name = "LocationTelecomViaIntermediarySearchParameter"
* description = "Select Locations of the specified via-intermediary"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/location-via-intermediary"
* base[0] = #Location
* type = #reference
* expression = "Location.telecom.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-via-intermediary').extension.value as Reference"
//* xpath = "f:Location/f:telecom/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-via-intermediary']/f:extension/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* target[+] = #Location
* target[+] = #Organization
* target[+] = #OrganizationAffiliation
* target[+] = #PractitionerRole
* multipleOr = true
* multipleAnd = true


Instance: network-coverage-area
InstanceOf: SearchParameter
Usage: #definition
Title: "Network coverage-area"
* status = #active
* code = #network-coverage-area
* name = "NetworkCoverageAreaSearchParameter"
* description = "Select health insurance provider networks available in a region described by the specified location"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/network-coverage-area"
* base[0] = #Organization
* type = #reference
* expression = "Organization.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-location-reference').extension.value as Reference"
//* xpath = "f:Organization/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-location-reference']/f:extension/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* target[+] = #Location
* multipleOr = true
* multipleAnd = true
* chain[+] = "location-identifier"
* chain[+] = "location-contains"

/*
Instance: organization-endpoint
InstanceOf: SearchParameter
Usage: #definition
Title: "Organization endpoint"
* status = #active
* code = #organization-endpoint
* name = "HealthcareOrganizationEndpointSearchParameter"
* description = "Select Organization with the specified endpoint"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/organization-endpoint"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Organization-endpoint"
* base[0] = #Organization
* type = #reference
* expression = "Organization.endpoint"
* xpathUsage = #normal
* target[+] = #Endpoint
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "connection-type"
* chain[+] = "organization"
*/

Instance: organization-identifier-assigner
InstanceOf: SearchParameter
Usage: #definition
Title: "Organization identifier-assigner"
* status = #active
* code = #organization-identifier-assigner
* name = "OrganizationIdentifierAssignerSearchParameter"
* description = "Select Organization with an identifier issued by the specified organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/organization-identifier-assigner"
* base[0] = #Organization
* type = #reference
* target[+] = #Organization
* expression = "Organization.identifier.assigner"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true

/*
Instance: organization-partof
InstanceOf: SearchParameter
Usage: #definition
Title: "Organization partof location"
* status = #active
* code = #organization-partof
* name = "OrganizationPartofSearchParameter"
* description = "Select Organization operating at the specific partof organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/organization-partof"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Organization-partof"
* base[0] = #Organization
* type = #reference
* expression = "Organization.partOf"
* xpathUsage = #normal
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "address"
* chain[+] = "name"
* chain[+] = "type"
*/

Instance: organization-via-intermediary
InstanceOf: SearchParameter
Usage: #definition
Title: "Organization via-intermediary"
* status = #active
* code = #organization-via-intermediary
* name = "OrganizationViaIntermediarySearchParameter"
* description = "Select Organizations with the specified via-intermediary"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/organization-via-intermediary"
* base[0] = #Organization
* type = #reference
* target[+] = #Location
* target[+] = #Organization
* target[+] = #OrganizationAffiliation
* target[+] = #PractitionerRole
* expression = "Organization.telecom.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-via-intermediary').extension.value as Reference"
//* xpath = "f:Organization/f:telecom/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-via-intermediary']/f:extension/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true

Instance: organizationaffiliation-via-intermediary
InstanceOf: SearchParameter
Usage: #definition
Title: "OrganizationAffiliation via-intermediary"
* status = #active
* code = #organizationaffiliation-via-intermediary
* name = "OrganizationAffiliationViaIntermediarySearchParameter"
* description = "Select OrganizationAffiliation of the specified via-intermediary"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/organizationaffiliation-via-intermediary"
* base[0] = #OrganizationAffiliation
* type = #reference
* expression = "OrganizationAffiliation.telecom.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-via-intermediary').extension.valueReference"
* xpathUsage = #normal
* target[+] = #Location
* target[+] = #Organization
* target[+] = #OrganizationAffiliation
* target[+] = #PractitionerRole
* multipleOr = true
* multipleAnd = true
/*
Instance: organizationaffiliation-endpoint
InstanceOf: SearchParameter
Usage: #definition
Title: "OrganizationAffiliation endpoint"
* status = #active
* code = #organizationaffiliation-endpoint
* name = "HealthcareOrganizationAffiliationEndpointSearchParameter"
* description = "Select organizationaffiliation with the specified endpoint"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/organizationaffiliation-endpoint"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-endpoint"
* base[0] = #OrganizationAffiliation
* type = #reference
* expression = "OrganizationAffiliation.endpoint"
* xpathUsage = #normal
* target[+] = #Endpoint
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "connection-type"
* chain[+] = "organization"
*/

/*
Instance: organizationaffiliation-service
InstanceOf: SearchParameter
Usage: #definition
Title: "OrganizationAffiliation healthcareService"
* status = #active
* code = #organizationaffiliation-service
* name = "HealthcareOrganizationAffiliationServiceSearchParameter"
* description = "Select organizationaffiliation with the specified healthcareService"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/organizationaffiliation-service"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-service"
* base[0] = #OrganizationAffiliation
* type = #reference
* expression = "OrganizationAffiliation.healthcareService"
* xpathUsage = #normal
* target[+] = #HealthcareService
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "service-category"
* chain[+] = "organization"
* chain[+] = "location"
*/

Instance: practitioner-endpoint
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner endpoint"
* status = #active
* code = #practitioner-endpoint
* name = "HealthcarePractitionerEndpointSearchParameter"
* description = "Select Practitioner with the specified endpoint"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-endpoint"
* base[0] = #Practitioner
* type = #reference
* expression = "Practitioner.endpoint"
* xpathUsage = #normal
* target[+] = #Endpoint
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "connection-type"
* chain[+] = "organization"

Instance: practitioner-identifier-assigner
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner identifier-assigner"
* status = #active
* code = #practitioner-identifier-assigner
* name = "PractitionerIdentifierAssignerSearchParameter"
* description = "Select Practitioners with an identifier issued by the specified organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-identifier-assigner"
* base[0] = #Practitioner
* type = #reference
* target[+] = #Organization
* expression = "Practitioner.identifier.assigner"
//* xpath =  "f:Practitioner/f:identifier/f:assigner"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true


Instance: practitioner-qualification-code
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner qualification-code"
* status = #active
* code = #practitioner-qualification-code
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
* code = #practitioner-qualification-issuer
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


Instance: practitioner-qualification-period
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner qualification-period"
* status = #active
* code = #practitioner-qualification-period
* name = "PractitionerQualificationPeriodSearchParameter"
* description = "Select Practitioner with a type of qualification matching the specific period"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-period"
* base[0] = #Practitioner
* type = #date
* expression = "Practitioner.qualification.period"
//* xpath = "f:Practitioner/f:qualification/f:period"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #exact
* modifier[+] = #contains


Instance: practitioner-via-intermediary
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner via-intermediary"
* status = #active
* code = #practitioner-via-intermediary
* name = "PractitionerViaIntermediarySearchParameter"
* description = "Select Practitioner via-intermediary"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-via-intermediary"
* base[0] = #Practitioner
* type = #reference
* expression = "Practitioner.telecom.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-via-intermediary').extension.value as Reference"
//* xpath = "f:Practitioner/f:telecom/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-via-intermediary']/f:extension/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* target[+] = #Location
* target[+] = #Organization
* target[+] = #OrganizationAffiliation
* target[+] = #PractitionerRole
* multipleOr = true
* multipleAnd = true


Instance: practitioner-qualification-wherevalid-code
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner qualification-wherevalid-code"
* status = #active
* code = #practitioner-qualification-wherevalid-code
* name = "PractitionerQualificationWherevalidCodeSearchParameter"
* description = "Select Practitioner qualification-wherevalid-code"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-wherevalid-code"
* base[0] = #Practitioner
* type = #token
* expression = "Practitioner.qualification.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-practitioner-qualification').extension.where(url='whereValid').value as CodeableConcept"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier = #text

/*
Instance: practitionerrole-endpoint
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole endpoint"
* status = #active
* code = #practitionerrole-endpoint
* name = "HealthcarePractitionerRoleEndpointSearchParameter"
* description = "Select PractitionerRole with the specified endpoint"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-endpoint"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/PractitionerRole-endpoint"
* base[0] = #PractitionerRole
* type = #reference
* expression = "PractitionerRole.endpoint"
* xpathUsage = #normal
* target[+] = #Endpoint
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "connection-type"
* chain[+] = "organization"
*/

Instance: practitionerrole-network
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole network"
* status = #active
* code = #practitionerrole-network
* name = "PractitionerroleNetworkSearchParameter"
* description = "Select roles where the practitioner is a member of the specified health insurance provider network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-network"
* base[0] = #PractitionerRole
* type = #reference
* target[+] = #Organization
* expression = "PractitionerRole.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-network-reference').extension.value as Reference"
//* xpath = "f:PractitionerRole/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-network-reference']/f:extension/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "partof"


Instance: practitionerrole-new-patient
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole new-patient"
* status = #active
* code = #practitionerrole-new-patient
* name = "PractitionerroleNewPatientSearchParameter"
* description = "Select roles where the practitioner new-patient"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient"
* base[0] = #PractitionerRole
* type = #token
* expression = "PractitionerRole.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url='acceptingPatients').extension.value as CodeableConcept"
//* xpath = "f:PractitionerRole/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients']/f:extension[@url='acceptingPatients']/f:extension/f:valueCodeableConcept/f:coding/f:code/@value"
* xpathUsage = #normal
* multipleAnd = true

Instance: practitionerrole-new-patient-from-network
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole new-patient-from-network"
* status = #active
* code = #practitionerrole-new-patient-from-network
* name = "PractitionerroleNewPatientFromNetworkSearchParameter"
* description = "Select roles where the practitioner new-patient-from-network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient-from-network"
* base[0] = #PractitionerRole
* type = #reference
* target[+] = #Organization
* expression = "PractitionerRole.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url='fromNetwork').extension.value as Reference"
//* xpath = "f:PractitionerRole/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients']/f:extension[@url='fromNetwork']/f:extension/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* multipleAnd = true
* multipleOr = true
* chain[+] = #identifier
* chain[+] = #name
* chain[+] = #partof

Instance: practitionerrole-via-intermediary
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole via-intermediary"
* status = #active
* code = #practitionerrole-via-intermediary
* name = "PractitionerroleViaIntermediarySearchParameter"
* description = "Select roles where the practitioner via-intermediary"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-via-intermediary"
* base[0] = #PractitionerRole
* type = #reference
* target[+] = #Organization
* expression = "PractitionerRole.telecom.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-via-intermediary').extension.value as Reference"
//* xpath = "f:PractitionerRole/f:telecom/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-via-intermediary']/f:extension/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* target[+] = #Location
* target[+] = #Organization
* target[+] = #OrganizationAffiliation
* target[+] = #PractitionerRole
* multipleOr = true
* multipleAnd = true

/*
Instance: practitionerrole-service
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole healthcareService"
* status = #active
* code = #practitionerrole-service
* name = "HealthcarePractitionerRoleServiceSearchParameter"
* description = "Select PractitionerRole with the specified healthcareService"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-service"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/PractitionerRole-service"
* base[0] = #PractitionerRole
* type = #reference
* expression = "PractitionerRole.healthcareService"
* xpathUsage = #normal
* target[+] = #HealthcareService
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "service-category"
* chain[+] = "organization"
* chain[+] = "location"
*/

Instance: verificationresult-attestation-communication-method
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult attestation-communication-method"
* status = #active
* code = #verificationresult-attestation-communication-method
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
* code = #verificationresult-attestation-onbehalfof
* name = "VerificationResultAttestationOnbehalfofSearchParameter"
* description = "Select validation information for data that was attested to by onbehalfof"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-attestation-onbehalfof"
* base[0] = #VerificationResult
* type = #reference
* expression = "VerificationResult.attestation.onbehalfof"
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
* code = #verificationresult-attestation-who
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
* code = #verificationresult-primarysource-validation-date
* name = "VerificationResultPrimarysourceValidationDateSearchParameter"
* description = "Select verification information for data that was verified against the specified primary source validationDate"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-validation-date"
* base[0] = #VerificationResult
* type = #date
* expression = "VerificationResult.primarysource.validationDate"
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
* code = #verificationresult-primarysource-validation-status
* name = "VerificationResultPrimarysourceValidationStatusSearchParameter"
* description = "Select verification information for data that was verified against the specified primary source validationStatus"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-validation-status"
* base[0] = #VerificationResult
* type = #token
* expression = "VerificationResult.primarysource.validationStatus"
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
* code = #verificationresult-primarysource-type
* name = "VerificationResultPrimarysourceTypeSearchParameter"
* description = "Select verification information for data that was verified against the specified primary source type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-type"
* base[0] = #VerificationResult
* type = #token
* expression = "VerificationResult.primarysource.type"
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
* code = #verificationresult-primarysource-who
* name = "VerificationResultPrimarysourceWhoSearchParameter"
* description = "Select verification information for data that was verified against the specified primary source who"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-who"
* base[0] = #VerificationResult
* type = #reference
* expression = "VerificationResult.primarysource.who"
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
* code = #verificationresult-status-date
* name = "VerificationResultStatusDateSearchParameter"
* description = "Select verification information for data that was verified against the specified statusDate"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-status-date"
* base[0] = #VerificationResult
* type = #date
* expression = "VerificationResult.statusDate"
//* xpath =  "f:VerificationResult/f:statusDate"
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

Instance: verificationresult-status
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult status"
* status = #active
* code = #verificationresult-status
* name = "VerificationResultStatusSearchParameter"
* description = "Select verification information for data that was verified against the specified status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-status"
* base[0] = #VerificationResult
* type = #token
* expression = "VerificationResult.status"
//* xpath = "f:VerificationResult/f:status"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true

Instance: verificationresult-target
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult target"
* status = #active
* code = #verificationresult-target
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
* code = #verificationresult-validator-organization
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




