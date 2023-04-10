Profile: NdhQryCareTeam
Parent: NdhCareTeam
Id: ndhQry-CareTeam
Title: "NDH Query CareTeam Profile"
Description: "Defines the basic constraints and extensions on the CareTeam resource for use in a National Directory of Healthcare Providers & Service (NDH)"
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* ^status = #active
//* extension ^slicing.discriminator.path = "url"
//* extension ^slicing.discriminator.type = #value
//* extension ^slicing.rules = #open
//* extension ^mustSupport = false
* extension[location].valueReference only Reference(NdhQryLocation)
* extension[endpoint].valueReference only Reference(NdhQryEndpoint)
* extension[healthcareservice].valueReference only Reference(NdhQryHealthcareService)
* identifier MS
* identifier.extension ^slicing.discriminator.path = "url"
* identifier.extension ^slicing.discriminator.type = #value
* identifier.extension ^slicing.rules = #open
* identifier.extension ^mustSupport = false
//* identifier.use 
//* identifier.type 
//* identifier.system 
//* identifier.value 
//* identifier.period 
* identifier.assigner only Reference(NdhQryOrganization)
* identifier.assigner 
* status 1.. 
* category 1..* MS
* name MS
* subject 0..0 
* encounter 0..0
//* period 
//* participant 
//* participant.role 
* participant.member only Reference(NdhQryCareTeam or NdhQryPractitionerRole or NdhQryOrganization)
//* participant.member 
* participant.member ^definition = "The role associated with the specific person or organization who is participating/expected to participate in the care team."
* participant.onBehalfOf ..0 
//* participant.period 
* reasonCode ..0 
* reasonReference ..0 
* managingOrganization ..1 
* managingOrganization only Reference(NdhQryOrganization)
//* telecom 
//* telecom.extension contains
//       ContactPointAvailableTime named contactpoint-availabletime 0..* and
//       ViaIntermediary named via-intermediary 0..* 
//* telecom.extension[via-intermediary] ^short = "Via Intermediary"
//* telecom.system 
//* telecom.value 
//* note 
* note.author[x] only string or Reference(NdhQryPractitioner or NdhQryOrganization)
//* note.author[x] 
//* note.time 
//* note.text 

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhQryEndpoint
Parent:         NdhEndpoint
Id:             ndhQry-Endpoint
Title:          "NDH Query Endpoint Profile"
Description:    "The technical details of an endpoint that can be used for electronic services, such as a portal or FHIR REST services, messaging or operations, or DIRECT messaging."
* meta.lastUpdated 1..1
//* obeys endpoint-fhir-payloadtype 
* extension[endpoint-usecase] MS
* status MS 
* status = #active (exactly)  
* connectionType MS  
* connectionType from EndpointConnectionTypeVS (extensible)
* name MS
* managingOrganization only Reference(NdhQryOrganization)
* managingOrganization MS
//* identifier MS
* contact MS
* contact.value MS
* contact.system MS
//base payloadMimeType is required, so we could not put it to extensible
//* payloadMimeType from EndpointFhirMimeTypeVS
* payloadMimeType MS
* payloadMimeType obeys endpoint-fhir-payloadmimetype
* payloadType MS
* payloadType 1..1  
* payloadType from EndpointPayloadTypeVS (extensible) 
* payloadMimeType MS
* address MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhQryHealthcareService
Parent:         NdhHealthcareService
Id:             ndhQry-HealthcareService
Title:          "NDH Query HealthcareService Profile"
Description:    "The HealthCareService resource typically describes services offered by an organization/practitioner at a location. 
The resource may be used to encompass a variety of services covering the entire healthcare spectrum, including promotion, prevention, diagnostics, pharmacy, 
hospital and ambulatory care, home care, long-term care, and other health-related and community services."
* meta.lastUpdated 1..1
* extension[newpatients] MS
* extension[deliverymethod] MS
//* extension contains
//    Rating named rating 0..*  and
//    NewPatients named newpatients 0..* MS  and
//    DeliveryMethod named deliverymethod 1..* MS and
//    PaymentAccepted named paymentaccepted  0..* and
//    RequiredDocument named requiredDocument 0..* and
//    FundingSource named fundingSource 0..* and
//    UsageRestriction named usage-restriction 0..*
//* extension[newpatients] ^short = "New Patients"
//* extension[deliverymethod] ^short = "Delivery Method"
//* extension[usage-restriction] ^short = "Usage Restriction"
//* identifier MS
//* identifier.extension contains
//    IdentifierStatus named identifier-status 1..1 MS
* identifier.type MS
* identifier.value MS
* active 1..1 MS
* active = true 
* providedBy only Reference(NdhQryOrganization) 
* providedBy MS
* category 1..1 MS 
* category from HealthcareServiceCategoryVS (extensible)
* type MS
* type from HealthcareServiceTypeVS (extensible)
* specialty MS
//* specialty from SpecialtiesVS (extensible)
* location only Reference(NdhQryLocation)
* location MS
* name MS
* comment MS
* telecom MS
* telecom.extension[contactpoint-availabletime] MS
* telecom.extension[via-intermediary] MS
* telecom.system MS
* telecom.value MS
* coverageArea only Reference(NdhQryLocation)
* coverageArea MS
// * serviceProvisionCode 
// eligibility  
// program  
//* characteristic 
//* referralMethod 
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
* endpoint only Reference(NdhQryEndpoint)
* endpoint MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhQryInsurancePlan
Parent:         NdhInsurancePlan
Id:             ndhQry-InsurancePlan
Title:          "NDH Query InsurancePlan Profile"
Description:    "An InsurancePlan is a discrete package of health insurance coverage benefits that are offered under a particular network type. A given payer’s products 
typically differ by network type and/or covered benefits. A plan pairs a product’s covered benefits with the particular cost sharing structure offered to a consumer. 
A given product may comprise multiple plans (i.e. each plan offers different cost sharing requirements for the same set of covered benefits).
InsurancePlan describes a health insurance offering comprised of a list of covered benefits (i.e. the product), costs associated with those benefits (i.e. the plan), 
and additional information about the offering, such as who it is owned and administered by, a coverage area, contact information, etc."
* obeys network-or-NatlDirwork 
* obeys plan-type-is-distinct
* meta.lastUpdated 1..1
//* extension contains
//    UsageRestriction named usage-restriction 0..*
//* extension[usage-restriction] ^short = "Usage Restriction"
//* identifier MS
//* identifier.extension contains
//    IdentifierStatus named identifier-status 1..1 MS
* identifier.type MS
* identifier.value MS
* identifier.assigner MS
* identifier.assigner only Reference(NdhQryOrganization)
* status 1..1 MS
* status = #active  (exactly) 
* type 1..1  MS
* type from InsuranceProductTypeVS (extensible)
//* type ^short = "Product Type"
* name MS
* alias MS
* period MS
* ownedBy 1..1 MS
* ownedBy only Reference(NdhQryOrganization)
* administeredBy 1..1 MS
* administeredBy only Reference(NdhQryOrganization)
* coverageArea only Reference(NdhQryLocation)
* coverageArea MS
* contact MS
* contact.name MS
* contact.name.text MS
* contact.telecom MS
//* contact.telecom.extension contains
//    ContactPointAvailableTime named contactpoint-availabletime 0..*  and
//    ViaIntermediary named via-intermediary 0..* 
//* contact.telecom.extension[via-intermediary] ^short = "Via Intermediary"
* contact.telecom.system MS
* contact.telecom.value MS
//* contact.telecom.use
//* contact.telecom.rank
//* contact.telecom.period
* endpoint only Reference(NdhQryEndpoint)
* endpoint  MS
* network only Reference(NdhQryNetwork)
* network  MS
//* coverage.network MS
* coverage.network only Reference(NdhQryNetwork)
//* coverage.benefit.type 1..1 MS
//* plan ^short = "Cost sharing details for the plan"
//* plan.type from InsurancePlanTypeVS (extensible)
* plan.type  MS
//* plan.type ^short = "Categorization of the cost sharing for the plan"
* plan.coverageArea only Reference(NdhQryLocation)
* plan.coverageArea MS
* plan.network only Reference(NdhQryNetwork)

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhQryLocation
Parent:         NdhLocation
Id:             ndhQry-Location
Title:          "NDH Query Location Profile"
Description:    "A Location is the physical place where healthcare services are provided, practitioners are employed, 
                 organizations are based, etc. Locations can range in scope from a room in a building to a geographic region/area."
