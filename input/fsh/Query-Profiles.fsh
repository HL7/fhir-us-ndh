/*
Profile: NdhPnQryCareTeam
Parent: NdhCareTeam
Id: ndhPnQry-CareTeam
Title: "Payer Provider Network Query CareTeam Profile"
Description: "Defines the basic constraints and extensions on the CareTeam resource for use in a National Directory of Healthcare Providers & Service (NDH)"
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* ^status = #active
* extension[location].valueReference only Reference(NdhPnQryLocation)
* extension[endpoint].valueReference only Reference(NdhPnQryEndpoint)
* extension[healthcareservice].valueReference only Reference(NdhPnQryHealthcareService)
* identifier MS
* identifier.extension ^slicing.discriminator.path = "url"
* identifier.extension ^slicing.discriminator.type = #value
* identifier.extension ^slicing.rules = #open
* identifier.extension ^mustSupport = false
* identifier.assigner only Reference(NdhPnQryOrganization)
* identifier.assigner 
* status 1.. 
* category 1..* MS
* name MS
* subject 0..0 
* encounter 0..0
* participant.member only Reference(NdhPnQryCareTeam or NdhPnQryPractitionerRole or NdhPnQryOrganization)
* participant.member ^definition = "The role associated with the specific person or organization who is participating/expected to participate in the care team."
* participant.onBehalfOf ..0 
* reasonCode ..0 
* reasonReference ..0 
* managingOrganization ..1 
* managingOrganization only Reference(NdhPnQryOrganization)
* note.author[x] only string or Reference(NdhPnQryPractitioner or NdhPnQryOrganization)
*/

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhPnQryEndpoint
Parent:         NdhEndpoint
Id:             ndhPnQry-Endpoint
Title:          "Payer Provider Network Query Endpoint Profile"
Description:    "The technical details of an endpoint that can be used for electronic services, such as a portal or FHIR REST services, messaging or operations, or DIRECT messaging."
* meta.lastUpdated 1..1
* extension[endpoint-usecase] MS
* status MS 
* status = #active (exactly)  
* connectionType MS  
* connectionType from EndpointConnectionTypeVS (extensible)
* name MS
* managingOrganization only Reference(NdhPnQryOrganization)
* managingOrganization MS
* contact MS
* contact.value MS
* contact.system MS
* payloadMimeType MS
* payloadType MS
* payloadType 1..1  
* payloadType from EndpointPayloadTypeVS (extensible) 
* payloadMimeType MS
* address MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhPnQryHealthcareService
Parent:         NdhHealthcareService
Id:             ndhPnQry-HealthcareService
Title:          "Payer Provider Network Query HealthcareService Profile"
Description:    "The HealthCareService resource typically describes services offered by an organization/practitioner at a location. 
The resource may be used to encompass a variety of services covering the entire healthcare spectrum, including promotion, prevention, diagnostics, pharmacy, 
hospital and ambulatory care, home care, long-term care, and other health-related and community services."
* meta.lastUpdated 1..1
* extension[newpatients] MS
* extension[deliverymethod] MS
* identifier.type MS
* identifier.value MS
* active 1..1 MS
* active = true 
* providedBy only Reference(NdhPnQryOrganization) 
* providedBy MS
* category 1..1 MS 
* category from HealthcareServiceCategoryVS (extensible)
* type MS
* type from HealthcareServiceTypeVS (extensible)
* specialty MS
* location only Reference(NdhPnQryLocation)
* location MS
* name MS
* comment MS
* telecom MS
* telecom.extension[contactpoint-availabletime] MS
* telecom.extension[via-intermediary] MS
* telecom.system MS
* telecom.value MS
* coverageArea only Reference(NdhPnQryLocation)
* coverageArea MS
* appointmentRequired MS
* availableTime MS
* availableTime.daysOfWeek MS
* availableTime.allDay MS
* availableTime.availableStartTime MS
* availableTime.availableEndTime MS
* notAvailable MS
* notAvailable.description MS
* notAvailable.during MS
* availabilityExceptions MS
* endpoint only Reference(NdhPnQryEndpoint)
* endpoint MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhPnQryInsurancePlan
Parent:         NdhInsurancePlan
Id:             ndhPnQry-InsurancePlan
Title:          "Payer Provider Network Query InsurancePlan Profile"
Description:    "An InsurancePlan is a discrete package of health insurance coverage benefits that are offered under a particular network type. A given payer’s products 
typically differ by network type and/or covered benefits. A plan pairs a product’s covered benefits with the particular cost sharing structure offered to a consumer. 
A given product may comprise multiple plans (i.e. each plan offers different cost sharing requirements for the same set of covered benefits).
InsurancePlan describes a health insurance offering comprised of a list of covered benefits (i.e. the product), costs associated with those benefits (i.e. the plan), 
and additional information about the offering, such as who it is owned and administered by, a coverage area, contact information, etc."
//* obeys network-or-NatlDirwork 
* obeys plan-type-is-distinct
* meta.lastUpdated 1..1
* identifier.type MS
* identifier.value MS
* identifier.assigner MS
* identifier.assigner only Reference(NdhPnQryOrganization)
* status 1..1 MS
* status = #active  (exactly) 
* type 1..1  MS
* type from InsuranceProductTypeVS (extensible)
* name MS
* alias MS
* period MS
* ownedBy 1..1 MS
* ownedBy only Reference(NdhPnQryOrganization)
* administeredBy 1..1 MS
* administeredBy only Reference(NdhPnQryOrganization)
* coverageArea only Reference(NdhPnQryLocation)
* coverageArea MS
* contact MS
* contact.name MS
* contact.name.text MS
* contact.telecom MS
* contact.telecom.system MS
* contact.telecom.value MS
* endpoint only Reference(NdhPnQryEndpoint)
* endpoint  MS
* network only Reference(NdhPnQryNetwork)
* network  MS
* coverage.network only Reference(NdhPnQryNetwork)
* plan.type  MS
* plan.coverageArea only Reference(NdhPnQryLocation)
* plan.coverageArea MS
* plan.network only Reference(NdhPnQryNetwork)

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhPnQryLocation
Parent:         NdhLocation
Id:             ndhPnQry-Location
Title:          "Payer Provider Network Query Location Profile"
Description:    "A Location is the physical place where healthcare services are provided, practitioners are employed, 
                 organizations are based, etc. Locations can range in scope from a room in a building to a geographic region/area."
