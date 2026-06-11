


Instance: endpoint-security-details
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint security-details"
Description: "Use this search parameter to identify endpoints by trust framework so they can connect through compatible security and policy communities. Applies to Endpoint records."
* status = #active
* code = #security-details
* name = "EndpointSecurityDetailsSearchParameter"
* description = "Use this search parameter to identify endpoints by trust framework so they can connect through compatible security and policy communities. Applies to Endpoint records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-security-details"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-security-details').extension.where(url='trustFrameworkType').value.ofType(CodeableConcept)"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: endpoint-dynamic-registration-trust-profile
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint dynamic-registration-trust-profile"
Description: "Use this search parameter to find endpoints that support dynamic trust-profile registration so onboarding can be automated and scalable. Applies to Endpoint records."
* status = #active
* code = #dynamic-registration-trust-profile
* name = "EndpointDynamicRegistrationTrustProfileSearchParameter"
* description = "Use this search parameter to find endpoints that support dynamic trust-profile registration so onboarding can be automated and scalable. Applies to Endpoint records."
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
Description: "Use this search parameter to find endpoints by access-control approach so clients can match expected authentication and authorization patterns. Applies to Endpoint records."
* status = #active
* code = #access-control-mechanism
* name = "EndpointAccessControlMechanismSearchParameter"
* description = "Use this search parameter to find endpoints by access-control approach so clients can match expected authentication and authorization patterns. Applies to Endpoint records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-access-control-mechanism"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpointAccessControlMechanism').value.ofType(CodeableConcept)"
* xpathUsage = #normal
* multipleOr = true
//* multipleAnd = true
* modifier[+] = #text


Instance: endpoint-ihe-connection-type
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint ihe-connection-type"
Description: "Use this search parameter to find endpoints by detailed IHE-specific connection semantics when general connection types are not precise enough. Applies to Endpoint records."
* status = #active
* code = #ihe-connection-type
* name = "EndpointIheConnectionTypeSearchParameter"
* description = "Use this search parameter to find endpoints by detailed IHE-specific connection semantics when general connection types are not precise enough. Applies to Endpoint records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-ihe-connection-type"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-ihe-specific-connection-type').value.ofType(CodeableConcept)"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: verification-status
InstanceOf: SearchParameter
Usage: #definition
Title: "verification-status"
Description: "Use this search parameter to find records by verification standing to prioritize trusted and current directory data. Applies to Endpoint, HealthcareService, Organization, Location, Practitioner, PractitionerRole, InsurancePlan, OrganizationAffiliation, and Group records."
* status = #active
* code = #verification-status
* name = "VerificationStatusSearchParameter"
* description = "Use this search parameter to find records by verification standing to prioritize trusted and current directory data. Applies to Endpoint, HealthcareService, Organization, Location, Practitioner, PractitionerRole, InsurancePlan, OrganizationAffiliation, and Group records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verification-status"
* base[+] = #Endpoint
* base[+] = #HealthcareService
* base[+] = #Organization
* base[+] = #Location
* base[+] = #Practitioner
* base[+] = #PractitionerRole
* base[+] = #InsurancePlan
* base[+] = #OrganizationAffiliation
* base[+] = #Group
* type = #token
* expression = "extension('http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-verification-status').value"
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
Description: "Use this search parameter to find HealthcareService records with the specified eligibility. Applies to HealthcareService records."
* status = #active
* code = #eligibility
* name = "HealthcareServiceEligibilitySearchParameter"
* description = "Use this search parameter to find HealthcareService records with the specified eligibility. Applies to HealthcareService records."
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
Description: "Use this search parameter to find where new patients are being accepted to identify available access points for care. Applies to HealthcareService records."
* status = #active
* code = #new-patient
* name = "HealthcareServiceNewPatientSearchParameter"
* description = "Use this search parameter to find where new patients are being accepted to identify available access points for care. Applies to HealthcareService records."
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
Description: "Use this search parameter to find where new-patient acceptance is tied to a specific network so coverage-based access can be evaluated. Applies to HealthcareService records."
* status = #active
* code = #new-patient-from-network
* name = "HealthcareServiceNewPatientFromNetworkSearchParameter"
* description = "Use this search parameter to find where new-patient acceptance is tied to a specific network so coverage-based access can be evaluated. Applies to HealthcareService records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient-from-network"
* base[0] = #HealthcareService
* type = #reference
* expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url='fromNetwork').value.ofType(Reference)"
//* xpath =  "f:HealthcareService/f:extension[@url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients']/f:extension[@url='fromNetwork']/f:valueReference/f:reference/@value"
* xpathUsage = #normal
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "partof"
//* chain[+] = "organization-identifier"
//* chain[+] = "organization-name"
//* chain[+] = "organization-partof"


