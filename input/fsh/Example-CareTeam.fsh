/*
Instance: CareTeam1
InstanceOf: NdhCareTeam
Description: "Burr Clinic's Care Team"
Usage: #example
* meta.profile = Canonical(NdhCareTeam)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #proposed
* category = $loinc#LA27975-4
* extension[careteam-alias].valueString = "CareTeam1, BurrClinic"
* extension[location].valueReference = Reference(HospLoc1)
* extension[endpoint].valueReference = Reference(CoordinationOfCareEndpoint)
* extension[healthcareservice].valueReference = Reference(HansSoloService) 
* identifier.extension[identifier-status].valueCode = $CredentialStatusCS#active
//* extension[usage-restriction].valueReference = Reference(PatientConsent) 

Instance: CareTeam2
InstanceOf: NdhNdApiCareTeam
Description: "Burr Clinic's Care Team"
Usage: #example
* meta.profile = Canonical(NdhNdApiCareTeam)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* language = #en-US
* status = #proposed
* category = $loinc#LA27975-4
* extension[careteam-alias].valueString = "CareTeam2, BurrClinic"
* extension[location].valueReference = Reference(HospLoc1)
* extension[endpoint].valueReference = Reference(CoordinationOfCareEndpoint)
* extension[healthcareservice].valueReference = Reference(HansSoloService) 
* identifier.extension[identifier-status].valueCode = $CredentialStatusCS#active
*/