Instance: HansSoloService
InstanceOf: NdhHealthcareService
Description: "Hans Solo Services"
Usage: #example
* meta.profile = Canonical(NdhHealthcareService)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[deliverymethod].extension[deliveryMethodtype].valueCodeableConcept = DeliveryMethodCS#physical
* category = $NdhHealthcareServiceCategoryCS#outpat 
* specialty = $NUCCProviderTaxonomy#207Q00000X "Family Medicine Physician"  
* location[0] = Reference(HansSoloClinic) 
* extension[fundingSource].extension[fundingOrganization].valueReference = Reference(HamiltonClinic)
* extension[fundingSource].extension[fundingSource].valueString = "Private"


Instance: BurrClinicServices
InstanceOf: NdhExHealthcareService
Description: "Burr Clinic Services"
Usage: #example
* meta.profile = Canonical(NdhExHealthcareService)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00" 
* language = #en-US
* active = true
* extension[deliverymethod].extension[deliveryMethodtype].valueCodeableConcept = DeliveryMethodCS#physical
* category = HealthcareServiceCategoryCS#outpat
* specialty = $NUCCProviderTaxonomy#101YA0400X 
* providedBy = Reference(BurrClinic)
* location[0] = Reference(HospLoc1)


Instance: HartfordOrthopedicServices
InstanceOf: NdhHealthcareService
Description: "Hartford Orthopedic Services"
Usage: #example
* meta.profile = Canonical(NdhHealthcareService)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* extension[deliverymethod].extension[deliveryMethodtype].valueCodeableConcept = DeliveryMethodCS#physical
* extension[deliverymethod].extension[virtualModalities].valueCodeableConcept = VirtualModalitiesCS#phone
* category = HealthcareServiceCategoryCS#prov 
* specialty = $NUCCProviderTaxonomy#207X00000X "Orthopaedic Surgery Physician"   // Orthopedics
* providedBy = Reference(HartfordOrthopedics)
* location[1] = Reference(HospLoc2)
* location[0] = Reference(HospLoc1)
* extension[paymentaccepted].valueCodeableConcept = $paymentTypeCS#CASH
* extension[requiredDocument].extension[document].valueString = "Insurance Card"
* extension[requiredDocument].extension[requiredDocumentId].valueString = "MV3039G"
* extension[newpatients].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#newpt


Instance: PharmChainRetailService
InstanceOf: NdhHealthcareService
Description: "Pharmacy Service provided by PharmChain"
Usage: #example
* meta.profile =  Canonical(NdhHealthcareService) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "Pharmacy by PharmChain"
* extension[deliverymethod].extension[deliveryMethodtype].valueCodeableConcept = DeliveryMethodCS#physical
* extension[newpatients].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#existptonly
* extension[newpatients].extension[fromNetwork].valueReference = Reference(AcmeofCTStdNet)
* category = HealthcareServiceCategoryCS#pharm   "Pharmacy"
* specialty = $NUCCProviderTaxonomy#3336C0003X "Community/Retail Pharmacy"
* providedBy = Reference(PharmChain)
* location[0] = Reference(PharmLoc1)
* location[+] = Reference(PharmLoc2)
* location[+] = Reference(PharmLoc3)
* location[+] = Reference(PharmLoc4)
* telecom.extension[via-intermediary].valueReference = Reference(PharmChain)