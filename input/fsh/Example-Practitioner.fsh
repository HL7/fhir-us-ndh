Instance: HansSolo
InstanceOf: NdhPractitioner
Description: "Solo Practitioner Hans Solo"
Usage: #example
* meta.profile = Canonical(NdhPractitioner)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* identifier.value = "NPI3233"
* identifier.system = $NPICS
* identifier.extension[identifier-status].valueCode = CredentialStatusCS#active
* name.text = "Hans Solo, MD"
* name.family = "Solo"
* name.given[+] = "Hans"

* qualification[0].code = $V2table0360CS#MD
* qualification[=].issuer.display = "State of Illinois"
* qualification[=].code.text = "MD"
* qualification[=].extension[practitioner-qualification].extension[status].valueCode = $NdhQualificationStatusCS#active 
* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
* qualification[+].code = $NUCCProviderTaxonomy#207R00000X "Internal Medicine Physician"
* qualification[=].issuer.display = "American Board of Internal Medicine"
* qualification[=].code.text = "Board Certified Internal Medicine"
* qualification[=].extension[practitioner-qualification].extension[status].valueCode = $NdhQualificationStatusCS#active 
* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
* qualification[+].code = $NUCCProviderTaxonomy#207RC0000X "Cardiovascular Disease Physician"
* qualification[=].issuer.display = "American Board of Internal Medicine"
* qualification[=].code.text = "Board Certified Cardiovascular Disease"
* qualification[=].extension[practitioner-qualification].extension[status].valueCode = $NdhQualificationStatusCS#active 
* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
//* communication[0].extension[communication-proficiency].valueCodeableConcept = $NdhLanguageProficiencyCS#30
//* communication = $BCP47#ru 
* communication[+].coding = $BCP47#en
//* communication[=].extension[communication-proficiency].extension[level].valueCoding = $LanguageAbilityProficiencyCS#E
//* communication[=].extension[communication-proficiency].extension[type][+].valueCoding = $LanguageAbilityModeCS#ESP
//* extension[usage-restriction].valueReference = Reference(PractitionerRestrict) 

Instance: JoeSmith
InstanceOf: NdhPractitioner
Description: "Practitioner Dr Joe Smith"
Usage: #example
* meta.profile = Canonical(NdhPractitioner)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
//* contained.resourceType = "Consent"
//* contained.id = "restrict"
//* contained.meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Restriction"
//* contained.status = #active
//* contained.scope = ConsentScopeNdhCS#directory-privacy
//* contained.category[0] = ConsentCategoryNdhCS#DRC
//* contained.policyRule =  ConsentPolicyRulesCS#ndh-restriction
//* contained.extension[restrictFhirPath][0].valueString = "Practitioner.address.where(use = 'home')"
//* contained.extension[restrictFhirPath][+].valueString = "Practitioner.telecom.where(use = 'home')"
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "1245319599"
* identifier[NPI].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[1].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "JoeSmith"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name.text = "Joe Smith, MD"
* name.family = "Smith"
* name.given[0] = "Joe"
* address[0].line[0] = "501 Echo Lake"
* address[=].city = "Chicago"
* address[=].state = "IL"
* address[=].postalCode = "60661"
* address[=].country = "US"
* address[=].use = #home
* address[=].type = #physical
//* address[=].extension.valueReference = Reference(restrict)
* address[+].line[0] = "400 Lee Rd Chicago, IL 60662"
* address[=].city = "Chicago"
* address[=].state = "IL"
* address[=].postalCode = "60662"
* address[=].country = "US"
* address[=].use = #work
* address[=].type = #physical
* telecom[0].system = #phone
* telecom[=].value = "555-123-6666"
* telecom[=].use = #home
//* telecom[=].extension.valueReference = Reference(restrict)
* telecom[+].system = #phone
* telecom[=].value = "555-123-1234"
* telecom[=].use = #work
* qualification[0].code = $V2table0360CS#MD
* qualification[=].issuer.display = "State of Illinois"
* qualification[=].code.text = "MD"
* qualification[=].extension[practitioner-qualification].extension[status].valueCode = QualificationStatusCS#active 
* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
* qualification[+].code = $NUCCProviderTaxonomy#207R00000X "Internal Medicine Physician"
* qualification[=].issuer.display = "American Board of Internal Medicine"
* qualification[=].code.text = "Board Certified Internal Medicine"
* qualification[=].extension[practitioner-qualification].extension[status].valueCode = QualificationStatusCS#active 
* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
//* qualification[+].code = $NUCCProviderTaxonomy#207RC0000X "Cardiovascular Disease Physician"
//* qualification[=].issuer.display = "American Board of Internal Medicine"
//* qualification[=].code.text = "Board Certified Cardiovascular Disease"
//* qualification[=].extension[practitioner-qualification].extension[status].valueCode = QualificationStatusCS#active 
//* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
//* rating.type = "5"
//* rating[0].value.text = "5"
//* extension[rating].extension[ratingType].valueCodeableConcept = $USPSStateCS#IL 
//* extension[rating].extension[ratingValue].valueString = "5"