* meta.lastUpdated 1..1
* extension[newpatients] MS
* extension[accessibility] MS
* extension[location-boundary-geojson] MS
* identifier.type MS
* identifier.value MS
* identifier.assigner only Reference(NdhPnQryOrganization)
* status 1..1 MS
* status = $LocationStatus#active  (exactly) 
* mode 0..0 
* telecom MS
* telecom.extension[contactpoint-availabletime] MS
* telecom.extension[via-intermediary] MS
* telecom.system MS
* telecom.value MS
* name MS
* alias MS
* description MS
* type MS
* address MS
* address.line MS
* address.city MS
* address.state MS
* address.postalCode MS
* position MS
* managingOrganization 0..1 MS
* managingOrganization only Reference(NdhPnQryOrganization)
* partOf 0..1 MS
* partOf only Reference(NdhPnQryLocation)
* hoursOfOperation MS
* hoursOfOperation.daysOfWeek MS
* hoursOfOperation.allDay MS
* hoursOfOperation.openingTime MS
* hoursOfOperation.closingTime MS
* availabilityExceptions MS
* endpoint MS
* endpoint only Reference(NdhPnQryEndpoint)

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhPnQryNetwork
Parent:         NdhNetwork
Id:             ndhPnQry-Network
Title:          "Payer Provider Network Query Network Profile"
Description:    "A Network refers to a healthcare provider insurance network. A healthcare provider insurance network is an aggregation of organizations and individuals 
that deliver a set of services across a geography through health insurance products/plans. In the NDH IG, individuals and organizations are represented as participants 
in a National Directory Query Network through the practitionerRole and National Directory Query-organizationAffiliation resources, respectively."
* meta.lastUpdated 1..1
* extension[location] MS
* extension[location].valueReference only Reference(NdhPnQryLocation)
* identifier MS
* identifier.assigner 0..1 MS
* identifier.assigner only Reference(NdhPnQryOrganization)
* identifier.type MS
* identifier.system MS
* identifier.value MS
* active 1..1 MS
* active = true (exactly)
* type 1..1 MS
* name MS
* address 0..1 MS
* address.line MS
* address.city MS
* address.state MS
* address.postalCode MS
* partOf 1..1 MS
* partOf only Reference(NdhPnQryOrganization)
* contact.name MS
* contact.telecom MS
* contact.telecom.value  MS
* contact.telecom.system  MS
* endpoint only Reference(NdhPnQryEndpoint)
* endpoint MS 


