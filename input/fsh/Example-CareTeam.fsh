
Instance: CareTeam1
InstanceOf: NdhCareTeam
Description: "Burr Clinic's Care Team"
Usage: #example
* meta.profile = Canonical(NdhCareTeam)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #proposed
* category = $loinc#LA27975-4
* extension[alias].valueString = "CareTeam1"
* extension[endpoint].valueReference = Reference(AcmeOfCTPortalEndpoint) 
* extension[service].valueReference = Reference(HansSoloService) 
* identifier.extension[status].valueCode = CredentialStatusCS#active
* extension[restriction].valueReference = Reference(PatientConsent) 