* meta.lastUpdated 1..1
//* extension contains
//    $R4GeoJSONExtension named location-boundary-geojson 0..1 MS and
//    Accessibility named accessibility 0..* MS and
//    Ehr named ehr 0..* and
//    NewPatients named newpatients 0..* MS and
//    UsageRestriction named usage-restriction 0..*
//* extension[location-boundary-geojson] ^short = "Associated Region (GeoJSON)"
//* extension[newpatients] ^short = "New Patients"
//* extension[accessibility] ^short = "Accessibility"
//* extension[usage-restriction] ^short = "Usage Restriction"
//* extension[restriction] only Reference(NdhRestriction)
//* identifier.extension contains
//    IdentifierStatus named identifier-status 1..1 MS
//* identifier.use MS
* extension[newpatients] MS
* extension[accessibility] MS
* extension[location-boundary-geojson] MS
* identifier.type MS
//* identifier.system MS
* identifier.value MS
//* identifier.period MS
//* identifier.assigner 0..1 MS
* identifier.assigner only Reference(NdhQryOrganization)
* status 1..1 MS
* status = $LocationStatus#active  (exactly) 
* mode 0..0 
* telecom MS
//* telecom.extension contains
//       ContactPointAvailableTime named contactpoint-availabletime 0..* MS and
//       ViaIntermediary named via-intermediary 0..* MS 
//* telecom.extension[via-intermediary] ^short = "Via Intermediary"
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
//* physicalType MS
* position MS
* managingOrganization 0..1 MS
* managingOrganization only Reference(NdhQryOrganization)
* partOf 0..1 MS
* partOf only Reference(NdhQryLocation)
* hoursOfOperation MS
* hoursOfOperation.daysOfWeek MS
* hoursOfOperation.allDay MS
* hoursOfOperation.openingTime MS
* hoursOfOperation.closingTime MS
* availabilityExceptions MS
* endpoint MS
* endpoint only Reference(NdhQryEndpoint)

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhQryNetwork
Parent:         NdhNetwork
Id:             ndhQry-Network
Title:          "NDH Query Network Profile"
Description:    "A Network refers to a healthcare provider insurance network. A healthcare provider insurance network is an aggregation of organizations and individuals 
that deliver a set of services across a geography through health insurance products/plans. In the NDH IG, individuals and organizations are represented as participants 
in a National Directory Query Network through the practitionerRole and National Directory Query-organizationAffiliation resources, respectively."
* meta.lastUpdated 1..1
//* extension contains
//    LocationReference named location-reference 0..* MS and
//    $OrganizationPeriodExt named organization-period 0..1 and
//    UsageRestriction named usage-restriction 0..*
//* extension[location-reference] ^short = "Network coverage area"
//* extension[organization-period] ^short = "Valid time period for this Network"
//* extension[usage-restriction] ^short = "Usage Restriction"
* extension[location] MS
* extension[location].valueReference only Reference(NdhQryLocation)
* identifier MS
//* identifier.extension contains
//    IdentifierStatus named identifier-status 1..1 MS
* identifier.assigner 0..1 MS
* identifier.assigner only Reference(NdhQryOrganization)
//* identifier[NPI].extension.extension contains
//    IdentifierStatus named identifier-status 0..1 MS
//* identifier[CLIA].extension.extension contains
//    IdentifierStatus named identifier-status 0..1 MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
//* identifier.assigner
* active 1..1 MS
* active = true (exactly)
//* type from NetworkTypeVS (required)
* type 1..1 MS
* name MS
* address 0..1 MS
* address.line MS
* address.city MS
* address.state MS
* address.postalCode MS
* partOf 1..1 MS
* partOf only Reference(NdhQryOrganization)
//* partOf ^short = "The organization that manages this network"
//* contact MS
* contact.name MS
* contact.telecom MS
//* contact.telecom.extension contains
//       ContactPointAvailableTime named contactpoint-availabletime 0..*  and
//       ViaIntermediary named via-intermediary 0..* 
//* contact.telecom.extension[via-intermediary] ^short = "Via Intermediary"
* contact.telecom.value  MS
* contact.telecom.system  MS
* endpoint only Reference(NdhQryEndpoint)
* endpoint MS 


