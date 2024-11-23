Instance: HealthcareServiceWomenShelterRestrictionElements
InstanceOf: NdhRestriction
Description: "Restriction for Women shelter healthcare service to restrict access to location and telecom"
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
* extension[restrictFhirPath][0].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-restrictFhirPath"
* extension[restrictFhirPath][=].valueExpression.language = #text/fhirpath
* extension[restrictFhirPath][=].valueExpression.expression = "HealthcareService.location"
* extension[restrictFhirPath][+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-restrictFhirPath"
* extension[restrictFhirPath][=].valueExpression.language = #text/fhirpath
* extension[restrictFhirPath][=].valueExpression.expression = "HealthcareService.telecom"
 

Instance: HealthcareServiceWomenShelter
InstanceOf: NdhNdApiHealthcareService
Description: "Women's shelter healthcare service"
Usage: #example
* meta.lastUpdated = "2023-06-04T13:26:22.0314215+00:00"
* meta.profile = Canonical(NdhNdApiHealthcareService)
* contained = HealthcareServiceWomenShelterRestrictionElements
* active = true
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[0].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "HealthcareServiceWomenShelter"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* category = HealthcareServiceCategoryCS#other "Other"
* type = $ServiceTypeCS#233 "Abuse"
* type.text = "Women's shelter"
* location = Reference(LocationWomenShelter) "The W Womens Shelter"
* name = "Womens shelter"
* comment = "This is an example of a Women's shelter to demonstrate how to restrict multiple contents"
* telecom[0].system = #url
* telecom[=].value = "https://exmaple.org/The-W-shelter"
* telecom[=].system = #phone
* telecom[=].value = "555 wshelter"
* extension[usage-restriction].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-usage-restriction"
* extension[usage-restriction].valueReference = Reference(HealthcareServiceWomenShelterRestrictionElements)


Instance: LocationWomenShelterRestriction
InstanceOf: NdhRestriction
Description: "Restriction for Women shelter Location"
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
* extension[restrictFhirPath][0].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-restrictFhirPath"
* extension[restrictFhirPath][=].valueExpression.language = #text/fhirpath
* extension[restrictFhirPath][=].valueExpression.expression = "Location.address"
* extension[restrictFhirPath][+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-restrictFhirPath"
* extension[restrictFhirPath][=].valueExpression.language = #text/fhirpath
* extension[restrictFhirPath][=].valueExpression.expression = "Location.telecom"


Instance: LocationWomenShelter
InstanceOf: NdhNdApiLocation
Description: "Women's shelter Location"
Usage: #example
* meta.lastUpdated = "2023-06-04T13:26:22.0314215+00:00"
* meta.profile = Canonical(NdhNdApiLocation)
* contained = LocationWomenShelterRestriction
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[0].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "LocationWomenShelter"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
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
* extension[usage-restriction].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-usage-restriction"
* extension[usage-restriction].valueReference = Reference(LocationWomenShelterRestriction)

Instance: WomenShelterRestrictionAll
InstanceOf: NdhRestriction
Description: "Restriction for Women shelter healthcare service entire resource"
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


Instance: HealthcareServiceWomenShelterAll
InstanceOf: NdhNdApiHealthcareService
Description: "Women's shelter healthcare service"
Usage: #example
* meta.lastUpdated = "2023-06-04T13:26:22.0314215+00:00"
* meta.profile = Canonical(NdhNdApiHealthcareService)
* contained = WomenShelterRestrictionAll
* active = true
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[0].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "HealthcareServiceWomenShelterAll"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* category = HealthcareServiceCategoryCS#other "Other"
* type = $ServiceTypeCS#233 "Abuse"
* type.text = "Women's shelter"
* location = Reference(LocationWomenShelterAll) "The W Womens Shelter"
* name = "Womens shelter"
* comment = "This is an example of a Women's shelter to demonstrate how to restrict entire resource"
* telecom[0].system = #url
* telecom[=].value = "https://exmaple.org/The-W-shelter"
* telecom[=].system = #phone
* telecom[=].value = "666 wshelter"
* extension[usage-restriction].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-usage-restriction"
* extension[usage-restriction].valueReference = Reference(WomenShelterRestrictionAll)


Instance: LocationWomenShelterAll
InstanceOf: NdhNdApiLocation
Description: "Women's shelter Location"
Usage: #example
* meta.lastUpdated = "2023-06-04T13:26:22.0314215+00:00"
* meta.profile = Canonical(NdhNdApiLocation)
* contained = WomenShelterRestrictionAll
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[0].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "LocationWomenShelter"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* status = #active
* name = "The W Womens Shelter"
* telecom[0].system = #url
* telecom[=].value = "https://exmaple.org/The-W-shelter"
* telecom[=].system = #phone
* telecom[=].value = "666 administration"
* address.line = "3300 Washtenaw Avenue, Suite 227"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "48104"
* address.country = "USA"
* extension[usage-restriction].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-usage-restriction"
* extension[usage-restriction].valueReference = Reference(WomenShelterRestrictionAll)