Instance: healthcareservice-new-patient-and-from-network
InstanceOf: SearchParameter
Usage: #definition
Title: "Healthcareservice new-patient-and-from-network"
Description: "Use this search parameter to find HealthcareService records with specified new-patient acceptance and network criteria. Applies to HealthcareService records."
* status = #active
* code = #new-patient-and-from-network
* name = "HealthcareServiceNewPatientAndFromNetworkSearchParameter"
* description = "Use this search parameter to find HealthcareService records with specified new-patient acceptance and network criteria. Applies to HealthcareService records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient-and-from-network"
* base[0] = #HealthcareService
* type = #composite
* expression = "HealthcareService.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients')"
* component[0].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient"
* component[=].expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url ='acceptingPatients').value.ofType(CodeableConcept)"
* component[+].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient-from-network"
* component[=].expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').extension.where(url='fromNetwork').value.ofType(Reference)"



Instance: healthcareservice-social-service-age-group
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService social service requirement age group"
Description: "Use this search parameter to find services or programs by age-group eligibility to match offerings to age-based participation needs. Applies to HealthcareService records."
* status = #active
* code = #social-service-age-group
* name = "HealthcareServiceSocialServiceAgeGroupSearchParameter"
* description = "Use this search parameter to find services or programs by age-group eligibility to match offerings to age-based participation needs. Applies to HealthcareService records."
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
Description: "Use this search parameter to find services or programs using birth-sex eligibility criteria to screen for population-specific participation rules. Applies to HealthcareService records."
* status = #active
* code = #social-service-birthsex
* name = "HealthcareServiceSocialServiceBirthsexSearchParameter"
* description = "Use this search parameter to find services or programs using birth-sex eligibility criteria to screen for population-specific participation rules. Applies to HealthcareService records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-social-service-birthsex"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement').extension.where(url='birthsex').value.ofType(code)"
* xpathUsage = #normal  
* multipleAnd = true
* multipleOr = true
//* modifier[+] = #text



Instance: healthcareservice-social-service-employment-status
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService social service requirement employment status"
Description: "Use this search parameter to find services or programs by employment-status criteria to identify offerings aligned to employment-based eligibility. Applies to HealthcareService records."
* status = #active
* code = #social-service-employment-status
* name = "HealthcareServiceSocialServiceEmploymentStatusSearchParameter"
* description = "Use this search parameter to find services or programs by employment-status criteria to identify offerings aligned to employment-based eligibility. Applies to HealthcareService records."
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
Description: "Use this search parameter to find services or programs by insurance-status criteria to identify offerings aligned to coverage circumstances. Applies to HealthcareService records."
* status = #active
* code = #social-service-insurance-status
* name = "HealthcareServiceSocialServiceInsuranceStatusSearchParameter"
* description = "Use this search parameter to find services or programs by insurance-status criteria to identify offerings aligned to coverage circumstances. Applies to HealthcareService records."
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
Description: "Use this search parameter to find services or programs by veteran-status criteria to identify offerings intended for veteran populations. Applies to HealthcareService records."
* status = #active
* code = #social-service-va-status
* name = "HealthcareServiceSocialServiceVaStatusSearchParameter"
* description = "Use this search parameter to find services or programs by veteran-status criteria to identify offerings intended for veteran populations. Applies to HealthcareService records."
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
Description: "Use this search parameter to find services or programs by preferred-language criteria to locate linguistically appropriate options. Applies to HealthcareService records."
* status = #active
* code = #social-service-preferred-language
* name = "HealthcareServiceSocialServicePreferredLanguageSearchParameter"
* description = "Use this search parameter to find services or programs by preferred-language criteria to locate linguistically appropriate options. Applies to HealthcareService records."
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
Description: "Use this search parameter to find services or programs by age-group eligibility to match offerings to age-based participation needs. Applies to HealthcareService records."
* status = #active
* code = #program-requirement-age-group
* name = "HealthcareServiceProgramRequirementAgeGroupSearchParameter"
* description = "Use this search parameter to find services or programs by age-group eligibility to match offerings to age-based participation needs. Applies to HealthcareService records."
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
Description: "Use this search parameter to find services or programs using birth-sex eligibility criteria to screen for population-specific participation rules. Applies to HealthcareService records."
* status = #active
* code = #program-requirement-birthsex
* name = "HealthcareServiceProgramRequirementBirthsexSearchParameter"
* description = "Use this search parameter to find services or programs using birth-sex eligibility criteria to screen for population-specific participation rules. Applies to HealthcareService records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-program-requirement-birthsex"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.program.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement').extension.where(url='birthsex').value.ofType(code)"
* xpathUsage = #normal  
* multipleAnd = true
* multipleOr = true
//* modifier[+] = #text