//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhPnQryOrganization
Parent:         NdhOrganization
Id:             ndhPnQry-Organization
Title:          "Payer Provider Network Query Organization Profile"
Description:    "An organization is a formal or informal grouping of people or organizations with a common purpose, such as a company, institution, corporation, 
community group, or healthcare practice. Guidance: When the contact is a department name, rather than a human (e.g., patient help line), include a blank family 
and given name, and provide the department name in contact.name.text"
* meta.lastUpdated 1..1
* extension[qualification] MS
* extension[org-description] MS
* extension[insuranceplan].valueReference only Reference(NdhPnQryInsurancePlan)
* identifier MS
* identifier.type MS
* identifier.value MS
* identifier.system MS
* identifier.assigner only Reference(NdhPnQryOrganization)
* active 1..1 MS
* active = true
* type 1..* MS
* name MS
* telecom MS
* telecom.extension[contactpoint-availabletime] MS
* telecom.extension[via-intermediary] MS
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* address 1..* MS
* address.extension[geolocation] MS
* address.type MS
* address.line MS
* address.city MS
* address.state MS
* address.postalCode MS
* address.country MS
* partOf MS
* partOf only Reference(NdhPnQryOrganization)
* contact MS
* contact.telecom MS
* contact.telecom.value MS
* contact.telecom.system MS
* contact.telecom.use MS
* endpoint only Reference(NdhPnQryEndpoint)
* endpoint MS

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhPnQryOrganizationAffiliation
Parent:         NdhOrganizationAffiliation
Id:             ndhPnQry-OrganizationAffiliation
Title:          "Payer Provider Network Query OrganizationAffiliation Profile"
Description:    "The OrganizationAffiliation resource describes relationships between two or more organizations, including the services one organization provides another, 
the location(s) where they provide services, the availability of those services, electronic endpoints, and other relevant information."
* meta.lastUpdated 1..1
* obeys organization-or-participatingOrganization 
* identifier.type MS
* identifier.value MS
* identifier.assigner
* identifier.assigner only Reference(NdhPnQryOrganization)
* active 1..1 MS
* active = true 
* period MS
* organization  MS
* organization only Reference (NdhPnQryOrganization)
* participatingOrganization  MS
* participatingOrganization only Reference (NdhPnQryOrganization)
* network  MS
* network only Reference (NdhPnQryNetwork)
* code MS
* specialty MS
* location  MS
* location only Reference (NdhPnQryLocation)
* healthcareService MS
* healthcareService only Reference (NdhPnQryHealthcareService)
* telecom MS
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* endpoint MS
* endpoint only Reference (NdhPnQryEndpoint)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhPnQryPractitioner
Parent:         NdhPractitioner
Id:             ndhPnQry-Practitioner
Title:          "Payer Provider Network Query Practitioner Profile"
Description:    "Practitioner is a person who is directly or indirectly involved in the provisioning of healthcare."
* meta.lastUpdated 1..1
* extension[endpoint].valueReference only Reference(NdhPnQryEndpoint)
* identifier MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
* identifier.assigner only Reference(NdhPnQryOrganization)      
* active 1..1 MS
* active = true 
* name 1..* MS
* name.text MS
* name.family 1..1 MS
* name.given MS
* telecom MS
* address MS
* address.extension[geolocation] MS
* qualification  MS
* qualification.extension[practitioner-qualification] MS
* qualification.identifier MS 
* qualification.code 1..1 MS
* qualification.period MS
* qualification.issuer MS
* communication MS
* communication.extension[communication-proficiency] MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhPnQryPractitionerRole
Parent:         NdhPractitionerRole //organization is based on US Core, do not use us core cause warning
Id:             ndhPnQry-PractitionerRole
Title:          "Payer Provider Network Query PractitionerRole"
Description:    "PractionerRole describes details about a provider, which can be a practitioner or an organization. When the provider is a practitioner, 
there may be a relationship to an organization. A provider renders services to patients at a location. When the provider is a practitioner, there may also 
be a relationship to an organization. Practitioner participation in healthcare provider insurance networks may be direct or through their role at an organization."

* meta.lastUpdated 1..1
//* obeys practitioner-or-organization-or-healthcareservice-or-location
* extension[newpatients] MS
* extension[network] MS
* extension[network].valueReference only Reference(NdhPnQryNetwork)
* extension[qualification] MS
* identifier.type MS
* identifier.value MS
* active 1..1 MS
* active = true
* period MS
* practitioner MS
* practitioner only Reference(NdhPnQryPractitioner)
* organization MS
* organization only Reference(NdhPnQryOrganization)
* code MS
* specialty MS
* location MS
* location only Reference(NdhPnQryLocation)
* healthcareService MS
* healthcareService only Reference(NdhPnQryHealthcareService)
* telecom MS
* telecom.extension[contactpoint-availabletime] MS
* telecom.extension[via-intermediary] MS
* telecom.system 1..1 MS
* telecom.value 1..1 MS
* telecom.rank MS
* availableTime MS
* availableTime.daysOfWeek MS
* availableTime.allDay MS
* availableTime.availableStartTime MS
* availableTime.availableEndTime MS
* notAvailable MS
* notAvailable.description MS
* notAvailable.during MS
* endpoint MS
* endpoint only Reference(NdhPnQryEndpoint) 

