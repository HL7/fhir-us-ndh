
Instance: Network1
InstanceOf: NdhNdApiNetwork
Description: "Network1"
Usage: #example
* meta.profile = Canonical(NdhNdApiNetwork)
* meta.lastUpdated = "2023-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
//* extension[organization-period].valuePeriod.start = "2023-01-01T00:00:00.0000000+00:00"
//* extension[organization-period].valuePeriod.end = "2023-12-31T23:59:59.0000000+00:00"
* partOf = Reference(OrgManageNetwork)
* type = OrgTypeCS#ntwk "Network"
* name = "Network1"
* identifier[0].system = "http://acme.org/network"
* identifier[=].value = "AcmeNetwork1"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "Network1"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"


Instance: MedicareAdvantage
InstanceOf: NdhNdApiInsurancePlan
Description: "Medicare Advantage Plan"
Usage: #example
* meta.profile = Canonical(NdhNdApiInsurancePlan) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* language = #en-US
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "MedicareAdvantage"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name = "Medicare Advantage Plan"
* type = InsuranceProductTypeCS#mediadv "Medicare Advantage"
//* plan.type = InsurancePlanTypeCS#mediadv "Medicare Advantage"
* ownedBy = Reference (OrgManageNetwork)
* administeredBy = Reference (OrgManageNetwork)
* network[0] = Reference(Network1)
//* coverageArea = Reference(StateOfCTLocation)
//* endpoint = Reference(AcmeOfCTPortalEndpoint)
* status = #active

Instance: Network2
InstanceOf: NdhNdApiNetwork
Description: "Network2"
Usage: #example
* meta.profile = Canonical(NdhNdApiNetwork)
* meta.lastUpdated = "2024-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
//* extension[organization-period].valuePeriod.start = "2024-01-01T00:00:00.0000000+00:00"
//* extension[organization-period].valuePeriod.end = "2024-12-31T23:59:59.0000000+00:00"
* partOf = Reference(OrgManageNetwork)
* type = OrgTypeCS#ntwk "Network"
* name = "Network2"
* identifier[0].system = "http://acme.org/network"
* identifier[=].value = "AcmeNetwork2"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "Network2"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"


Instance: MedicareAdvantageHMO
InstanceOf: NdhNdApiInsurancePlan
Description: "Medicare Advantage HMO"
Usage: #example
* meta.profile = Canonical(NdhNdApiInsurancePlan) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* language = #en-US
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "MedicareAdvantageHMO"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name = "Medicare Advantage Plan"
* type = InsuranceProductTypeCS#mediadvhmo "Medicare Advantage HMO"
//* plan.type = InsurancePlanTypeCS#mediadv "Medicare Advantage"
* ownedBy = Reference (OrgManageNetwork)
* administeredBy = Reference (OrgManageNetwork)
* network[0] = Reference(Network2)
//* coverageArea = Reference(StateOfCTLocation)
//* endpoint = Reference(AcmeOfCTPortalEndpoint)
* status = #active

Instance: OrgManageNetwork
InstanceOf: NdhNdApiOrganization
Description: "Organization Manage Payer Network"
Usage: #example
* meta.profile = Canonical(NdhNdApiOrganization) 
* meta.lastUpdated = "2023-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "Organization Manage Payer Network (OMPN)"
* type = OrgTypeCS#payer "Payer"
* extension[qualification][0].extension[code].valueCodeableConcept =   $NUCCProviderTaxonomy#305R00000X "Preferred Provider Organization"
* identifier[TID].system = "http://hl7.org.fhir/sid/us-ssn"
* identifier[TID].value = "123-45-6789"
* identifier[TID].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "OrgManageNetwork"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
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

Instance: PractitionerOneWithNetwork1AndNetwork2
InstanceOf: NdhNdApiPractitioner
Description: "Practitioner1 with Network1 and Network2"
Usage: #example
* meta.profile = Canonical(NdhNdApiPractitioner)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "1003357849"
//* identifier[NPI].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[NPI].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "PractitionerOneWithNetwork1AndNetwork2"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
//* identifier.extension[identifier-status].valueCode = CredentialStatusCS#active
* name.text = "PractitionerOne Network1And2024, MD"
* name.family = "PractitionerOne"
* name.given[+] = "Network1AndNetwork2"
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