Instance: healthcareservice-program-requirement-employment-status
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService program requirement employment status"
Description: "Use this search parameter to find services or programs by employment-status criteria to identify offerings aligned to employment-based eligibility. Applies to HealthcareService records."
* status = #active
* code = #program-requirement-employment-status
* name = "HealthcareServiceProgramRequirementEmploymentStatusSearchParameter"
* description = "Use this search parameter to find services or programs by employment-status criteria to identify offerings aligned to employment-based eligibility. Applies to HealthcareService records."
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
Description: "Use this search parameter to find services or programs by insurance-status criteria to identify offerings aligned to coverage circumstances. Applies to HealthcareService records."
* status = #active
* code = #program-requirement-insurance-status
* name = "HealthcareServiceProgramRequirementInsuranceStatusSearchParameter"
* description = "Use this search parameter to find services or programs by insurance-status criteria to identify offerings aligned to coverage circumstances. Applies to HealthcareService records."
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
Description: "Use this search parameter to find services or programs by veteran-status criteria to identify offerings intended for veteran populations. Applies to HealthcareService records."
* status = #active
* code = #program-requirement-va-status
* name = "HealthcareServiceProgramRequirementVaStatusSearchParameter"
* description = "Use this search parameter to find services or programs by veteran-status criteria to identify offerings intended for veteran populations. Applies to HealthcareService records."
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
Description: "Use this search parameter to find services or programs by preferred-language criteria to locate linguistically appropriate options. Applies to HealthcareService records."
* status = #active
* code = #program-requirement-preferred-language
* name = "HealthcareServiceProgramRequirementPreferredLanguageSearchParameter"
* description = "Use this search parameter to find services or programs by preferred-language criteria to locate linguistically appropriate options. Applies to HealthcareService records."
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
Description: "Use this search parameter to find records linked to specific networks to evaluate in-network participation and coverage pathways. Applies to HealthcareService records."
* status = #active
* code = #network
* name = "HealthcareServiceNetworkSearchParameter"
* description = "Use this search parameter to find records linked to specific networks to evaluate in-network participation and coverage pathways. Applies to HealthcareService records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-network"
* base[0] = #HealthcareService
* type = #reference
* expression = "HealthcareService.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-network-reference').value.ofType(Reference)"
* xpathUsage = #normal
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true

Instance: healthcareservice-organization
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService organization"
Description: "Use this search parameter to find HealthcareService records with the specified organization. Applies to HealthcareService records."
* status = #active
* code = #organization
* name = "HealthcareServiceOrganizationSearchParameter"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/HealthcareService-organization"
* description = "Use this search parameter to find HealthcareService records with the specified organization. Applies to HealthcareService records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-organization"
* base[0] = #HealthcareService
* type = #reference
* expression = "HealthcareService.providedBy"
* xpathUsage = #normal
* target[+] = #Organization
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "address"
* chain[+] = "partof"
* chain[+] = "type"

Instance: healthcareservice-location
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService location"
Description: "Use this search parameter to find HealthcareService records with the specified location. Applies to HealthcareService records."
* status = #active
* code = #location
* name = "HealthcareServiceLocationSearchParameter"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/HealthcareService-location"
* description = "Use this search parameter to find HealthcareService records with the specified location. Applies to HealthcareService records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-location"
* base[0] = #HealthcareService
* type = #reference
* expression = "HealthcareService.location"
* xpathUsage = #normal
* target[+] = #Location
* multipleAnd = true
* multipleOr = true
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "address"
* chain[+] = "organization"
* chain[+] = "type"

