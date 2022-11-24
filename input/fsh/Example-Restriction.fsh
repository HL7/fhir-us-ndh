Instance: PatientConsent
InstanceOf: NdhRestriction
Description: "Patient that gives consent"
Usage: #example
* meta.profile = Canonical(NdhRestriction) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* status  = $ConsentCS#active
* scope = ConsentScopeCS#patient-privacy
* category = $loinc#59284-0 
* policyRule =  $ConsentPolicyCS#cric
