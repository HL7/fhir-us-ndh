Instance: HansSolo
InstanceOf: NdhPractitioner
Description: "Solo Practitioner Hans Solo"
Usage: #example
* meta.profile = Canonical(NdhPractitioner)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* identifier[NPI].value = "1003310905"
* identifier[NPI].system = $NPICS
* identifier[NPI].extension[identifier-status].valueCode = $CredentialStatusCS#active
* name.text = "Hans Solo, MD"
* name.family = "Solo"
* name.given[+] = "Hans"
* qualification[0].code = $V2table0360CS#MD
* qualification[=].issuer.display = "State of Connecticut"
* qualification[=].code.text = "MD"
* qualification[=].extension[practitioner-qualification].extension[status].valueCode = $CredentialStatusCS#active 
* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#CT 
* qualification[+].code = $NUCCProviderTaxonomy#207R00000X "Internal Medicine Physician"
* qualification[=].issuer.display = "American Board of Internal Medicine"
* qualification[=].code.text = "Board Certified Internal Medicine"
* qualification[=].extension[practitioner-qualification].extension[status].valueCode = $CredentialStatusCS#active 
* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#CT
* qualification[+].code = $NUCCProviderTaxonomy#207RC0000X "Cardiovascular Disease Physician"
* qualification[=].issuer.display = "American Board of Internal Medicine"
* qualification[=].code.text = "Board Certified Cardiovascular Disease"
* qualification[=].extension[practitioner-qualification].extension[status].valueCode = $CredentialStatusCS#active 
* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#CT 
* communication[+].extension[communication-proficiency].valueCodeableConcept = $ILRSpeakingScaleCS#"Level 1"



Instance: JoeSmith
InstanceOf: NdhPractitioner
Description: "Practitioner Dr Joe Smith"
Usage: #example
* meta.profile = Canonical(NdhPractitioner)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "1003357849"
* identifier[NPI].extension[identifier-status].valueCode = $CredentialStatusCS#active
* identifier[+].system = "http://example.org/ndh-identifiers"
* identifier[=].value = "JoeSmith"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* active = true
* name.text = "Joe Smith, MD"
* name.family = "Smith"
* name.given[0] = "Joe"
* address[0].line[0] = "263 Farmington Ave"
* address[=].city = "Farmington"
* address[=].state = "CT"
* address[=].postalCode = "06030"
* address[=].country = "US"
* address[=].use = #home
* address[+].line[0] = "400 Lee Rd Farmington, CT 06032"
* address[=].city = "Farmington"
* address[=].state = "CT"
* address[=].postalCode = "06032"
* address[=].country = "US"
* address[=].use = #work
* address[=].type = #physical
* telecom[+].system = #phone
* telecom[=].value = "555-123-6666"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "555-123-1234"
* telecom[=].use = #work
* qualification[0].code = $V2table0360CS#MD
* qualification[=].issuer.display = "State of Connecticut"
* qualification[=].code.text = "MD"
* qualification[=].extension[practitioner-qualification].extension[status].valueCode = $CredentialStatusCS#active 
* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#CT 
* qualification[+].code = $NUCCProviderTaxonomy#207R00000X "Internal Medicine Physician"
* qualification[=].issuer.display = "American Board of Internal Medicine"
* qualification[=].code.text = "Board Certified Internal Medicine"
* qualification[=].extension[practitioner-qualification].extension[status].valueCode = $CredentialStatusCS#active 
* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#CT 


Instance: aGroup
InstanceOf: NdhGroup
Description: "A group of practitioners"
Usage: #example
* meta.profile = Canonical(NdhGroup)
* meta.lastUpdated = "2026-02-18T13:26:22.0314215+00:00"
* active = true
* type = #practitioner
* code = http://terminology.hl7.org/CodeSystem/ndh-healthcare-service-category#behav
* name = "Behavioral Health Group"
* managingEntity = Reference(BurrClinic)
* member[0].entity = Reference(JoeSmith)
* member[0].period.start = "2020-01-01"
* member[0].period.end = "2025-12-31"
* member[0].inactive = false
* member[1].entity = Reference(HansSolo)
* member[1].period.start = "2020-01-01"
* member[1].period.end = "2025-12-31"
* member[1].inactive = false

