Instance: OrganizationStateMedicaidAgencyAlabama
InstanceOf: NdhNdApiOrganization
Description: "State Medicaid Agency Alabama"
Usage: #example
* meta.profile = Canonical(NdhNdApiOrganization)
* meta.lastUpdated = "2024-07-14T13:26:22.0314215+00:00"
* language = #en-US
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[+].system = "http://www.ndh.org/identifiers/Organization"
* identifier[=].value = "StateMedicaidAgencyAlabama"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name = "StateMedicaidAgencyAlabama"
* type = OrgTypeCS#gov "Government"
* type.text = "A government agency for social services"
* telecom[+].system = #email
* telecom[=].value = "gary.parker@medicaid.alabama.gov"
* telecom[+].system = #phone
* telecom[=].value = "334-242-5011"
//* endpoint[+] = Reference(EndpointAlambamaForClaimsData-CarinBB)
//* endpoint[+] = Reference(EndpointAlambamaForMemberHealthData-PDex)
//* endpoint[+] = Reference(EndpointAlambamaForPharmacyData-Pharmacy)
