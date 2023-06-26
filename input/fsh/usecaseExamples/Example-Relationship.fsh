
Instance: Network2023
InstanceOf: NdhExNetwork
Description: "Network 2023"
Usage: #example
* meta.profile = Canonical(NdhExNetwork)
* meta.lastUpdated = "2023-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[organization-period].valuePeriod.start = "2023-01-01T00:00:00.0000000+00:00"
* extension[organization-period].valuePeriod.end = "2023-12-31T23:59:59.0000000+00:00"
* partOf = Reference(OrgManageNetwork)
* type = OrgTypeCS#ntwk "Network"
* name = "Network 2023"
* identifier[0].system = "http://acme.org/network"
* identifier[=].value = "AcmeNetwork2023"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "Network2023"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"

Instance: Network2024
InstanceOf: NdhExNetwork
Description: "Network 2024"
Usage: #example
* meta.profile = Canonical(NdhExNetwork)
* meta.lastUpdated = "2024-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[organization-period].valuePeriod.start = "2024-01-01T00:00:00.0000000+00:00"
* extension[organization-period].valuePeriod.end = "2024-12-31T23:59:59.0000000+00:00"
* partOf = Reference(OrgManageNetwork)
* type = OrgTypeCS#ntwk "Network"
* name = "Network 2024"
* identifier[0].system = "http://acme.org/network"
* identifier[=].value = "AcmeNetwork2024"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "Network2024"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"

Instance: OrgManageNetwork
InstanceOf: NdhExOrganization
Description: "Organization Manage Payer Network"
Usage: #example
* meta.profile = Canonical(NdhExOrganization) 
* meta.lastUpdated = "2023-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "Organization Manage Payer Network (OMPN)"
* type = OrgTypeCS#payer "Payer"
* extension[qualification][0].extension[code].valueCodeableConcept =   $NUCCProviderTaxonomy#305R00000X "Preferred Provider Organization"
* identifier[0].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "OrgManageNetwork"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[TID].system = "http://hl7.org.fhir/sid/us-ssn"
* identifier[TID].value = "123-45-6789"
* identifier[TID].extension[identifier-status].valueCode = CredentialStatusCS#active
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* telecom[0].system = #phone
* telecom[=].value = "(123)-222-3333"
* telecom[=].rank = 2
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #tue
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #wed
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #thu
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #fri 
* telecom[=].extension[contactpoint-availabletime][0].extension[availableStartTime].valueTime = 08:00:00
* telecom[=].extension[contactpoint-availabletime][0].extension[availableEndTime].valueTime = 17:00:00
* telecom[+].system = #url
* telecom[=].value = "https://www.org-manage-network.com"
* telecom[=].rank = 1
* address.line[0] = "456 Main Street"
* address.city = "Norwalk"
* address.state = "CT"
* address.postalCode = "00014-1234"
* extension[org-description].valueString = "OMPN of IL is a leading provider of health and other insurance products."

Instance: PractitionerOneWithNetwork2023And2024
InstanceOf: NdhExPractitioner
Description: "Practitioner1 with Network 2023 and 2024"
Usage: #example
* meta.profile = Canonical(NdhExPractitioner)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "1234567890"
* identifier[NPI].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[NPI].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "PractitionerOneWithNetwork2023And2024"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier.extension[identifier-status].valueCode = CredentialStatusCS#active
* name.text = "PractitionerOne Network2023And2024, MD"
* name.family = "PractitionerOne"
* name.given[+] = "Network2023And2024"
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
* communication[+].coding = $BCP47#en

Instance: PractitionerTwoWithNetwork2023ForFirstSixMonths
InstanceOf: NdhExPractitioner
Description: "Practitioner2 with Network 2023 for first six months"
Usage: #example
* meta.profile = Canonical(NdhExPractitioner)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "1234567891"
* identifier[NPI].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[NPI].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "PractitionerTwoWithNetwork2023ForFirstSixMonths"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name.text = "PractitionerTwo Network2023, MD"
* name.family = "PractitionerTwo"
* name.given[+] = "Network2023"
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
* communication[+].coding = $BCP47#en


Instance: PractitionerOneNetwork2023Role
InstanceOf: NdhExPractitionerRole
Description: "PractitionerOne Network 2023 PractitionerRole"
Usage: #example
* meta.profile = Canonical(NdhExPractitionerRole)
* meta.lastUpdated = "2023-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* extension[network].valueReference = Reference(Network2023)
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "PractitionerOneNetwork2023Role"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* period.start = "2023-01-01T00:00:00.0000000+00:00"
* period.end = "2023-12-31T23:59:59.0000000+00:00"
* practitioner = Reference(PractitionerOneWithNetwork2023And2024)
* telecom[+].system = #url
* telecom[=].value = "https://www.PractitionerOneNetwork2023Role.com"
* telecom[=].rank = 1

Instance: PractitionerOneNetwork2024Role
InstanceOf: NdhExPractitionerRole
Description: "PractitionerOne Network 2024 PractitionerRole"
Usage: #example
* meta.profile = Canonical(NdhExPractitionerRole)
* meta.lastUpdated = "2024-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* extension[network].valueReference = Reference(Network2024)
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "PractitionerOneNetwork2024Role"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* period.start = "2024-01-01T00:00:00.0000000+00:00"
* period.end = "2024-12-31T23:59:59.0000000+00:00"
* practitioner = Reference(PractitionerOneWithNetwork2023And2024)
* telecom[+].system = #url
* telecom[=].value = "https://www.PractitionerOneNetwork2024Role.com"
* telecom[=].rank = 1

Instance: PractitionerTwoNetwork2023FirstSixMonthRole
InstanceOf: NdhExPractitionerRole
Description: "PractitionerTwo Network 2023 First Six Months PractitionerRole"
Usage: #example
* meta.profile = Canonical(NdhExPractitionerRole)
* meta.lastUpdated = "2023-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* extension[network].valueReference = Reference(Network2023)
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "PractitionerTwoNetwork2023FirstSixMonthRole"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* period.start = "2023-01-01T00:00:00.0000000+00:00"
* period.end = "2023-06-30T23:59:59.0000000+00:00"
* practitioner = Reference(PractitionerTwoWithNetwork2023ForFirstSixMonths)
* telecom[+].system = #url
* telecom[=].value = "https://www.PractitionerTwoNetwork2023FirstSixMonthRole.com"
* telecom[=].rank = 1
