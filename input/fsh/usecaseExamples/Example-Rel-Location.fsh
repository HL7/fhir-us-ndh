
Instance: HansSoloRole
InstanceOf: NdhPractitionerRole
Description: "Solo practitioner practice in his own clinic"
Usage: #example
* meta.profile = Canonical(NdhPractitionerRole)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
//* code = $NdhPractitionerRoleCS#ph
* code = $NdhPractitionerRoleCS#ph
* healthcareService = Reference(HansSoloService)
* extension[network].valueReference = Reference(BlueCrossBlueShield-CT-PPO)
* location[+] = Reference(HansSoloClinic)
* specialty[0] =  $NUCCProviderTaxonomy#207R00000X "Internal Medicine Physician"
//* organization = Reference(BurrClinic)
* practitioner = Reference(HansSolo)
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[+].system = #url
* telecom[=].value = "https://www.hanssolo.com"
* telecom[=].rank = 1
* endpoint[0] = Reference(HansSoloDirectTrustEndpointReferrals)
* endpoint[+] = Reference(HansSoloPatientAccessEndpoint)

Instance: HansSoloService
InstanceOf: NdhHealthcareService
Description: "Hans Solo Services"
Usage: #example
* meta.profile = Canonical(NdhHealthcareService)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[deliverymethod].extension[deliveryMethodtype].valueCodeableConcept = $DeliveryMethodCS#physical
* category = $NdhHealthcareServiceTypeCS#outpat 
* specialty = $NUCCProviderTaxonomy#207Q00000X "Family Medicine Physician"  
* location[0] = Reference(HansSoloClinic) 
* extension[fundingSource].extension[fundingOrganization].valueReference = Reference(HamiltonClinic)
* extension[fundingSource].extension[fundingSource].valueString = "Private"
* telecom[0].extension[language-speak][+].valueCode = #en-US

Instance: HansSoloClinic
InstanceOf: NdhLocation
Description: "Location of Hans Solo's clinic"
Usage: #example
* meta.profile = Canonical(NdhLocation) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "OrgA CT Location 1"
* type = $V3RoleCode#PC
* extension[newpatients].extension[acceptingPatients].valueCodeableConcept = $AcceptingPatientsCS#existptonly
* extension[newpatients].extension[fromNetwork].valueReference = Reference(AcmeofCTStdNet)
* extension[accessibility][1].valueCodeableConcept = $AccessibilityCS#pubtrans
* extension[accessibility][0].valueCodeableConcept = $AccessibilityCS#adacomp
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
* telecom[=].extension[via-intermediary][0].valueReference = Reference(HansSoloRole)
* telecom[+].system = #url
* telecom[=].value = "https://www.hanssolo.com"
* telecom[=].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Anytown"
* address.state = "CT"
* address.postalCode = "00014-1234"
* position.longitude = 3.0
* position.latitude = 15.0
* hoursOfOperation[0].daysOfWeek[0]  = #mon 
* hoursOfOperation[=].daysOfWeek[+] = #tue
* hoursOfOperation[=].daysOfWeek[+] = #wed
* hoursOfOperation[=].daysOfWeek[+] = #thu
* hoursOfOperation[=].daysOfWeek[+]  = #fri 
* hoursOfOperation[=].openingTime = 08:00:00
* hoursOfOperation[=].closingTime = 17:00:00


Instance: HansSoloRole2
InstanceOf: NdhPractitionerRole
Description: "Solo practitioner has privileges at a hospital"
Usage: #example
* meta.profile = Canonical(NdhPractitionerRole)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* code = $NdhPractitionerRoleCS#ph
* healthcareService = Reference(BurrClinicServices)
* extension[network].valueReference = Reference(AcmeofCTStdNet)
* location[0] = Reference(HospLoc2)
* specialty[0] =  $NUCCProviderTaxonomy#207R00000X "Internal Medicine Physician"
* organization = Reference(BurrClinic)
* practitioner = Reference(HansSolo)
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[+].system = #url
* telecom[=].value = "https://www.hanssolo.com"
* telecom[=].rank = 1

Instance: BlueCrossBlueShield-CT
InstanceOf: NdhInsurancePlan
Description: "Blue Cross Blue Shield of Connecticut"
Usage: #example
* meta.profile = Canonical(NdhInsurancePlan)
* meta.lastUpdated = "2023-06-30T13:26:22.0314215+00:00"
* identifier[+].system = "http://example.org/blue-cross-blueshied-ct-insurance"
* identifier[=].value = "BlueCrossBlueShield-CT-12345"
* identifier[+].system = "http://example.org/ndh-identifiers"
* identifier[=].value = "BlueCrossBlueShield-CT"
* status = #active
* type = $InsuranceProductTypeCS#commppo "Commercial PPO"
* name = "Blue Cross Blue Shied CT Insurance"
* ownedBy = Reference(BlueCrossBlueShield-CT-PPO)
* administeredBy = Reference(BlueCrossBlueShield-CT-ORG)
* network = Reference(BlueCrossBlueShield-CT-PPO)
// plan.identifier.value = "Plan-123"
//* plan.type.coding.code = #highdeductable
//* plan.coverageArea = Reference(Location/coverageArea)
//* plan.network = Reference(BlueCrossBlueShield-CT-PPO)
//* plan.generalCost.type.coding.code = #copay
//* plan.generalCost.value = 30
//* plan.generalCost.comment = "$30 copay for office visit"