//---------------------------------------
// InsurancePlan
//---------------------------------------
Instance: insuranceplan-coverage-area
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan coverage-area"
Description: "Use this search parameter to find products that are offered in the specified location. Applies to InsurancePlan records."
* status = #active
* code = #coverage-area
* name = "InsuranceCoverageAreaSearchParameter"
* description = "Use this search parameter to find products that are offered in the specified location. Applies to InsurancePlan records."
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
Description: "Use this search parameter to find products that are offered in the specified coverage benefit type. Applies to InsurancePlan records."
* status = #active
* code = #coverage-benefit-type
* name = "InsuranceplanCoverageBenefitTypeSearchParameter"
* description = "Use this search parameter to find products that are offered in the specified coverage benefit type. Applies to InsurancePlan records."
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
Description: "Use this search parameter to find products that are offered in the specified coverage type. Applies to InsurancePlan records."
* status = #active
* code = #coverage-type
* name = "InsuranceplanCoverageTypeSearchParameter"
* description = "Use this search parameter to find products that are offered in the specified coverage type. Applies to InsurancePlan records."
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
Description: "Use this search parameter to find products offering covered benefits through the specified coverage network. Applies to InsurancePlan records."
* status = #active
* code = #coverage-network
* name = "InsuranceplanCoverageNetworkSearchParameter"
* description = "Use this search parameter to find products offering covered benefits through the specified coverage network. Applies to InsurancePlan records."
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
Title: "Insuranceplan-network"
Description: "Use this search parameter to find products that are offered in the specified network. Applies to InsurancePlan records."
* status = #active
* code = #network
* name = "InsuranceplanPlanNetworkSearchParameter"
* description = "Use this search parameter to find products that are offered in the specified network. Applies to InsurancePlan records."
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
Description: "Use this search parameter to find products that are offered in the specified plan network. Applies to InsurancePlan records."
* status = #active
* code = #plan-network
* name = "InsuranceplanPlanNetworkSearchParameter"
* description = "Use this search parameter to find products that are offered in the specified plan network. Applies to InsurancePlan records."
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
Description: "Use this search parameter to find products that are offered in the specified plan type. Applies to InsurancePlan records."
* status = #active
* code = #plan-type
* name = "InsuranceplanPlanTypeSearchParameter"
* description = "Use this search parameter to find products that are offered in the specified plan type. Applies to InsurancePlan records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-type"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.plan.type"
//* xpath = "f:InsurancePlan/f:plan/f:type"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text

//-------------------------------------------
// Location
//-------------------------------------------    

Instance: location-accessibility
InstanceOf: SearchParameter
Usage: #definition
Title: "Location accessibility"
Description: "Use this search parameter to find locations by accessibility accommodations to locate sites that meet access-support needs. Applies to Location records."
* status = #active
* code = #accessibility
* name = "LocationAccessibilitySearchParameter"
* description = "Use this search parameter to find locations by accessibility accommodations to locate sites that meet access-support needs. Applies to Location records."
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
Description: "Use this search parameter to find locations by geographic containment to discover sites that serve or fall within a target area. Applies to Location records."
* status = #active
* code = #contains
* name = "LocationContainsSearchParameter"
* description = "Use this search parameter to find locations by geographic containment to discover sites that serve or fall within a target area. Applies to Location records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/location-contains"
* base[0] = #Location
* type = #special
* expression = "Location.extension.where(url='http://hl7.org/fhir/StructureDefinition/location-boundary-geojson').extension.value.ofType(Attachment)"
//* xpath = "f:Location/f:extension[@url='http://hl7.org/fhir/StructureDefinition/location-boundary-geojson']/f:boundary-geojson"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true






//--------------------------------
// Organization
//--------------------------------
Instance: network-coverage-area
InstanceOf: SearchParameter
Usage: #definition
Title: "Network coverage-area"
Description: "Use this search parameter to find network records by coverage area to identify networks available in a specific location. Applies to Organization records."
* status = #active
* code = #coverage-area
* name = "NetworkCoverageAreaSearchParameter"
* description = "Use this search parameter to find network records by coverage area to identify networks available in a specific location. Applies to Organization records."
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


//--------------------------------------
// OrganizationAffiliation
//--------------------------------------

Instance: organizationaffiliation-via-intermediary
InstanceOf: SearchParameter
Usage: #definition
Title: "OrganizationAffiliation via-intermediary"
Description: "Use this search parameter to find records with intermediary contact routing to reach the correct alternate contact pathway. Applies to OrganizationAffiliation records."
* status = #active
* code = #via-intermediary
* name = "OrganizationAffiliationViaIntermediarySearchParameter"
* description = "Use this search parameter to find records with intermediary contact routing to reach the correct alternate contact pathway. Applies to OrganizationAffiliation records."
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

