Instance: location-bundle
InstanceOf: Bundle
Description: "All location resources"
* type = #transaction
* entry[+].resource = HospLoc1
* entry[=].fullUrl = "http://ndh.org/fhir/Location/HospLoc1"
* entry[=].request.method = #PUT 
* entry[=].request.url = "Location/HospLoc1"


/*
Instance: womens-shelter
InstanceOf: Bundle
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2017-03-17T01:28:32.06+00:00"
* type = #collection
* entry[0].fullUrl = "http://example.org/HealthcareService/hcs-ws"
* entry[=].resource = hcs-ws
* entry[+].fullUrl = "http://example.org/Location/loc-ws"
* entry[=].resource = loc-ws
*/

/*
Instance: womens-shelter
InstanceOf: Bundle
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2017-03-17T01:28:32.06+00:00"
* type = #collection
* entry[0].fullUrl = "http://example.org/HealthcareService/hcs-ws"
* entry[=].resource = hcs-ws
* entry[+].fullUrl = "http://example.org/Location/loc-ws"
* entry[=].resource = loc-ws
*/
Instance: HscWsRestrict1
InstanceOf: NdhRestriction
Description: "Restriction for Women shelter healthcare service address"
Usage: #inline
* meta.profile = Canonical(NdhRestriction)
* status = #active
* scope = ConsentScopeNdhCS#directory-privacy
* scope.text = "Directory Privacy"
* category[0] = ConsentCategoryNdhCS#DRC
* category[0].text = "Directory Restriction"
* policyRule =  ConsentPolicyRulesCS#ndh-restriction
* policy.uri = "http://example.org/federal/policy#womans-shelter"
* provision.type = #deny
* provision.actor.role = $V3ParticipationType#IRCP "information recipient"
* provision.actor.reference.display = "Blue Team @ The W shelter (CareTeam)"
* extension[restrictFhirPath][+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-restrictFhirPath"
* extension[restrictFhirPath][=].valueExpression.expression = "HealthcareService.location.exists() and HealthcareService.category.coding.where(code='personal-safety')"
 

Instance: hcs-ws
InstanceOf: NdhHealthcareService
Description: "Women's shelter healthcare service"
Usage: #example
* meta.lastUpdated = "2023-06-04T13:26:22.0314215+00:00"
//* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-HealthcareService"
* meta.profile = Canonical(NdhHealthcareService)
* contained = HscWsRestrict1
* active = true
* category = HealthcareServiceCategoryCS#other "Other"
* type = $ServiceTypeCS#233 "Abuse"
* type.text = "Women's shelter"
* location = Reference(LocWs) "The W Womens Shelter"
* name = "Womens shelter"
* comment = "This is an example of a Women's shelter to demonstrate how to restrict multiple contents"
* telecom[0].system = #url
* telecom[=].value = "https://exmaple.org/The-W-shelter"
* telecom[=].system = #phone
* telecom[=].value = "555 wshelter"
* extension[usage-restriction].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-usage-restriction"
* extension[usage-restriction].valueReference = Reference(HscWsRestrict1)

Instance: LocWs
InstanceOf: Location
Description: "Women's shelter Location"
Usage: #example
* meta.lastUpdated = "2023-06-04T13:26:22.0314215+00:00"
//* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Location"
* meta.profile = Canonical(NdhLocation)
* status = #active
* name = "The W Womens Shelter"
* telecom[0].system = #url
* telecom[=].value = "https://exmaple.org/The-W-shelter"
* telecom[=].system = #phone
* telecom[=].value = "555 administration"
* address.line = "3300 Washtenaw Avenue, Suite 227"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "48104"
* address.country = "USA"

/*
* contained.resourceType = "Consent"
* contained.id = "restrict"
//* contained.meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Restriction"
* contained.meta.profile = Canonical(NdhRestriction)
* contained.status = #active
* contained.scope = ConsentScopeNdhCS#directory-privacy "Directory Privacy Consent"
* contained.scope.text = "Directory Privacy"
* contained.category = $loinc#57016-8 "Privacy policy acknowledgment Document"
* contained.category.text = "conditional release (per DUA)"
* contained.dateTime = "2023-06-04"
* contained.policy.uri = "http://example.org/federal/policy#womans-shelter"
* contained.provision.type = #deny
* contained.provision.actor.role = $V3ParticipationType#IRCP "information recipient"
* contained.provision.actor.reference.display = "Blue Team @ The W shelter (CareTeam)"
//* contained.provision.action.text = "specific value"
* contained.provision.securityLabel.display = "womens-abuse-councellors"
* contained.provision.purpose.display = "Women's Shelter"
*/

/*
Instance: loc-ws
InstanceOf: Location
Description: "Women's shelter Location"
Usage: #example
* meta.lastUpdated = "2023-06-04T13:26:22.0314215+00:00"
//* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Location"
* meta.profile = Canonical(NdhLocation)
* contained.resourceType = "Consent"
* contained.id = "restrict"
//* contained.meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Restriction"
* contained.meta.profile = Canonical(NdhRestriction)
* contained.status = #active
* contained.scope = ConsentScopeNdhCS#directory-privacy "Directory Privacy Consent"
* contained.scope.text = "Direct Referral use only"
* contained.category = $loinc#57016-8 "Privacy policy acknowledgment Document"
* contained.category.text = "conditional release (per DUA)"
* contained.dateTime = "2017-12-18"
* contained.policy.uri = "http://example.org/federal/policy#womans-shelter"
* contained.provision.type = #deny
* contained.provision.actor.role = $V3ParticipationType#IRCP "information recipient"
* contained.provision.actor.reference.display = "Blue Team @ The W shelter (CareTeam)"
//* contained.provision.action.text = "specific value"
* contained.provision.securityLabel.display = "womens-abuse-councellors"
* contained.provision.purpose.display = "Women's Shelter"
* status = #active
* name = "The W Womens Shelter"
* telecom[0].system = #url
* telecom[=].value = "https://exmaple.org/The-W-shelter"
* telecom[+].extension[+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-usage-restriction"
* telecom[=].extension[=].valueReference = Reference(Consent/restrict)
* telecom[=].system = #phone
* telecom[=].value = "555 administration"
* address.extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-usage-restriction"
* address.extension.valueReference = Reference(Consent/restrict)
* address.line = "3300 Washtenaw Avenue, Suite 227"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "48104"
* address.country = "USA"
*/