//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhQryOrganization
Parent:         NdhOrganization
Id:             ndhQry-Organization
Title:          "NDH Query Organization Profile"
Description:    "An organization is a formal or informal grouping of people or organizations with a common purpose, such as a company, institution, corporation, 
community group, or healthcare practice. Guidance: When the contact is a department name, rather than a human (e.g., patient help line), include a blank family 
and given name, and provide the department name in contact.name.text"
* meta.lastUpdated 1..1
//* extension contains
//   Rating named rating 0..*  and
//   PaymentAccepted named paymentaccepted  0..* and
//   FundingSource named fundingSource 0..* and
//   OrgDescription named org-description  0..1 and
//   Digitalcertificate named digitalcertificate 0..* and
//   Qualification named qualification 0..* and
//   UsageRestriction named usage-restriction 0..* and
//   InsurancePlanReference named insurance-reference 0..*
//* extension[org-description] ^short = "Organization Description"
//* extension[digitalcertificate] ^short = "Digital Certificate"
//* extension[qualification] ^short = "Qualification"
//* extension[usage-restriction] ^short = "Usage Restriction"
//* extension[insurance-reference] ^short = "Insurance plan(s) offered to the organization's employees"
* extension[qualification] MS
* extension[org-description] MS
* extension[insuranceplan].valueReference only Reference(NdhQryInsurancePlan)
* identifier MS
* identifier.type MS
* identifier.value MS
* identifier.system MS
* identifier.assigner only Reference(NdhQryOrganization)
//* identifier.assigner 0..1
* active 1..1 MS
* active = true
* type 1..* MS
//* type from OrgTypeVS (extensible)
* name MS
//* alias.extension contains
//    OrgAliasType named org-alias-type 0..1 and
//    OrgAliasPeriod named org-alias-period 0..1
//* alias.extension[OrgAliasType] ^short = "Organization Alias Type"
//* alias.extension[OrgAliasPeriod] ^short = "Organization Alias Period"
* telecom MS
//* telecom.extension contains
//       ContactPointAvailableTime named contactpoint-availabletime 0..*  and
//       ViaIntermediary named via-intermediary 0..* 
//* telecom.extension[via-intermediary] ^short = "Via Intermediary"
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
* partOf only Reference(NdhQryOrganization)
* contact MS
* contact.telecom MS
//* contact.telecom.extension contains
//       ContactPointAvailableTime named contactpoint-availabletime 0..* and
//       ViaIntermediary named via-intermediary 0..* 
//* contact.telecom.extension[via-intermediary] ^short = "Via Intermediary"
* contact.telecom.value MS
* contact.telecom.system MS
* contact.telecom.use MS
* endpoint only Reference(NdhQryEndpoint)
* endpoint MS