Instance: PractitionerTwoWithNetwork1LeftAfterSixMonths
InstanceOf: NdhNdApiPractitioner
Description: "Practitioner2 with Network 2023 for first six months"
Usage: #example
* meta.profile = Canonical(NdhNdApiPractitioner)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "1003487224"
* identifier[NPI].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "PractitionerTwoWithNetwork1LeftAfterSixMonths"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name.text = "PractitionerTwo Network1, MD"
* name.family = "PractitionerTwo"
* name.given[+] = "Network1"
* qualification[0].code = $V2table0360CS#MD "Doctor of Medicine"
* qualification[=].code.text = "MD"
* qualification[=].issuer.display = "State of Illinois"
* qualification[=].extension[practitioner-qualification].extension[status].valueCode = $NdhQualificationStatusCS#active 
* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
* qualification[+].code = $NUCCProviderTaxonomy#207R00000X "Internal Medicine Physician"
* qualification[=].code.text = "Board Certified Internal Medicine"
* qualification[=].issuer.display = "American Board of Internal Medicine"
* qualification[=].extension[practitioner-qualification].extension[status].valueCode = $NdhQualificationStatusCS#active 
* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
* qualification[+].code = $NUCCProviderTaxonomy#207RC0000X "Cardiovascular Disease Physician"
* qualification[=].code.text = "Board Certified Cardiovascular Disease"
* qualification[=].issuer.display = "American Board of Internal Medicine"
* qualification[=].extension[practitioner-qualification].extension[status].valueCode = $NdhQualificationStatusCS#active 
* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL  
* communication[+].coding = $BCP47#en


Instance: PractitionerOneNetwork1Role
InstanceOf: NdhNdApiPractitionerRole
Description: "PractitionerOne Network 2023 PractitionerRole"
Usage: #example
* meta.profile = Canonical(NdhNdApiPractitionerRole)
* meta.lastUpdated = "2023-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* extension[network].valueReference = Reference(Network1)
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "PractitionerOneNetwork1Role"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
//* period.start = "2023-01-01T00:00:00.0000000+00:00"
* period.end = "2023-12-31T23:59:59.0000000+00:00"
* practitioner = Reference(PractitionerOneWithNetwork1AndNetwork2)
* telecom[+].system = #url
* telecom[=].value = "https://www.PractitionerOneNetwork1Role.com"
* telecom[=].rank = 1

Instance: PractitionerOneNetwork2Role
InstanceOf: NdhNdApiPractitionerRole
Description: "PractitionerOne Network 2024 PractitionerRole"
Usage: #example
* meta.profile = Canonical(NdhNdApiPractitionerRole)
* meta.lastUpdated = "2024-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* extension[network].valueReference = Reference(Network2)
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "PractitionerOneNetwork2Role"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* period.start = "2023-06-01T00:00:00.0000000+00:00"
//* period.end = "2024-12-31T23:59:59.0000000+00:00"
* practitioner = Reference(PractitionerOneWithNetwork1AndNetwork2)
* telecom[+].system = #url
* telecom[=].value = "https://www.PractitionerOneNetwork2Role.com"
* telecom[=].rank = 1

Instance: PractitionerTwoNetwork1LeftAfterSixMonthRole
InstanceOf: NdhNdApiPractitionerRole
Description: "PractitionerTwo Network 2023 First Six Months PractitionerRole"
Usage: #example
* meta.profile = Canonical(NdhNdApiPractitionerRole)
* meta.lastUpdated = "2023-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* extension[network].valueReference = Reference(Network1)
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "PractitionerTwoNetwork1LeftAfterSixMonthRole"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
//* period.start = "2023-01-01T00:00:00.0000000+00:00"
* period.end = "2023-06-30T23:59:59.0000000+00:00"
* practitioner = Reference(PractitionerTwoWithNetwork1LeftAfterSixMonths)
* telecom[+].system = #url
* telecom[=].value = "https://www.PractitionerTwoNetwork1LeftAfterSixMonthRole.com"
* telecom[=].rank = 1



