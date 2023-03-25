
Instance: AnonRole
InstanceOf: NdhPractitionerRole
Description: "Practitioner role that doesn't refer to a specific practitioner"
Usage: #example
* meta.profile = Canonical(NdhPractitionerRole)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
//* code = $NdhPractitionerRoleCS#ph
* code = PractitionerRoleCS#ph
* healthcareService = Reference(BurrClinicServices)
* extension[network].valueReference = Reference(AcmeofCTStdNet)
* location[0] = Reference(HospLoc2)
* location[+] = Reference(HansSoloClinic)
* specialty[0] =  $NUCCProviderTaxonomy#207R00000X "Internal Medicine Physician"
* organization = Reference(BurrClinic)
* practitioner = Reference(HansSolo)
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[+].system = #url
* telecom[=].value = "https://www.hanssolo.com"
* telecom[=].rank = 1


Instance: JoeSmithRole2
InstanceOf: NdhExPractitionerRole
Description: "Dr Smith Internal Medicine at Burr Clinic"
Usage: #example
* meta.profile = Canonical(NdhExPractitionerRole)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* code = PractitionerRoleCS#ph
// specialty = internal medicine
// Available:  Sat/Sun
* practitioner = Reference(JoeSmith)
* healthcareService = Reference(BurrClinicServices)
* extension[network].valueReference = Reference(AcmeofCTStdNet)
* location[0] = Reference(HospLoc2)
* specialty =  $NUCCProviderTaxonomy#207R00000X "Internal Medicine Physician"
* organization = Reference(BurrClinic)
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[+].system = #url
* telecom[=].value = "https://www.burrclinic.com"
* telecom[=].rank = 1
