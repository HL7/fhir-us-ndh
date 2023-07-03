
Instance: AcmeQHPGold
InstanceOf: NdhInsurancePlan
Description: "Acme of CT QHP Gold Plan"
Usage: #example
* meta.profile = Canonical(NdhInsurancePlan) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* name = "Acme of CT QHP Gold"
* type = InsuranceProductTypeCS#qhp "Qualified Health Plan"
* plan.type = InsurancePlanTypeCS#gold "Gold-QHP"
* ownedBy = Reference (Acme)
* administeredBy = Reference (Acme)     // 1..1
* network[0] = Reference(AcmeofCTStdNet)
* network[1] = Reference(AcmeofCTPremNet)
* coverageArea = Reference(StateOfCTLocation)
* endpoint = Reference(AcmeOfCTPortalEndpoint)
* status = #active

Instance: AcmeQHPBronze
InstanceOf: NdhInsurancePlan
Description: "Acme of CT QHP Bronze Plan"
Usage: #example
* meta.profile = Canonical(NdhInsurancePlan) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* name = "Acme of CT QHP Bronze"
* type = InsuranceProductTypeCS#qhp "Qualified Health Plan"
* plan.type = InsurancePlanTypeCS#bronze "Bronze-QHP"
* ownedBy = Reference (Acme)
* administeredBy = Reference (Acme)     // 1..1
* network[0] = Reference(AcmeofCTStdNet)
* coverageArea = Reference(StateOfCTLocation)
* endpoint = Reference(AcmeOfCTPortalEndpoint)
* status = #active


Instance: AcmeQHPBronze2
InstanceOf: NdhExInsurancePlan
Description: "Acme of CT QHP Bronze Plan 2"
Usage: #example
* meta.profile = Canonical(NdhExInsurancePlan) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* language = #en-US
* name = "Acme of CT QHP Bronze"
* type = InsuranceProductTypeCS#qhp "Qualified Health Plan"
* plan.type = InsurancePlanTypeCS#bronze "Bronze-QHP"
* ownedBy = Reference (Acme)
* administeredBy = Reference (Acme)     // 1..1
* network[0] = Reference(AcmeofCTStdNet)
* coverageArea = Reference(StateOfCTLocation)
* endpoint = Reference(AcmeOfCTPortalEndpoint)
* status = #active



Instance: AcmeQHPBronze3
InstanceOf: NdhPnQryInsurancePlan
Description: "Acme of CT QHP Bronze Plan 2"
Usage: #example
* meta.profile = Canonical(NdhPnQryInsurancePlan) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* language = #en-US
* name = "Acme of CT QHP Bronze"
* type = InsuranceProductTypeCS#qhp "Qualified Health Plan"
* plan.type = InsurancePlanTypeCS#bronze "Bronze-QHP"
* ownedBy = Reference (Acme)
* administeredBy = Reference (Acme)     // 1..1
* network[0] = Reference(AcmeofCTStdNet)
* coverageArea = Reference(StateOfCTLocation)
* endpoint = Reference(AcmeOfCTPortalEndpoint)
* status = #active