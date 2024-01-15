
Invariant:  network-or-NatlDirwork 
Description: "If an insuranceplan does not define a network, then each plan must define one"
//Expression: "network.exists() or plan.network.exists.allTrue()"
Expression: "network.exists() or coverage.network.exists() or plan.network.exists()"
Severity:   #error

Invariant:  agerange-or-agegroup
Description: "a service or program only allow to have either age-range or age-group but not both"
//Expression: "extension('age-range').empty() or extension('age-group').empty() or (extension('age-range').empty() and extension('age-group').empty())"
Expression: "extension('http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-ndh-age-range').empty() or extension('http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-ndh-age-group').empty() or (extension('http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-ndh-age-range').empty() and extension('http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-ndh-age-group').empty())"
Severity:   #error

Invariant:  new-patients-characteristics 
Description: "If no new patients are accepted, no characteristics are allowed"
//Expression: "extension('acceptingPatients').value.coding.exists(code = 'nopt') implies extension('characteristics').empty()"
Expression: "extension('http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients').value.coding.exists(code = 'nopt') implies extension('http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients-characteristics').empty()"
Severity:   #error

Invariant:  organization-or-participatingOrganization 
Description: "NdhOrganizationAffiliation.organization or  NdhOrganizationAffiliation.participatingOrganization"
Expression: "organization.exists() or participatingOrganization.exists()"
Severity:   #error

Invariant: plan-type-is-distinct
Description: "Each InsurancePlan.plan should have a distinct plan.type."
Expression: "plan.type.coding.code.isDistinct()"
Severity:   #error


Invariant:  practitioner-or-organization-or-healthcareservice-or-location 
Description: "If NdhPractitionerRole.practitioner is absent  ( NdhPractitionerRole.organization, NdhPractitionerRole.healthcareservice, NdhPractitionerRole.location) 
must be present"
Expression: "practitioner.exists() or (organization.exists() or healthcareService.exists() or location.exists())"
Severity:   #error

/*
Invariant:  endpoint-fhir-payloadtype
Description: "For non-fhir endpoint, non-fhir-payloadtype extension should be used"
Expression: "connectionType.coding.exists(code = 'hl7-fhir-rest' or code = 'hl7-fhir-msg') implies extension('non-fhir-payloadtype').empty()"
Severity:   #error

Invariant: endpoint-fhir-payloadmimetype 
Description: "For fhir endpoint, payloadMimetype fhir/json, fhir/xml, or fhir/turtl should be used"
Expression: "connectionType.coding.exists(code = 'hl7-fhir-rest' or code = 'hl7-fhir-msg') implies payloadMintype(code='application/fhir+json' or code='appliation/fhir+xml' or code='application/fhir+turtle')"
Severity: #error
*/