//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhQryOrganizationAffiliation
Parent:         NdhOrganizationAffiliation
Id:             ndhQry-OrganizationAffiliation
Title:          "NDH Query OrganizationAffiliation Profile"
Description:    "The OrganizationAffiliation resource describes relationships between two or more organizations, including the services one organization provides another, 
the location(s) where they provide services, the availability of those services, electronic endpoints, and other relevant information."
* meta.lastUpdated 1..1
* obeys organization-or-participatingOrganization 
//* extension contains
//    Qualification named qualification 0..* and
//    UsageRestriction named usage-restriction 0..*
//* extension[qualification] ^short = "Qualification"
//* extension[UsageRestriction] ^short = "Usage Restriction"
//* identifier MS
//* identifier.extension contains
//    IdentifierStatus named identifier-status 1..1 MS
* identifier.type MS
* identifier.value MS
* identifier.assigner
* identifier.assigner only Reference(NdhQryOrganization)
* active 1..1 MS
* active = true 
* period MS
* organization  MS
* organization only Reference (NdhQryOrganization)
* participatingOrganization  MS
* participatingOrganization only Reference (NdhQryOrganization)
* network  MS
* network only Reference (NdhQryNetwork)
* code MS
//* code from OrganizationAffiliationRoleVS  (extensible)
* specialty MS
//* specialty from SpecialtiesVS (required)
* location  MS
* location only Reference (NdhQryLocation)
* healthcareService MS
* healthcareService only Reference (NdhQryHealthcareService)
* telecom MS
//* telecom.extension contains
//    ContactPointAvailableTime named contactpoint-availabletime 0..*  and
//    ViaIntermediary named via-intermediary 0..* 
//* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* endpoint MS
* endpoint only Reference (NdhQryEndpoint)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhQryPractitioner
Parent:         NdhPractitioner
Id:             ndhQry-Practitioner
Title:          "NDH Query Practitioner Profile"
Description:    "Practitioner is a person who is directly or indirectly involved in the provisioning of healthcare."
* meta.lastUpdated 1..1
//* extension contains
//    UsageRestriction named usage-restriction 0..* and
//    EndpointReference named endpoint-reference 0..* and
//    Accessibility named accessibility 0..* and
//    Digitalcertificate named digitalcertificate 0..* MS and
//    Rating named rating 0..* 
//* extension[usage-restriction] ^short = "Usage Restriction"
//* extension[endpoint-reference] ^short = "Endpoint Reference"
//* extension[accessibility] ^short = "Accessibility"
//* extension[digitalcertificate] ^short = "Digital Certificate"
//* extension[rating] ^short = "Rating"
* extension[endpoint].valueReference only Reference(NdhQryEndpoint)
* identifier MS
//* identifier.extension contains
//    IdentifierStatus named identifier-status 1..1 MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
//* identifier.assigner 
* identifier.assigner only Reference(NdhQryOrganization)      
* active 1..1 MS
* active = true 
* name 1..* MS
* name.text MS
* name.family 1..1 MS
* name.given MS
* telecom MS
//* telecom.extension contains
//    ContactPointAvailableTime named contactpoint-availabletime 0..*  and
//    ViaIntermediary named via-intermediary 0..* 
//* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* address MS
* address.extension[geolocation] MS
//* address.extension contains 
//    $GeolocationExtension named geolocation 0..1 MS
* qualification  MS
//* qualification.extension contains 
//    PractitionerQualification named practitioner-qualification 0..1
* qualification.extension[practitioner-qualification] MS
* qualification.identifier MS 
//* qualification.identifier.extension contains
//    IdentifierStatus named identifier-status 1..1 
* qualification.code 1..1 MS
//* qualification.code from IndividualSpecialtyAndDegreeLicenseCertificateVS (extensible)
* qualification.period MS
* qualification.issuer MS
* communication MS
* communication.extension[communication-proficiency] MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhQryPractitionerRole
Parent:         NdhPractitionerRole //organization is based on US Core, do not use us core cause warning
Id:             ndhQry-PractitionerRole
Title:          "NDH Query PractitionerRole"
Description:    "PractionerRole describes details about a provider, which can be a practitioner or an organization. When the provider is a practitioner, 
there may be a relationship to an organization. A provider renders services to patients at a location. When the provider is a practitioner, there may also 
be a relationship to an organization. Practitioner participation in healthcare provider insurance networks may be direct or through their role at an organization."

