Instance: PatientConsent
InstanceOf: NdhRestriction
Description: "Patient that gives consent"
Usage: #example
* meta.profile = Canonical(NdhRestriction) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* status  = $ConsentStateCS#active
* scope = ConsentScopeNdhCS#directory-privacy
* category = ConsentCategoryNdhCS#DRC
* policyRule =  ConsentPolicyRulesCS#ndh-restriction
* extension[restrictFhirPath][0].valueString = "Practitioner.address.where(use = 'home')"

Instance: PractitionerRestrict
InstanceOf: NdhRestriction
Description: "Do not disclose Practitioner home address"
Usage: #example
* meta.profile = Canonical(NdhRestriction) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* status  = $ConsentStateCS#active
* scope = ConsentScopeNdhCS#directory-privacy
* category = ConsentCategoryNdhCS#DRC
* policyRule =  ConsentPolicyRulesCS#ndh-restriction
* extension[restrictFhirPath][0].valueString = "Practitioner.address.where(use = 'home')"
* extension[restrictFhirPath][+].valueString = "Practitioner.telecom.where(use = 'home')"