Instance: organizationaffiliation-location
InstanceOf: SearchParameter
Usage: #definition
Title: "OrganizationAffiliation location"
Description: "Use this search parameter to find OrganizationAffiliation records with the specified location. Applies to OrganizationAffiliation records."
* status = #active
* code = #location
* name = "OrganizationAffiliationLocationSearchParameter"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-location"
* description = "Use this search parameter to find OrganizationAffiliation records with the specified location. Applies to OrganizationAffiliation records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/organizationaffiliation-location"
* base[0] = #OrganizationAffiliation
* type = #reference
* expression = "OrganizationAffiliation.location"
* xpathUsage = #normal
* target[+] = #Location
* multipleOr = true
* multipleAnd = true
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "address"
* chain[+] = "organization"
* chain[+] = "type"

Instance: organizationaffiliation-primary-organization
InstanceOf: SearchParameter
Usage: #definition
Title: "OrganizationAffiliation primary organization"
Description: "Use this search parameter to find OrganizationAffiliation records with the specified primary organization. Applies to OrganizationAffiliation records."
* status = #active
* code = #primary-organization
* name = "OrganizationAffiliationPrimaryOrganizationSearchParameter"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-primary-organization"
* description = "Use this search parameter to find OrganizationAffiliation records with the specified primary organization. Applies to OrganizationAffiliation records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/organizationaffiliation-primary-organization"
* base[0] = #OrganizationAffiliation
* type = #reference
* expression = "OrganizationAffiliation.organization"
* xpathUsage = #normal
* target[+] = #Organization
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "address"
* chain[+] = "partof"
* chain[+] = "type"

Instance: organizationaffiliation-participating-organization
InstanceOf: SearchParameter
Usage: #definition
Title: "OrganizationAffiliation participating organization"
Description: "Use this search parameter to find OrganizationAffiliation records with the specified participating organization. Applies to OrganizationAffiliation records."
* status = #active
* code = #participating-organization
* name = "OrganizationAffiliationParticipatingOrganizationSearchParameter"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-participating-organization"
* description = "Use this search parameter to find OrganizationAffiliation records with the specified participating organization. Applies to OrganizationAffiliation records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/organizationaffiliation-participating-organization"
* base[0] = #OrganizationAffiliation
* type = #reference
* expression = "OrganizationAffiliation.participatingOrganization"
* xpathUsage = #normal
* target[+] = #Organization
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "address"
* chain[+] = "partof"
* chain[+] = "type"


//--------------------------------------
// Practitioner
//--------------------------------------

Instance: practitioner-qualification-code
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner qualification-code"
Description: "Use this search parameter to find Practitioner records by qualification code. Applies to Practitioner records."
* status = #active
* code = #qualification-code
* name = "PractitionerQualificationCodeSearchParameter"
* description = "Use this search parameter to find Practitioner records by qualification code. Applies to Practitioner records."
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
Description: "Use this search parameter to find Practitioner records by qualification issuer organization. Applies to Practitioner records."
* status = #active
* code = #qualification-issuer
* name = "PractitionerQualificationIssuerSearchParameter"
* description = "Use this search parameter to find Practitioner records by qualification issuer organization. Applies to Practitioner records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-issuer"
* base[0] = #Practitioner
* type = #reference
* target[+] = #Organization
* expression = "Practitioner.qualification.issuer"
//* xpath = "f:Practitioner/f:qualification/f:issuer"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
//* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"

Instance: practitioner-endpoint
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner endpoint"
Description: "Use this search parameter to find practitioners linked to technical endpoints to discover professionals available for electronic exchange. Applies to Practitioner records."
* status = #active
* code = #endpoint
* name = "PractitionerEndpointSearchParameter"
* description = "Use this search parameter to find practitioners linked to technical endpoints to discover professionals available for electronic exchange. Applies to Practitioner records."
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
Description: "Use this search parameter to find records linked to specific networks to evaluate in-network participation and coverage pathways. Applies to PractitionerRole records."
* status = #active
* code = #network
* name = "PractitionerroleNetworkSearchParameter"
* description = "Use this search parameter to find records linked to specific networks to evaluate in-network participation and coverage pathways. Applies to PractitionerRole records."
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
Description: "Use this search parameter to find PractitionerRole records by new-patient acceptance. Applies to PractitionerRole records."
* status = #active
* code = #new-patient
* name = "PractitionerroleNewPatientSearchParameter"
* description = "Use this search parameter to find PractitionerRole records by new-patient acceptance. Applies to PractitionerRole records."
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
Description: "Use this search parameter to find PractitionerRole records by new-patient acceptance from a specified network. Applies to PractitionerRole records."
* status = #active
* code = #new-patient-from-network
* name = "PractitionerroleNewPatientFromNetworkSearchParameter"
* description = "Use this search parameter to find PractitionerRole records by new-patient acceptance from a specified network. Applies to PractitionerRole records."
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


