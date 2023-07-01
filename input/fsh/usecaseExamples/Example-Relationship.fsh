
Instance: NetworkPPO
InstanceOf: NdhExNetwork
Description: "Network PPO"
Usage: #example
* meta.profile = Canonical(NdhExNetwork)
* meta.lastUpdated = "2023-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
//* extension[organization-period].valuePeriod.start = "2023-01-01T00:00:00.0000000+00:00"
//* extension[organization-period].valuePeriod.end = "2023-12-31T23:59:59.0000000+00:00"
* partOf = Reference(OrgManageNetwork)
* type = OrgTypeCS#ntwk "Network"
* name = "Network PPO"
* identifier[0].system = "http://acme.org/network"
* identifier[=].value = "AcmeNetworkPPO"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "NetworkPPO"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"

Instance: NetworkHMO
InstanceOf: NdhExNetwork
Description: "Network HMO"
Usage: #example
* meta.profile = Canonical(NdhExNetwork)
* meta.lastUpdated = "2024-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
//* extension[organization-period].valuePeriod.start = "2024-01-01T00:00:00.0000000+00:00"
//* extension[organization-period].valuePeriod.end = "2024-12-31T23:59:59.0000000+00:00"
* partOf = Reference(OrgManageNetwork)
* type = OrgTypeCS#ntwk "Network"
* name = "Network HMO"
* identifier[0].system = "http://acme.org/network"
* identifier[=].value = "AcmeNetworkHMO"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "NetworkHMO"
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
* extension[org-description].valueString = "OMPN of CT is a leading provider of health and other insurance products."

Instance: PractitionerOneWithNetworkPPOAndHMO
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
* identifier[=].value = "PractitionerOneWithNetworkPPOAndHMO"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier.extension[identifier-status].valueCode = CredentialStatusCS#active
* name.text = "PractitionerOne NetworkPPOAnd2024, MD"
* name.family = "PractitionerOne"
* name.given[+] = "NetworkPPOAnd2024"
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

Instance: PractitionerTwoWithNetworkPPOLeftAfterSixMonths
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
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "PractitionerTwoWithNetworkPPOLeftAfterSixMonths"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name.text = "PractitionerTwo NetworkPPO, MD"
* name.family = "PractitionerTwo"
* name.given[+] = "NetworkPPO"
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


Instance: PractitionerOneNetworkPPORole
InstanceOf: NdhExPractitionerRole
Description: "PractitionerOne Network 2023 PractitionerRole"
Usage: #example
* meta.profile = Canonical(NdhExPractitionerRole)
* meta.lastUpdated = "2023-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* extension[network].valueReference = Reference(NetworkPPO)
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "PractitionerOneNetworkPPORole"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
//* period.start = "2023-01-01T00:00:00.0000000+00:00"
* period.end = "2023-12-31T23:59:59.0000000+00:00"
* practitioner = Reference(PractitionerOneWithNetworkPPOAndHMO)
* telecom[+].system = #url
* telecom[=].value = "https://www.PractitionerOneNetworkPPORole.com"
* telecom[=].rank = 1

Instance: PractitionerOneNetworkHMORole
InstanceOf: NdhExPractitionerRole
Description: "PractitionerOne Network 2024 PractitionerRole"
Usage: #example
* meta.profile = Canonical(NdhExPractitionerRole)
* meta.lastUpdated = "2024-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* extension[network].valueReference = Reference(NetworkHMO)
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "PractitionerOneNetworkHMORole"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* period.start = "2024-01-01T00:00:00.0000000+00:00"
//* period.end = "2024-12-31T23:59:59.0000000+00:00"
* practitioner = Reference(PractitionerOneWithNetworkPPOAndHMO)
* telecom[+].system = #url
* telecom[=].value = "https://www.PractitionerOneNetworkHMORole.com"
* telecom[=].rank = 1

Instance: PractitionerTwoNetworkPPOLeftAfterSixMonthRole
InstanceOf: NdhExPractitionerRole
Description: "PractitionerTwo Network 2023 First Six Months PractitionerRole"
Usage: #example
* meta.profile = Canonical(NdhExPractitionerRole)
* meta.lastUpdated = "2023-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* extension[network].valueReference = Reference(NetworkPPO)
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "PractitionerTwoNetworkPPOLeftAfterSixMonthRole"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
//* period.start = "2023-01-01T00:00:00.0000000+00:00"
* period.end = "2023-06-30T23:59:59.0000000+00:00"
* practitioner = Reference(PractitionerTwoWithNetworkPPOLeftAfterSixMonths)
* telecom[+].system = #url
* telecom[=].value = "https://www.PractitionerTwoNetworkPPOLeftAfterSixMonthRole.com"
* telecom[=].rank = 1
