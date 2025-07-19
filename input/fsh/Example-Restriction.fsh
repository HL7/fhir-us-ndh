/*
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
//* extension[restrictFhirPath][0].valueString = "Practitioner.address.where(use = 'home')"
* extension[restrictFhirPath][+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-restrictFhirPath"
* extension[restrictFhirPath][=].valueExpression.expression = "Patient?address.use=home"

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
* extension[restrictFhirPath][+].valueExpression.expression = "Practitioner?address.use=home"
* extension[restrictFhirPath][+].valueExpression.expression = "Practitioner?telecom.use=home"
*/