* meta.lastUpdated 1..1
* obeys practitioner-or-organization-or-healthcareservice-or-location
* extension[newpatients] MS
* extension[network] MS
* extension[network].valueReference only Reference(NdhQryNetwork)
//* extension[practitioner-qualification] MS
* extension[qualification] MS
//* extension[practitioner-qualification].extension[issuer].value[0] only Reference(NdhQryOrganization)
//* extension contains
//   Rating named rating 0..* and 
//   NewPatients named newpatients 0..* MS and
//   NetworkReference named network-reference 0..1 MS and
//   UsageRestriction named usage-restriction 0..* and
//   Digitalcertificate named digitalcertificate 0..* MS and
//   PractitionerQualification named practitioner-qualification 0..* MS
//* extension[newpatients] ^short = "New Patients"
//* extension[network-reference] ^short = "NetworkReference"
//* extension[usage-restriction] ^short = "Usage Restriction"
//* extension[digitalcertificate] ^short = "Digital Certificate"
//* extension[practitioner-qualification] ^short = "Practitioner Qualification"
//* identifier MS
* identifier.type MS
//* identifier.system MS
* identifier.value MS
//* identifier.extension contains
//    IdentifierStatus named identifier-status 1..1 MS
* active 1..1 MS
* active = true
* period MS
* practitioner MS
* practitioner only Reference(NdhQryPractitioner)
* organization MS
* organization only Reference(NdhQryOrganization)
* code MS
//* code from PractitionerRoleVS
* specialty MS
//* specialty from IndividualAndGroupSpecialtiesVS (required)
* location MS
* location only Reference(NdhQryLocation)
* healthcareService MS
* healthcareService only Reference(NdhQryHealthcareService)
* telecom MS
* telecom.extension[contactpoint-availabletime] MS
* telecom.extension[via-intermediary] MS
//* telecom.extension contains
//    ContactPointAvailableTime named contactpoint-availabletime 0..*  and
//    ViaIntermediary named via-intermediary 0..* 
//* telecom.extension[via-intermediary] ^short = "Via Intermediary"
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
* endpoint only Reference(NdhQryEndpoint) 