Instance: OrgOneWithNetwork1AndNetwork2
InstanceOf: NdhNdApiOrganization
Description: "Organization participating in Network1 and Network2"
Usage: #example
* meta.profile = Canonical(NdhNdApiOrganization) 
* meta.lastUpdated = "2023-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "OrgOneWithNetwork1AndNetwork2"
* type = OrgTypeCS#fac "Facility"
* extension[qualification][0].extension[code].valueCodeableConcept =   $NUCCProviderTaxonomy#282N00000X "General Acute Care Hospital"
//* identifier[NPI].system = "http://hl7.org.fhir/sid/us-npi"
* identifier[NPI].value = "1336635499"
* identifier[NPI].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "OrgOneWithNetwork1AndNetwork2"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* telecom[0].system = #phone
* telecom[=].value = "(123)-333-3333"
* telecom[=].rank = 2
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #tue
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #wed
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #thu
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #fri 
* telecom[=].extension[contactpoint-availabletime][0].extension[availableStartTime].valueTime = 08:00:00
* telecom[=].extension[contactpoint-availabletime][0].extension[availableEndTime].valueTime = 17:00:00
* telecom[+].system = #url
* telecom[=].value = "https://www.org-one-with-network1-and-network2.com"
* telecom[=].rank = 1
* address.line[0] = "490 Main Street"
* address.city = "Norwalk"
* address.state = "CT"
* address.postalCode = "00014-1234"
* extension[org-description].valueString = "General Acute Care Hospital participating in Network1 and Network2"


Instance: OrgOneNetwork1Affiliation
InstanceOf: NdhNdApiOrganizationAffiliation
Description: "Organization Affiliation for OrgOne in Network1"
Usage: #example
* meta.profile =  Canonical(NdhNdApiOrganizationAffiliation)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "OrgOneNetwork1Affiliation"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* active = true
//* period.start = "2023-01-01T00:00:00.0000000+00:00"
* period.end = "2023-12-31T23:59:59.0000000+00:00"
* network = Reference(Network1)
* organization = Reference(OrgOneWithNetwork1AndNetwork2)
* code[0] = OrganizationAffiliationRoleCS#hospital "Hospital"
//* participatingOrganization = Reference (OrgOneWithNetwork1AndNetwork2)
//* healthcareService = Reference(PharmChainRetailService)
//* location[0] = Reference(PharmLoc1)
//* location[1] = Reference(PharmLoc2)
//* code[0] = $NdhOrganizationAffiliationRoleCS#pharmacy "Pharmacy"
//* code[+] = $NdhOrganizationAffiliationRoleForHieCS#HieInitiator "HIE Initiator"
//* specialty = $NUCCProviderTaxonomy#3336C0003X "Community/Retail Pharmacy"
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#incomplete

Instance: OrgOneNetwork2Affiliation
InstanceOf: NdhNdApiOrganizationAffiliation
Description: "Organization Affiliation for OrgOne in Network2"
Usage: #example
* meta.profile =  Canonical(NdhNdApiOrganizationAffiliation)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "OrgOneNetwork2Affiliation"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* active = true
* period.start = "2023-06-01T00:00:00.0000000+00:00"
//* period.end = "2023-06-30T23:59:59.0000000+00:00"
* network = Reference(Network2)
* organization = Reference(OrgOneWithNetwork1AndNetwork2)
* code[0] = OrganizationAffiliationRoleCS#hospital "Hospital"
//* participatingOrganization = Reference (OrgOneWithNetwork1AndNetwork2)
//* healthcareService = Reference(PharmChainRetailService)
//* location[0] = Reference(PharmLoc1)
//* location[1] = Reference(PharmLoc2)
//* code[0] = $NdhOrganizationAffiliationRoleCS#pharmacy "Pharmacy"
//* code[+] = $NdhOrganizationAffiliationRoleForHieCS#HieInitiator "HIE Initiator"
//* specialty = $NUCCProviderTaxonomy#3336C0003X "Community/Retail Pharmacy"
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#incomplete


