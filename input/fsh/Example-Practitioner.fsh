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
* qualification[=].extension[scope].extension[status].valueCode = $CredentialStatusCS#active 
* qualification[=].extension[scope].extension[whereValid].valueCodeableConcept = $USPSStateCS#CT 
* qualification[+].code = $NUCCProviderTaxonomy#207R00000X "Internal Medicine Physician"
* qualification[=].issuer.display = "American Board of Internal Medicine"
* qualification[=].code.text = "Board Certified Internal Medicine"
* qualification[=].extension[scope].extension[status].valueCode = $CredentialStatusCS#active 
* qualification[=].extension[scope].extension[whereValid].valueCodeableConcept = $USPSStateCS#CT
* qualification[+].code = $NUCCProviderTaxonomy#207RC0000X "Cardiovascular Disease Physician"
* qualification[=].issuer.display = "American Board of Internal Medicine"
* qualification[=].code.text = "Board Certified Cardiovascular Disease"
* qualification[=].extension[scope].extension[status].valueCode = $CredentialStatusCS#active 
* qualification[=].extension[scope].extension[whereValid].valueCodeableConcept = $USPSStateCS#CT 
* qualification[+].code = FaCeT-credentialCS#FAAC 
* qualification[=].code.text = "Fellow of the American College of Cardiology"
* qualification[=].issuer.display = "American College of Cardiology"
* communication[+].extension[communication-proficiency].valueCodeableConcept = $ILRSpeakingScaleCS#"Level 1"
* extension[cms-enrollment-in-good-standing].valueBoolean = false
* extension[cms-ial2-verified].valueBoolean = false
* extension[aligned-with-cms-data-network].valueBoolean = false


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
* qualification[=].extension[scope].extension[status].valueCode = $CredentialStatusCS#active 
* qualification[=].extension[scope].extension[whereValid].valueCodeableConcept = $USPSStateCS#CT 
* qualification[+].code = $NUCCProviderTaxonomy#207R00000X "Internal Medicine Physician"
* qualification[=].issuer.display = "American Board of Internal Medicine"
* qualification[=].code.text = "Board Certified Internal Medicine"
* qualification[=].extension[scope].extension[status].valueCode = $CredentialStatusCS#active 
* qualification[=].extension[scope].extension[whereValid].valueCodeableConcept = $USPSStateCS#CT 
* qualification[+].code = FaCeT-credentialCS#DABIM
* qualification[=].code.text = "Diplomate of the American Board of Internal Medicine"
* qualification[=].issuer.display = "American Board of Internal Medicine"
// pharmacy license, that is not used in any PractitionerRole.
* qualification[+].code = FaCeT-credentialCS#PharmD
* qualification[=].code.text = "Doctor of Pharmacy"
* extension[cms-enrollment-in-good-standing].valueBoolean = true
* extension[cms-ial2-verified].valueBoolean = true
* extension[aligned-with-cms-data-network].valueBoolean = true