/*
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//identifier will have an IG build error on snapshot table. it is know issue for fhir 4.0.1 is fixed in 4.3.0
Profile: NdhQryRestriction
Parent: NdhRestriction
Id: ndhQry-Restriction
Title: "NDH Query Restriction"
Description: "Restriction on use/release of exchanged information"
//* extension contains TargetPath named restrictFhirPath 0..*
* ^status = #active
* ^date = "2023-01-22T01:01:31.325+11:00"
* . ^short = "A policy may permit or deny recipients or roles to perform actions for specific purposes and periods of time"
* . ^alias = "Restriction"
* identifier ..0 
* status MS
* status ^short = "Indicates the current state of this restriction"
* status ^comment = "This element is labeled as a modifier because the status contains the codes rejected and entered-in-error that mark the restriction as not currently valid."
* scope MS
//* scope from ConsentScopeNdhVS (extensible) 
//* scope ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
//* scope ^binding.extension.valueString = "ConsentScope"
* category MS
//* category ^label = "Type"
//* category ^short = "Type of restriction"
//* category ^definition = "Type of restriction (conditional release (per DUA); requires flowdown agreement (for redisclosure); internal use only; 
//release defined by access rights (as specified by the national source))"
* patient ..0
* dateTime MS
* dateTime ^label = "last updated"
* dateTime ^short = "date/time of last update for this restriction"
* dateTime ^definition = "When this Restriction was issued / created / indexed."
* performer ..0
* organization ..0
* source[x] ..0
* policy MS
* policy.authority ..0
* policy.uri MS
* policy.uri ^short = "Specific policy covered by this restriction"
* policyRule  MS
* policyRule from ConsentPolicyRulesVS (extensible)
* verification ..0
* verification.verified MS
* verification.verifiedWith MS
* verification.verificationDate MS
* provision MS
* provision ^short = "Access rights"
* provision.type = #permit (exactly)
* provision.type MS
* provision.period ..0
* provision.actor 1.. MS
* provision.actor.role MS
* provision.actor.reference MS
* provision.actor.reference ^short = "definedUserOrGroup"
* provision.action ..1 MS
* provision.action ^short = "reasonType"
* provision.action ^definition = "Describes how the reference is related to the restriction (contributes to; reason for; existance of; specific value)"
* provision.securityLabel MS
* provision.securityLabel ^short = "userType"
* provision.purpose MS
* provision.purpose ^short = "reasonName"
* provision.purpose ^definition = "Name assigned to the restriction condition"
* provision.class ..0
* provision.code ..0
* provision.dataPeriod ..0
* provision.data ..0 MS
* provision.data.meaning MS
* provision.data.reference MS
* provision.provision ..0
*/