Instance: BlueCrossBlueShield-CT-PPO
InstanceOf: NdhNetwork
Description: "Blue Cross Blue Shield of Connecticut PPO Network"
Usage: #example
* meta.profile = Canonical(NdhNetwork)
* meta.lastUpdated = "2023-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* partOf = Reference(BlueCrossBlueShield-CT-ORG)
* type = $OrgTypeCS#ntwk "Network"
* name = "BlueCrossBlueShield CT PPO"
* identifier[0].system = "http://example.org/blue-cross-blue-shield-ct/network"
* identifier[=].value = "BlueCrossBlueShield-CT-PPO-12345"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* identifier[+].system = "http://example.org/ndh-identifiers"
* identifier[=].value = "BlueCrossBlueShield-CT-PPO"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"

Instance: BlueCrossBlueShield-CT-ORG
InstanceOf: NdhOrganization
Description: "Organization Manage Blue Cross Blue Shield of Connecticut PPO Network"
Usage: #example
* meta.profile = Canonical(NdhOrganization) 
* meta.lastUpdated = "2023-06-25T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "BlueCrossBlueShield CT Organization"
* type = $OrgTypeCS#pay "Payer"
* extension[qualification][0].extension[code].valueCodeableConcept =   $NUCCProviderTaxonomy#305R00000X "Preferred Provider Organization"
* identifier[TID].system = "http://hl7.org/fhir/sid/us-ssn"
* identifier[TID].value = "123-45-7890"
* identifier[TID].extension[identifier-status].valueCode = $CredentialStatusCS#active
* identifier[+].system = "http://example.org/ndh-identifiers"
* identifier[=].value = "BlueCrossBlueShield-CT-ORG"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* telecom[0].system = #phone
* telecom[=].value = "(123)-222-4444"
* telecom[=].rank = 2
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon 
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #tue
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #wed
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #thu
* telecom[=].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode  = #fri 
* telecom[=].extension[contactpoint-availabletime][0].extension[availableStartTime].valueTime = 08:00:00
* telecom[=].extension[contactpoint-availabletime][0].extension[availableEndTime].valueTime = 17:00:00
* telecom[+].system = #url
* telecom[=].value = "https://example.org/blue-cross-blue-shield-ct-org"
* telecom[=].rank = 1
* address.line[0] = "899 Main Street"
* address.city = "Norwalk"
* address.state = "CT"
* address.postalCode = "00014-2345"
* extension[org-description].valueString = "Blue Cross Blue Shield CT is a leading provider of health and other insurance products."


Instance: HansSoloDirectTrustEndpointReferrals
InstanceOf: NdhEndpoint
Description: "Hans Solo Endpoint for DirectTrust"
Usage: #example
* meta.profile = Canonical(NdhEndpoint)
* meta.lastUpdated = "2023-07-01T13:26:22.0314215+00:00"
* language = #en-US
* status = #active
* name = "Hans Solo Endpoint for DirectTrust"
* connectionType = $ConnectionTypeCS#direct-project
* payloadType = $DataAbsentReasonCS#not-applicable
* extension[endpoint-nonfhir-usecase].extension[endpointUsecasetype].valueCodeableConcept = NdhDirectTrustEndpointUsecaseCS#referrals
* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[ig-publication].valueUri = "https://example.org/directtrust/standards/ix4hs-example/referralsIG.pdf"
* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[ig-name].valueString = "DirectTrust social care referrals IG"
* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[ig-version].valueString = "1.0 Trial Implementation"
* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[ig-actor-name].valueString = "Referral Recipient"
* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[ig-actor].valueCodeableConcept = NdhIgActorCS#recipient
* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][0].extension[payload].valueCodeableConcept = NdhDirectTrustPayloadTypeCS#urn:dt-org:dsm:ix4hs-ref:SMTP+CDA+FHIR:1.0
* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][0].extension[mimeType][0].valueCode = $BCP13#application/cda+xml
* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][0].extension[mimeType][+].valueCode = $BCP13#application/fhir+xml
* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][0].extension[mimeType][+].valueCode = $BCP13#application/fhir+json
* address = "hanssolodirectendpoint@example.org"


Instance: HansSoloPatientAccessEndpoint
InstanceOf: NdhEndpoint
Description: "Hans Solo Endpoint for Patient Access"
Usage: #example
* meta.profile = Canonical(NdhEndpoint)
* meta.lastUpdated = "2023-07-01T13:26:22.0314215+00:00"
* language = #en-US
* status = #active
* name = "Hans Solo Endpoint for Patient Access"
* connectionType = $ConnectionTypeCS#hl7-fhir-rest
* payloadType = $DataAbsentReasonCS#not-applicable
* payloadMimeType[+] = $BCP13#application/fhir+json
* payloadMimeType[+] = $BCP13#application/fhir+xml
* extension[endpoint-usecase][0].extension[endpointUsecasetype].valueCodeableConcept = NdhFhirEndpointUseCaseCS#patientAccess
* address = "hanssolo-patient-access-endpoint@example.org"