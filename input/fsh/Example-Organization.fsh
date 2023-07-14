Instance: Acme
InstanceOf: NdhOrganization
Description: "Payer Organization"
Usage: #example
* meta.profile = Canonical(NdhOrganization) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "Acme of CT"
* type = OrgTypeCS#payer "Payer"
* extension[qualification][0].extension[code].valueCodeableConcept =   $NUCCProviderTaxonomy#3336C0003X "Community/Retail Pharmacy"
* extension[qualification][=].extension[status].valueCode = http://hl7.org/fhir/us/ndh/CodeSystem/QualificationStatusCS#active
* alias[0].extension[org-alias-type].valueCodeableConcept = http://hl7.org/fhir/us/ndh/CodeSystem/OrgAliasTypeCS#historical
* alias[=].extension[org-alias-period].valuePeriod.start = 2011-05-23
* alias[=].extension[org-alias-period].valuePeriod.end = 2011-05-27
//* alias[=].value = "Acme History"
//* extension[insurance-reference][0].valueReference = Reference(AcmeQHPBronze)
* extension[insuranceplan].valueReference = Reference(AcmeQHPBronze)
//* extension[endpoint].valueReference = Reference(AcmeOfCTPortalEndpoint) 
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #tue
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #wed
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #thu
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #fri 
* telecom[=].extension[contactpoint-availabletime][0].extension[availableStartTime].valueTime = 08:00:00
* telecom[=].extension[contactpoint-availabletime][0].extension[availableEndTime].valueTime = 17:00:00
* telecom[+].system = #url
* telecom[=].value = "https://www.acmeofct.com"
* telecom[=].rank = 1
* address.line[0] = "456 Main Street"
* address.city = "Norwalk"
* address.state = "CT"
* address.postalCode = "00014-1234"
* extension[org-description].valueString = "Acme of CT is a leading provider of health and other insurance products."


Instance: BigBox
InstanceOf: NdhOrganization
Description: "Organization that Manages 2 of PharmChain's pharmacies"
Usage: #example
* meta.profile =  Canonical(NdhOrganization) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "BigBox"
* type = OrgTypeCS#bus "Non-Healthcare Business"
* name = "Big Box Retailer"
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #tue
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #wed
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #thu
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #fri 
* telecom[=].extension[contactpoint-availabletime][0].extension[availableStartTime].valueTime = 08:00:00
* telecom[=].extension[contactpoint-availabletime][0].extension[availableEndTime].valueTime = 17:00:00
* telecom[+].system = #url
* telecom[=].value = "https://www.bixboxretailer.com"
* telecom[=].rank = 1
* address.line[0] = "456 Main Street"
* address.city = "Norwalk"
* address.state = "CT"
* address.postalCode = "00014-1234"



Instance: MilitaryHealthcareOrganization
InstanceOf: NdhOrganization
Description: "Military Healthcare Organization"
Usage: #example
* meta.profile =  Canonical(NdhOrganization) 
* meta.lastUpdated = "2023-06-09T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* contained.resourceType = "Consent"
* contained.id = "restrict"
* contained.meta.profile = Canonical(NdhRestriction)
* contained.status = #active
* contained.scope = ConsentScopeNdhCS#directory-privacy
* contained.category[0] = ConsentCategoryNdhCS#DRC
* contained.policyRule =  ConsentPolicyRulesCS#ndh-restriction
* extension[usage-restriction].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-usage-restriction"
* extension[usage-restriction].valueReference = Reference(Consent/restrict)
* extension[digitalcertificate][+].extension[certificate].valueString = "12345678901234567890"
* extension[digitalcertificate][=].extension[expirationDate].valueDate = "2023-06-09"
* name = "Military Healthcare Organization"
* type = OrgTypeCS#fac "Facility"
* name = "Military Healthcare Organization"
* telecom[0].system = #phone
* telecom[=].value = "(123)-224-3333"
* telecom[=].rank = 2
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #tue
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #wed
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #thu
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #fri 
* telecom[=].extension[contactpoint-availabletime][0].extension[availableStartTime].valueTime = 08:00:00
* telecom[=].extension[contactpoint-availabletime][0].extension[availableEndTime].valueTime = 17:00:00
* telecom[+].system = #url
* telecom[=].value = "https://www.bixboxretailer.com"
* telecom[=].rank = 1
* address.line[0] = "456 Main Street"
* address.city = "Norwalk"
* address.state = "CT"
* address.postalCode = "00014-1234"