Instance: HealthcareServiceHomelessAssistance
InstanceOf: NdhNdApiHealthcareService
Description: "Healthcare Service for Homeless Assistance"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2022-12-20T19:28:24.671+00:00"
//* meta.source = "#5W4kw8uMs4mA7G1S"
* meta.profile = Canonical(NdhNdApiHealthcareService)
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "HealthcareServiceHomelessAssistance"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* extension[network][0].valueReference = Reference(SocialServiceHousingNetwork)
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* extension[newpatients].extension[acceptingPatients].valueCodeableConcept = $NdhAcceptingPatientsCS#newpt
//* extension[newpatients].extension[fromNetwork].valueReference = Reference(AcmeofCTStdNet)
* extension[deliverymethod].extension[deliveryMethodtype].valueCodeableConcept = DeliveryMethodCS#physical "Physical"
* extension[social-service-requirement].extension[employment-status].valueCodeableConcept = $V20066EmploymentStatusCS#3 "Unemployed"
* active = true
* providedBy = Reference(Organization/OrganizationWelcomeHome) "Welcome Home"
* category = HealthcareServiceCategoryCS#housing "Housing"
* category.text = "Housing"
* type[0] = $ServiceTypeCS#127 "Homelessness Support"
* location = Reference(Location/LocationWelcomeHome) "Welcome Home"
* name = "Welcome Home"
* telecom[0].system = #phone
* telecom[=].value = "410.237.8592"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "1-443-786-1543"
* telecom[=].use = #work
* appointmentRequired = false
* availableTime.daysOfWeek[0] = #mon
* availableTime.daysOfWeek[+] = #tue
* availableTime.daysOfWeek[+] = #wed
* availableTime.daysOfWeek[+] = #thu
* availableTime.daysOfWeek[+] = #fri
* availableTime.daysOfWeek[+] = #sat
* availableTime.daysOfWeek[+] = #sun
* availableTime.allDay = false
* availableTime.availableStartTime = "08:00:00"
* availableTime.availableEndTime = "18:00:00"

Instance: LocationWelcomeHome
InstanceOf: NdhNdApiLocation
Description: "Location for Welcome Home"
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:44:22.239+00:00"
//* meta.source = "#yfN9tWGDGnomhl8A"
* meta.profile = Canonical(NdhNdApiLocation)
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
//* identifier[0].use = #secondary
//* identifier[=].system = "https://hope-dispensary-of-greater-bridgeport.com"
//* identifier[=].value = "main campus"
//* identifier[=].assigner = Reference(Organization/Organization-Social-Towson-Food) "TOWSON FOOD DISPENSARY"
//* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "LocationWelcomeHome"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* status = #active
* name = "Welcome Home"
* description = "Welcome Home is a location for homeless assistance."
* type = $V3RoleCode#CSC "community service center"
* type.text = "Community Service Center"
* telecom[0].extension[contactpoint-availabletime][0].extension[allDay].valueBoolean = true
* telecom[=].system = #phone
* telecom[=].value = "517-332-4663"
* telecom[=].use = #work
* telecom[+].extension[contactpoint-availabletime][0].extension[allDay].valueBoolean = true
* telecom[=].system = #fax
* telecom[=].value = "1-443-786-1543"
* telecom[=].use = #work
* address.use = #work
* address.type = #both
* address.text = "500 W Maple Street, Lansing, MI 48906"
* address.line = "500 W Maple Street"
* address.city = "Lansing"
* address.state = "MI"
* address.postalCode = "48906"
* address.country = "USA"
* position.longitude = -84.56037
* position.latitude = 42.746978
* managingOrganization = Reference(OrganizationWelcomeHome) "Welcome Home"
* hoursOfOperation.daysOfWeek[0] = #mon
* hoursOfOperation.daysOfWeek[+] = #tue
* hoursOfOperation.daysOfWeek[+] = #wed
* hoursOfOperation.daysOfWeek[+] = #thu
* hoursOfOperation.daysOfWeek[+] = #fri
//* hoursOfOperation.daysOfWeek[+] = #sat
//* hoursOfOperation.daysOfWeek[+] = #sun
* hoursOfOperation.allDay = true
* availabilityExceptions = "visiting hours from 9:00 am- 5:00 pm"


