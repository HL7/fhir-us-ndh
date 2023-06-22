
Invariant:  network-or-NatlDirwork 
Description: "If an insuranceplan does not define a network, then each plan must define one"
//Expression: "network.exists($this is Organization) or plan.network.exists.allTrue()"
Severity:   #error


Invariant:  new-patients-characteristics 
Description: "If no new patients are accepted, no characteristics are allowed"
Expression: "extension('acceptingPatients').valueCodeableConcept.coding.exists(code = 'no') implies extension('characteristics').empty()"
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
Expression: "practitioner.exists() or (organization.exists() or healthcareservice.exists() or location.exists())"
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