/*
Instance: MilitaryHealthcareOrganization-2
InstanceOf: NdhOrganization
Description: "Military Healthcare Organization"
Usage: #example
* meta.profile =  Canonical(NdhOrganization) 
* meta.lastUpdated = "2023-06-09T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* contained.resourceType = "Consent"
* contained.id = "restrict"
* contained.meta.profile = Canonical(NdhRestriction)
* contained.status = #active
* contained.scope = ConsentScopeNdhCS#directory-privacy
* contained.category[0] = ConsentCategoryNdhCS#DRC
* contained.policyRule =  ConsentPolicyRulesCS#ndh-restriction
//* contained.extension[restrictFhirPath][0].valueString = "Organization.address)"
//* extension[usage-restriction-element-context].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-usage-restriction-element-context"
//* extension[usage-restriction-element-context].valueReference = Reference(Consent/restrict)
* name = "Military Healthcare Organization"
* type = OrgTypeCS#fac "Facility"
* name = "Military Healthcare Organization"
* telecom[0].system = #phone
* telecom[=].value = "(123)-224-3333"
* telecom[=].rank = 2
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #tue
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #wed
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #thu
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #fri 
* telecom[=].extension[contactpoint-availabletime][0].extension[availableStartTime].valueTime = 08:00:00
* telecom[=].extension[contactpoint-availabletime][0].extension[availableEndTime].valueTime = 17:00:00
* telecom[+].system = #url
* telecom[=].value = "https://www.bixboxretailer.com"
* telecom[=].rank = 1
* address.line[0] = "456 Main Street"
* address.city = "Norwalk"
* address.state = "CT"
* address.postalCode = "00014-1234"
*/


Instance: BurrClinic
InstanceOf: NdhOrganization
Description: "Burr Clinic provides service to Hartford Hospital"
Usage: #example
* meta.profile = Canonical(NdhOrganization)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* identifier[NPI].value = "1356362586"
* identifier[NPI].system = $NPICS
* identifier.extension[identifier-status].valueCode = CredentialStatusCS#active
* name = "Burr Clinic"
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[+].system = #url
* telecom[=].value = "https://www.burrclinic.com"
* telecom[=].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Anytown"
* address.state = "CT"
* address.postalCode = "00014-1234"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "(111)-222-3333"
* contact.telecom[0].rank = 1
* type = OrgTypeCS#fac "Facility"
* extension[logo].valueAttachment.contentType = #image/png
* extension[logo].valueAttachment.url = "flame-logo"

Instance: HamiltonClinic
InstanceOf: NdhOrganization
Description: "Hamilton Clinic (a Division of Hartford Hospital)"
Usage: #example
* meta.profile = Canonical(NdhOrganization)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* identifier[NPI].value = "1447302161"
* identifier[NPI].system = $NPICS
* identifier.extension[identifier-status].valueCode = CredentialStatusCS#active
* name = "Hamilton Clinic"
* partOf = Reference(Hospital)
* telecom[0].system = #phone
* telecom[0].value = "(111)-222-3333"
* telecom[0].rank = 2
* telecom[1].system = #url
* telecom[1].value = "https://www.hartfordgeneralhospital.com"
* telecom[1].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Anytown"
* address.state = "CT"
* address.postalCode = "00014-1234"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "(111)-222-3333"
* contact.telecom[0].rank = 1
* type = OrgTypeCS#fac "Facility"


Instance: HartfordOrthopedics 
InstanceOf: NdhOrganization
Description: "Hartford Orthopedic Services is a group providing Orthopods for Acme of CT at Hartford General Hospital"
Usage: #example
* meta.profile = Canonical(NdhOrganization)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* identifier[NPI].value = "1518425289"
* identifier[NPI].system = $NPICS
* identifier.extension[identifier-status].valueCode = CredentialStatusCS#active
* name = "Hartford Orthopedics Services"
* type = OrgTypeCS#prvgrp "Provider Group"
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #tue
* telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #wed
* telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #thu
* telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #fri 
* telecom[=].extension[contactpoint-availabletime][=].extension[allDay].valueBoolean = true
* telecom[=].extension[contactpoint-availabletime][+].extension[daysOfWeek][0].valueCode  = #sat
* telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #sun 
* telecom[=].extension[contactpoint-availabletime][=].extension[availableStartTime].valueTime = 08:00:00
* telecom[=].extension[contactpoint-availabletime][=].extension[availableEndTime].valueTime = 17:00:00
* telecom[+].system = #url
* telecom[=].value = "https://www.orga.com"
* telecom[=].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Anytown"
* address.state = "CT"
* address.postalCode = "00014-1234"
* contact.telecom[0].system = #phone
* contact.telecom[=].value = "(111)-222-3333"
* contact.telecom[=].rank = 2
* contact.telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* contact.telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #tue
* contact.telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #wed
* contact.telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #thu
* contact.telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #fri 
* contact.telecom[=].extension[contactpoint-availabletime][=].extension[allDay].valueBoolean = true
* contact.telecom[=].extension[contactpoint-availabletime][+].extension[daysOfWeek][0].valueCode  = #sat
* contact.telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #sun 
* contact.telecom[=].extension[contactpoint-availabletime][=].extension[availableStartTime].valueTime = 08:00:00
* contact.telecom[=].extension[contactpoint-availabletime][=].extension[availableEndTime].valueTime = 17:00:00