Instance: practitionerrole-location
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole location"
Description: "Use this search parameter to find PractitionerRole records by location. Applies to PractitionerRole records."
* status = #active
* code = #location
* name = "PractitionerroleLocationSearchParameter"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/PractitionerRole-location"
* description = "Use this search parameter to find PractitionerRole records by location. Applies to PractitionerRole records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-location"
* base[0] = #PractitionerRole
* type = #reference
* expression = "PractitionerRole.location"
* xpathUsage = #normal
* target[+] = #Location
* multipleOr = true
* multipleAnd = true
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "address"
* chain[+] = "organization"
* chain[+] = "type"

Instance: practitionerrole-organization
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole organization"
Description: "Use this search parameter to find PractitionerRole records by organization. Applies to PractitionerRole records."
* status = #active
* code = #organization
* name = "PractitionerroleOrganizationSearchParameter"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/PractitionerRole-organization"
* description = "Use this search parameter to find PractitionerRole records by organization. Applies to PractitionerRole records."
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-organization"
* base[0] = #PractitionerRole
* type = #reference
* expression = "PractitionerRole.organization"
* xpathUsage = #normal
* target[+] = #Organization
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "address"
* chain[+] = "partof"
* chain[+] = "type"


//-----------------------------------
// VerificationResult
//-----------------------------------

Instance: verificationresult-attestation-who
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult attestation-who"
Description: "Use this search parameter to find validation information for data that was attested to by the specified individual or organization. Applies to VerificationResult records."
* status = #active
* code = #attestation-who
* name = "VerificationResultAttestationWhoSearchParameter"
* description = "Use this search parameter to find validation information for data that was attested to by the specified individual or organization. Applies to VerificationResult records."
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
//commented out multipleAnd = true
//* multipleAnd = true
* modifier[+] = #type
* chain[+] = "identifier"
* chain[+] = "address"
* chain[+] = "name"
* chain[+] = "partof"
* chain[+] = "location"
* chain[+] = "organization"
* chain[+] = "practitioner"



Instance: verificationresult-primarysource-validation-status
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult primarysource-validation-status"
Description: "Use this search parameter to find verification information for data that was verified against the specified primary source validation status. Applies to VerificationResult records."
* status = #active
* code = #primarysource-validation-status
* name = "VerificationResultPrimarysourceValidationStatusSearchParameter"
* description = "Use this search parameter to find verification information for data that was verified against the specified primary source validation status. Applies to VerificationResult records."
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
Description: "Use this search parameter to find verification information for data that was verified against the specified primary source type. Applies to VerificationResult records."
* status = #active
* code = #primarysource-type
* name = "VerificationResultPrimarysourceTypeSearchParameter"
* description = "Use this search parameter to find verification information for data that was verified against the specified primary source type. Applies to VerificationResult records."
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
Description: "Use this search parameter to find verification information for data that was verified against the specified primary source actor. Applies to VerificationResult records."
* status = #active
* code = #primarysource-who
* name = "VerificationResultPrimarysourceWhoSearchParameter"
* description = "Use this search parameter to find verification information for data that was verified against the specified primary source actor. Applies to VerificationResult records."
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




Instance: verificationresult-status
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult status"
Description: "Use this search parameter to find verification information for data that was verified against the specified status. Applies to VerificationResult records."
* status = #active
* code = #status
* name = "VerificationResultStatusSearchParameter"
* description = "Use this search parameter to find verification information for data that was verified against the specified status. Applies to VerificationResult records."
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
Description: "Use this search parameter to find verification information for data that was verified against the specified target. Applies to VerificationResult records."
* status = #active
* code = #target
* name = "VerificationResultTargetSearchParameter"
* description = "Use this search parameter to find verification information for data that was verified against the specified target. Applies to VerificationResult records."
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










