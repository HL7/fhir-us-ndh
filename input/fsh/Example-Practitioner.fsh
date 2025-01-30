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
//* communication = $BCP47#ru 
//* communication[+].coding = $BCP47#en
* communication[+].extension[communication-proficiency].valueCodeableConcept = $ILRSpeakingScaleCS#"Level 1"
//* communication[=].extension[communication-proficiency].extension[type][+].valueCoding = $LanguageAbilityModeCS#ESP
//* extension[usage-restriction].valueReference = Reference(PractitionerRestrict) 

Instance: GaryGroup
InstanceOf: NdhPnLdApiPractitioner
Description: "Solo Practitioner Gary Group"
Usage: #example
* meta.profile = Canonical(NdhPnLdApiPractitioner)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* identifier[NPI].value = "1003336785"
* identifier[NPI].system = $NPICS
* identifier[NPI].extension[identifier-status].valueCode = $CredentialStatusCS#active
* name.text = "Gary Group, MD"
* name.family = "Group"
* name.given[+] = "Gary"
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
//* communication = $BCP47#ru 
* communication[+].coding = $BCP47#en
//* communication[=].extension[communication-proficiency].extension[level].valueCoding = $LanguageAbilityProficiencyCS#E
//* communication[=].extension[communication-proficiency].extension[type][+].valueCoding = $LanguageAbilityModeCS#ESP
//* extension[usage-restriction].valueReference = Reference(PractitionerRestrict) 

Instance: PractitionerRestrict1
InstanceOf: NdhRestriction
Description: "Restriction for Practitioner address and telecom"
Usage: #inline
* meta.profile = Canonical(NdhRestriction)
* status = #active
* scope = ConsentScopeNdhCS#directory-privacy
* category[0] = ConsentCategoryNdhCS#DRC
* policyRule =  ConsentPolicyRulesCS#ndh-restriction
* extension[restrictFhirPath][+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-restrictFhirPath"
* extension[restrictFhirPath][=].valueExpression.expression = "Practitioner.address.where(use='home')"
* extension[restrictFhirPath][+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-restrictFhirPath"
* extension[restrictFhirPath][=].valueExpression.expression = "Practitioner.telecom.where(use ='home')"


Instance: JoeSmith
InstanceOf: NdhPractitioner
Description: "Practitioner Dr Joe Smith"
Usage: #example
* meta.profile = Canonical(NdhPractitioner)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* contained = PractitionerRestrict1
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* extension[usage-restriction].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-usage-restriction"
* extension[usage-restriction].valueReference = Reference(PractitionerRestrict1)
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "1003357849"
* identifier[NPI].extension[identifier-status].valueCode = $CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
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