Instance: OrganizationWelcomeHome
InstanceOf: NdhNdApiOrganization
Description: "Organization for Welcome Home (Homeless Assistance)"
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:45:21.526+00:00"
//* meta.source = "#054uQQFhinTrMfW0"
* meta.profile = Canonical(NdhNdApiOrganization)
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[TID].use = #official
//* identifier[TID].system = "http://hl7.org/fhir/sid/us-ssn"
* identifier[TID].value = "38-3099281"
//* identifier[TID].assigner.display = "Centers for Medicare and Medicaid Services"
* identifier[TID].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "OrganizationWelcomeHome"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* active = true
* type = OrgTypeCS#comm "Community"
* type.text = "A community based organization for social services"
* name = "Welcome Home"
* telecom[0].system = #phone
* telecom[=].value = "517-332-4663"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "1-443-786-1542"
* telecom[=].use = #work
* address.extension[geolocation].extension[latitude].valueDecimal = 42.746978
* address.extension[geolocation].extension[longitude].valueDecimal = -84.56037
* address.use = #work
* address.type = #both
* address.text = "500 W Maple Street, Lansing, MI 48906"
* address.line = "500 W Maple Street"
* address.city = "Lansing"
* address.state = "MI"
* address.postalCode = "48906"
* address.country = "USA"
//* contact.purpose = $ContactEntityType#ADMIN "Administrative"
//* contact.name.use = #official
//* contact.name.text = "HERROL BLAKE"
//* contact.name.family = "Blake"
//* contact.name.given = "Herrol"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon "Monday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #tue "Tuesday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #wed "Wednesday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #thu "Thursday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #fri "Friday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #sat "Saturday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #sun "Sunday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[availableStartTime][0].valueTime = "07:00:00"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[availableEndTime][0].valueTime = "18:00:00"
* contact.telecom.system = #phone
* contact.telecom.value = "410.237.8591"
* contact.telecom.use = #work
* contact.address.use = #work
* contact.address.type = #both
* contact.address.text = "4803 VALLEY VIEW AVE, BALTIMORE, MD 21206"
* contact.address.line = "4803 VALLEY VIEW AVE"
* contact.address.city = "BALTIMORE"
* contact.address.state = "MD"
* contact.address.postalCode = "21206"
* contact.address.country = "USA"


Instance: SocialServiceHousingNetwork
InstanceOf: NdhNdApiNetwork
Description: "Hub for Social Service Housing"
Usage: #example
* meta.profile = Canonical(NdhNdApiNetwork)
* meta.lastUpdated = "2023-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
//* extension[organization-period].valuePeriod.start = "2023-01-01T00:00:00.0000000+00:00"
//* extension[organization-period].valuePeriod.end = "2023-12-31T23:59:59.0000000+00:00"
* partOf = Reference(OrgHousingAssistanceHubManagement)
* type = OrgTypeCS#ntwk "Network"
* name = "Social Service Housing Hub"
* identifier[0].system = "http://housingAssistanceHubManagement.org"
* identifier[=].value = "SocialServiceHousingNetwork"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "SocialServiceHousingNetwork"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"



Instance: OrgHousingAssistanceHubManagement
InstanceOf: NdhNdApiOrganization
Description: "Organization that manages the Housing Assistance Hub"
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:45:21.526+00:00"
//* meta.source = "#054uQQFhinTrMfW0"
* meta.profile = Canonical(NdhNdApiOrganization)
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
//* identifier[TID].use = #official
//* identifier[TID].system = "http://hl7.org/fhir/sid/us-ssn"
//* identifier[TID].value = "38-3099333"
//* identifier[TID].assigner.display = "Centers for Medicare and Medicaid Services"
//* identifier[TID].extension[identifier-status].valueCode = CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "OrgHousingAssistanceHubManagement"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* active = true
* type = OrgTypeCS#gov "Government"
* type.text = "A government agency for social services"
* name = "Housing Assistance Hub Management"
* telecom[0].system = #phone
* telecom[=].value = "517-332-1234"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "1-443-786-1234"
* telecom[=].use = #work
//* address.extension[geolocation].extension[latitude].valueDecimal = 42.746978
//* address.extension[geolocation].extension[longitude].valueDecimal = -84.56037
//* address.use = #work
//* address.type = #both
//* address.text = "500 W Maple Street, Lansing, MI 48906"
//* address.line = "500 W Maple Street"
//* address.city = "Lansing"
//* address.state = "MI"
//* address.postalCode = "48906"
//* address.country = "USA"
//* contact.purpose = $ContactEntityType#ADMIN "Administrative"
//* contact.name.use = #official
//* contact.name.text = "HERROL BLAKE"
//* contact.name.family = "Blake"
//* contact.name.given = "Herrol"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon "Monday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #tue "Tuesday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #wed "Wednesday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #thu "Thursday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #fri "Friday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #sat "Saturday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #sun "Sunday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[availableStartTime][0].valueTime = "07:00:00"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[availableEndTime][0].valueTime = "18:00:00"
* contact.telecom.system = #phone
* contact.telecom.value = "410.237.8591"
* contact.telecom.use = #work
//* contact.address.use = #work
//* contact.address.type = #both
//* contact.address.text = "4803 VALLEY VIEW AVE, BALTIMORE, MD 21206"
//* contact.address.line = "4803 VALLEY VIEW AVE"
//* contact.address.city = "BALTIMORE"
//* contact.address.state = "MD"
//* contact.address.postalCode = "21206"
//* contact.address.country = "USA"
