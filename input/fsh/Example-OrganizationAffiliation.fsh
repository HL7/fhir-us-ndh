
Instance: BurrClinicAffil
InstanceOf: NdhOrganizationAffiliation
Description: "Burr Clinic's affiliation with Acme of CT Provider Network and Hartford General Hospital"
Usage: #example
* meta.profile = Canonical(NdhOrganizationAffiliation)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* code[0] = $NdhOrganizationAffiliationRoleCS#outpatient 
* healthcareService = Reference(BurrClinicServices)
* participatingOrganization = Reference(BurrClinic)
* location[0] = Reference(HospLoc1)
* location[+] = Reference(HospLoc2)
* network = Reference(AcmeofCTStdNet)
* organization = Reference(Hospital) 


Instance: PharmChainAffil1
InstanceOf: NdhExOrganizationAffiliation
Description: "Organization Affiliation for PharmChain (Retail)"
Usage: #example
* meta.profile =  Canonical(NdhExOrganizationAffiliation)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* network = Reference(AcmeofCTStdNet)
* participatingOrganization = Reference (PharmChain)
* healthcareService = Reference(PharmChainRetailService)
* location[0] = Reference(PharmLoc1)
* location[1] = Reference(PharmLoc2)
* code[0] = $NdhOrganizationAffiliationRoleCS#pharmacy "Pharmacy"
//* code[+] = $NdhOrganizationAffiliationRoleForHieCS#HieInitiator "HIE Initiator"
* specialty = $NUCCProviderTaxonomy#3336C0003X "Community/Retail Pharmacy"
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#incomplete