Instance: Hospital
InstanceOf: NdhExOrganization
Description: "Hartford General Hospital"
Usage: #example
* meta.profile = Canonical(NdhExOrganization)
* meta.lastUpdated = "2023-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* type = OrgTypeCS#fac "Facility"
* extension[qualification][0].extension[code].valueCodeableConcept =   $NUCCProviderTaxonomy#282N00000X "General Acute Care Hospital"
* identifier[NPI].value = "1518575422"
* identifier[NPI].system = $NPICS
* identifier.extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "Hospital"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* name = "Hartford General Hospital"
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[+].system = #url
* telecom[=].value = "https://www.hartfordgeneralhospital.com"
* telecom[=].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Hartford"
* address.state = "CT"
* address.postalCode = "00014-1234"
* contact.telecom[0].system = #phone
* contact.telecom[=].value = "(111)-222-3333"
* contact.telecom[=].rank = 1
* extension[org-description].valueString = "General Acute Care Hospital"



Instance: Hospital2
InstanceOf: NdhPnQryOrganization
Description: "Hartford General Hospital"
Usage: #example
* meta.profile = Canonical(NdhPnQryOrganization)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* identifier[NPI].value = "1598398950"
* identifier[NPI].system = $NPICS
* identifier.extension[identifier-status].valueCode = CredentialStatusCS#active
* name = "Hartford General Hospital"
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[+].system = #url
* telecom[=].value = "https://www.hartfordgeneralhospital.com"
* telecom[=].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Hartford"
* address.state = "CT"
* address.postalCode = "00014-1234"
* contact.telecom[0].system = #phone
* contact.telecom[=].value = "(111)-222-3333"
* contact.telecom[=].rank = 1
* type = OrgTypeCS#fac "Facility"

Instance: PharmChain
InstanceOf: NdhOrganization
Description: "Organization that Provides Pharmacy Services"
Usage: #example
* meta.profile = Canonical(NdhOrganization) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "Pharm Chain"
* type = OrgTypeCS#prvgrp "Provider Group"
* identifier[NPI].system = $NPICS
* identifier[NPI].value = "1710909486"
* identifier.extension[identifier-status].valueCode = CredentialStatusCS#active
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #tue
* telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #wed
* telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #thu
* telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #fri 
* telecom[=].extension[contactpoint-availabletime][=].extension[availableStartTime].valueTime = 08:00:00
* telecom[=].extension[contactpoint-availabletime][=].extension[availableEndTime].valueTime = 17:00:00
* telecom[+].system = #url
* telecom[=].value = "https://www.pharmchain.com"
* telecom[=].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Norwalk"
* address.state = "CT"
* address.postalCode = "00014-1234"


Instance: StateOfIllinoisLicBoard
InstanceOf: NdhOrganization
Description: "State of Illinois Licensing Board"
Usage: #example
* meta.profile = Canonical(NdhOrganization) 
* meta.lastUpdated = "2023-06-03T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "State of Illinois Licensing Board"
* type = OrgTypeCS#bus "Non-Healthcare Business"
* identifier[TID].system = "http://hl7.org.fhir/sid/us-ssn"
* identifier[TID].value = "1234-12-1234"
* identifier.extension[identifier-status].valueCode = CredentialStatusCS#active
* telecom[0].system = #phone
* telecom[=].value = "(888)-473-4858"
* telecom[=].rank = 2
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #tue
* telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #wed
* telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #thu
* telecom[=].extension[contactpoint-availabletime][=].extension[daysOfWeek][+].valueCode  = #fri 
* telecom[=].extension[contactpoint-availabletime][=].extension[availableStartTime].valueTime = 08:00:00
* telecom[=].extension[contactpoint-availabletime][=].extension[availableEndTime].valueTime = 17:00:00
* telecom[+].system = #url
* telecom[=].value = "https://idfpr.illinois.gov/profs/physicians"
* telecom[=].rank = 1
* address.line[0] = "555 West Monroe Street"
* address.city = "Chicago"
* address.state = "IL"
* address.postalCode = "60661"