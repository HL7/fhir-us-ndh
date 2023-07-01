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
* qualification[=].issuer.display = "State of Connecticut"
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
//* contained.meta.profile = Canonical(NdhRestriction)
//* contained.resourceType = "Consent"
//* contained.id = "restrict"
//* contained.status = #active
//* contained.scope = ConsentScopeNdhCS#directory-privacy
//* contained.category[0] = ConsentCategoryNdhCS#DRC
//* contained.policyRule =  ConsentPolicyRulesCS#ndh-restriction
//* contained.extension[restrictFhirPath][+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-restrictFhirPath"
//* contained.extension[restrictFhirPath][=].valueExpression.expression = "Practitioner?address.use=home"
//* contained.extension[restrictFhirPath][0].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-restrictFhirPath"
//* contained.extension[restrictFhirPath][=].valueString = "Practitioner?address.type=home"
//* contained.extension[restrictFhirPath][0].valueString = "Practitioner.address.where(use = 'home')"
//* contained.extension[restrictFhirPath][+].valueString = "Practitioner.telecom.where(use = 'home')"
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* extension[usage-restriction].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-usage-restriction"
//* extension[usage-restriction].valueReference = Reference(Consent/restrict)
* extension[usage-restriction].valueReference = Reference(PractitionerRestrict1)
//extension[usage-restriction].valueReference = Reference(restrict)
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "1245319599"
* identifier[NPI].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "JoeSmith"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* active = true
* name.text = "Joe Smith, MD"
* name.family = "Smith"
* name.given[0] = "Joe"
* address[0].line[0] = "501 Echo Lake"
* address[=].city = "Chicago"
* address[=].state = "IL"
* address[=].postalCode = "60661"
* address[=].country = "US"
* address[=].use = #home
//* address[=].use.extension[+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-usage-restriction"
//* address[=].use.extension[=].valueReference.reference = "Consent/restrict"
* address[+].line[0] = "400 Lee Rd Chicago, IL 60662"
* address[=].city = "Chicago"
* address[=].state = "IL"
* address[=].postalCode = "60662"
* address[=].country = "US"
* address[=].use = #work
* address[=].type = #physical
* telecom[+].system = #phone
* telecom[=].value = "555-123-6666"
* telecom[=].use = #home
//* telecom[=].extension[+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-usage-restriction"
//* telecom[=].extension[=].valueReference.reference = "Consent/restrict"
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


/*
Instance: JoeBrown
InstanceOf: NdhPractitioner
Description: "Practitioner Dr Joe Brown"
Usage: #example
* meta.profile = Canonical(NdhPractitioner)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* contained.resourceType = "Consent"
* contained.id = "restrict"
* contained.meta.profile = Canonical(NdhRestriction)
* contained.status = #active
* contained.scope = ConsentScopeNdhCS#directory-privacy
* contained.category[0] = ConsentCategoryNdhCS#DRC
* contained.policyRule =  ConsentPolicyRulesCS#ndh-restriction
//* contained.extension[restrictFhirPath][0].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-restrictFhirPath"
//* contained.extension[restrictFhirPath][=].valueString = "Practitioner.address.where(use = 'home')"
//* contained.extension[restrictFhirPath][0].valueString = "Practitioner.address.where(use = 'home')"
//* contained.extension[restrictFhirPath][+].valueString = "Practitioner.telecom.where(use = 'home')"
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "1245319598"
* identifier[NPI].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "JoeBrown"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name.text = "Joe Brown, MD"
* name.family = "Brown"
* name.given[0] = "Joe"
* address[0].line[0] = "123 Echo Lake"
* address[=].city = "Chicago"
* address[=].state = "IL"
* address[=].postalCode = "60661"
* address[=].country = "US"
* address[=].use = #home
//* address[=].use.extension[+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-usage-restriction"
//* address[=].use.extension[=].valueReference.reference = "Consent/restrict"
* address[=].type = #physical
//* address[=].extension[0].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-usage-restriction"
//* address[=].extension[=].valueReference[0] = Reference(Consent/restrict)
* address[+].line[0] = "444 Lee Rd Chicago, IL 60662"
* address[=].city = "Chicago"
* address[=].state = "IL"
* address[=].postalCode = "60662"
* address[=].country = "US"
* address[=].use = #work
* address[=].type = #physical
* telecom[0].system = #phone
* telecom[=].value = "555-123-5555"
* telecom[=].use = #home
//* telecom[=].extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-usage-restriction"
//* telecom[=].extension.valueReference.reference = "Consent/restrict"
* telecom[+].system = #phone
* telecom[=].value = "555-123-5678"
* telecom[=].use = #work
* qualification[0].code = $V2table0360CS#MD
* qualification[=].issuer.display = "State of Illinois"
* qualification[=].code.text = "MD"
//* qualification[=].extension[practitioner-qualification].extension[status].valueCode = QualificationStatusCS#active 
//* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
//* qualification[+].code = $NUCCProviderTaxonomy#207R00000X "Internal Medicine Physician"
//* qualification[=].issuer.display = "American Board of Internal Medicine"
//* qualification[=].code.text = "Board Certified Internal Medicine"
//* qualification[=].extension[practitioner-qualification].extension[status].valueCode = QualificationStatusCS#active 
//* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
* qualification[+].code = $NUCCProviderTaxonomy#207RC0000X "Cardiovascular Disease Physician"
* qualification[=].issuer.display = "American Board of Internal Medicine"
* qualification[=].code.text = "Board Certified Cardiovascular Disease"
* qualification[=].extension[practitioner-qualification].extension[status].valueCode = QualificationStatusCS#active 
* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
//* rating.type = "5"
//* rating[0].value.text = "5"
//* extension[rating].extension[ratingType].valueCodeableConcept = $USPSStateCS#IL 
//* extension[rating].extension[ratingValue].valueString = "5"
*/