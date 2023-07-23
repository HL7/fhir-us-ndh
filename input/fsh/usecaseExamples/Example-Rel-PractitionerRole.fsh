/*
Instance: PatientAccessEndpoint
InstanceOf: NdhExEndpoint
Description: "Patient Access Endpoint"
Usage: #example
* meta.profile = Canonical(NdhExEndpoint) 
* meta.lastUpdated = "2023-07-20T15:00:00.0000000+00:00"
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* language = #en-US
* status = #active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "PatientAccessEndpoint"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active 
* name = "Endpoint for Patient Access"
* connectionType = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#hl7-fhir-rest
* payloadType = http://hl7.org/fhir/us/ndh/CodeSystem/EndpointPayloadTypeCS#NA
* payloadMimeType[+] = urn:ietf:bcp:13#application/fhir+json
* payloadMimeType[+] = urn:ietf:bcp:13#application/fhir+xml
* address = "https://PatientAccessEndpoint.com"
* extension[endpoint-usecase][0].extension[endpointUsecasetype].valueCodeableConcept = NdhFhirEndpointUseCaseCS#patientAccess
* extension[dynamic-registration][0].extension[trustProfile].valueCodeableConcept = TrustProfileCS#smart
* extension[trust-framework][0].extension[trustFrameworkType].valueCodeableConcept = TrustFrameworkTypeCS#Exchange
* extension[connection-type-version].valueCodeableConcept = http://hl7.org/fhir/FHIR-version#4.0.1

Instance: SteveHardy
InstanceOf: NdhExPractitioner
Description: "Steve Hardy MD"
Usage: #example
* meta.profile = Canonical(NdhExPractitioner)
* meta.lastUpdated = "2023-07-21T10:30:45.5555555+00:00"
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* language = #en-US
* active = true
* identifier[NPI].value = "1003310905"
* identifier[NPI].system = $NPICS
* identifier[NPI].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "SteveHardy"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active 
* name.text = "Steve Hardy, MD"
* name.family = "Steve"
* name.given[+] = "Hardy"
* qualification[+].code = $NUCCProviderTaxonomy#207R00000X "Internal Medicine Physician"
* qualification[=].issuer.display = "American Board of Internal Medicine"
* qualification[=].code.text = "Board Certified Internal Medicine"
* qualification[=].extension[practitioner-qualification].extension[status].valueCode = $NdhQualificationStatusCS#active 
* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#CT
*/
