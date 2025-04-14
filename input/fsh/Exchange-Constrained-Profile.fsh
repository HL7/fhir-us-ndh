Profile: NdhNdApiCareTeam
Parent: $NdhCareTeam
Id: ndh-ndapi-CareTeam
Title: "National Directory API CareTeam Profile"
Description: "Defines the basic constraints and extensions on the CareTeam resource for use in a National Directory of Healthcare Providers & Service (NDH)"
* meta MS
* meta.lastUpdated 1..1
* meta.profile 1..1
* ^status = #active
//* extension ^slicing.discriminator.path = "url"
//* extension ^slicing.discriminator.type = #value
//* extension ^slicing.rules = #open
* extension ^mustSupport = false
//* extension[usage-restriction] MS
* extension[careteam-alias] MS
* extension[location] MS
* extension[location].valueReference only Reference(NdhNdApiLocation)
* extension[healthcareservice] MS
* extension[healthcareservice].valueReference only Reference(NdhNdApiHealthcareService)
* extension[endpoint] MS
* extension[endpoint].valueReference only Reference(NdhNdApiEndpoint)
* extension[verification-status] 1..1 MS
* identifier MS
* identifier.extension[identifier-status] MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
//* identifier.period MS
* identifier.assigner only Reference(NdhNdApiOrganization)
* identifier.assigner MS
* status MS
* category MS
* name MS
* period MS
* participant MS 
* participant.role MS
* participant.member only Reference(NdhNdApiCareTeam or NdhNdApiPractitionerRole or NdhNdApiOrganization)
* participant.member MS
* participant.period MS
* managingOrganization ..1 MS
* managingOrganization only Reference(NdhNdApiOrganization)
* telecom MS
* telecom.extension[contactpoint-availabletime] MS
* telecom.extension[via-intermediary] MS
* telecom.system MS
* telecom.value MS
* telecom.use MS
* telecom.rank MS
//* telecom.period MS
* note MS
* note.author[x] only string or Reference(NdhNdApiPractitioner or NdhNdApiOrganization)
* note.author[x] MS
* note.time MS
* note.text MS

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhNdApiEndpoint
Parent:         NdhEndpoint
Id:             ndh-ndapi-Endpoint
Title:          "National Directory API Endpoint Profile"
Description:    "The technical details of an endpoint that can be used for electronic services, such as a portal or FHIR REST services, messaging or operations, or DIRECT messaging."
* meta MS
* meta.lastUpdated 1..1
* meta.profile 1..1
//* extension[endpoint-usecase] MS
* extension[endpoint-rank] MS
* extension[implementation-guide] MS
* extension[secure-exchange-artifacts] MS
* extension[trust-framework] MS
* extension[dynamic-registration] MS
* extension[associated-servers] MS
* extension[access-control-mechanism] MS
//* extension[connection-type-version] MS
* extension[verification-status] 1..1 MS
* identifier MS
* identifier.extension[identifier-status] 1..1 MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
* identifier.assigner MS
* identifier.assigner only Reference(NdhNdApiOrganization)
* name MS
* managingOrganization only Reference(NdhNdApiOrganization)
//* managingOrganization MS
* contact MS
* contact.extension[contactpoint-availabletime] MS
* contact.extension[via-intermediary] MS
* contact.system MS
* contact.value MS
* contact.use MS
* contact.rank MS
* contact.period MS
* period MS
* payloadType MS

* address MS
* header MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhNdApiHealthcareService
Parent:         $NdhHealthcareService
Id:             ndh-ndapi-HealthcareService
Title:          "National Directory API HealthcareService Profile"
Description:    "The HealthCareService resource typically describes services offered by an organization/practitioner at a location. 
The resource may be used to encompass a variety of services covering the entire healthcare spectrum, including promotion, prevention, diagnostics, pharmacy, 
hospital and ambulatory care, home care, long-term care, and other health-related and community services."
* meta MS
* meta.lastUpdated 1..1
* meta.profile 1..1
//* extension[usage-restriction] MS
* extension[newpatients] MS
* extension[deliverymethod] MS
* extension[verification-status] 1..1 MS
* extension[network].valueReference only Reference(NdhNdApiNetwork)
* identifier MS
* identifier.extension[identifier-status] 1..1 MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
//* identifier.period MS
* identifier.assigner MS
* identifier.assigner only Reference(NdhNdApiOrganization)
//* active 1..1 MS
//* active = true 
* providedBy only Reference(NdhNdApiOrganization) 
* providedBy MS
//* category 1..1 MS 
//* category from HealthcareServiceCategoryVS (extensible)
//* type MS
//* type from HealthcareServiceTypeVS (extensible)
* specialty MS
//* specialty from SpecialtiesVS (required)
* location only Reference(NdhNdApiLocation)
//* location MS
//* name MS
* comment MS
* telecom MS
* telecom.extension[ContactPointAvailableTime] MS
* telecom.extension[via-intermediary] MS
* telecom.system MS
* telecom.value MS
* coverageArea only Reference(NdhNdApiLocation)
//* coverageArea MS
* serviceProvisionCode MS
* eligibility MS
* eligibility.code MS
* eligibility.comment MS
* program MS
* characteristic MS
* referralMethod MS
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
* endpoint only Reference(NdhNdApiEndpoint)
//* endpoint MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhNdApiInsurancePlan
Parent:         NdhInsurancePlan
Id:             ndh-ndapi-InsurancePlan
Title:          "National Directory API InsurancePlan Profile"
Description:    "An InsurancePlan is a discrete package of health insurance coverage benefits that are offered under a particular network type. A given payer’s products 
typically differ by network type and/or covered benefits. A plan pairs a product’s covered benefits with the particular cost sharing structure offered to a consumer. 
A given product may comprise multiple plans (i.e. each plan offers different cost sharing requirements for the same set of covered benefits).
InsurancePlan describes a health insurance offering comprised of a list of covered benefits (i.e. the product), costs associated with those benefits (i.e. the plan), 
and additional information about the offering, such as who it is owned and administered by, a coverage area, contact information, etc."
//* obeys network-or-NatlDirwork 
//* obeys plan-type-is-distinct
* meta MS
* meta.lastUpdated 1..1
* meta.profile 1..1
//* extension[usage-restriction] MS
* extension[verification-status] 1..1 MS
* identifier MS
* identifier.extension[identifier-status] 1..1 MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
//* identifier.period MS
* identifier.assigner MS
* identifier.assigner only Reference(NdhNdApiOrganization)
* status MS
* status = #active  (exactly) 
* type 1..1 MS
* type from $InsuranceProductTypeVS (extensible)
* type ^short = "Product Type"
* name MS
* alias MS
* period MS
* ownedBy 1..1 MS
* ownedBy only Reference(NdhNdApiOrganization)
* administeredBy 1..1 MS
* administeredBy only Reference(NdhNdApiOrganization)
* coverageArea only Reference(NdhNdApiLocation)
* coverageArea MS
* contact MS
* contact.purpose MS
* contact.name MS
* contact.name.use MS
* contact.name.text MS
* contact.name.family MS
* contact.name.given MS
* contact.name.prefix MS
* contact.name.suffix MS
* contact.name.period MS
* contact.telecom MS
* contact.telecom.extension[contactpoint-availabletime] MS
* contact.telecom.extension[via-intermediary] MS
* contact.telecom.system MS
* contact.telecom.value MS
* contact.telecom.use MS
* contact.telecom.rank MS
//* contact.telecom.period MS
* endpoint only Reference(NdhNdApiEndpoint)
* endpoint  MS
* network only Reference(NdhNdApiNetwork)
* network  MS
* coverage MS
* coverage.type MS
* coverage.network MS
* coverage.network only Reference(NdhNdApiNetwork)
* coverage.benefit MS
* coverage.benefit.type 1..1 MS
* coverage.benefit.requirement MS
* coverage.benefit.limit MS
* coverage.benefit.limit.value MS
* coverage.benefit.limit.code MS
* plan MS
* plan.identifier MS
* plan.identifier.extension[identifier-status] MS
* plan.identifier.use MS
* plan.identifier.type MS
* plan.identifier.system MS
* plan.identifier.value MS
* plan.identifier.period MS
* plan.identifier.assigner MS
* plan.identifier.assigner only Reference(NdhNdApiOrganization)
* plan.type  MS
* plan.coverageArea only Reference(NdhNdApiLocation)
* plan.coverageArea MS
* plan.network only Reference(NdhNdApiNetwork)
* plan.network MS
* plan.generalCost MS
* plan.generalCost.type MS
* plan.generalCost.groupSize MS
* plan.generalCost.cost MS
* plan.generalCost.comment MS
* plan.specificCost MS
* plan.specificCost.category MS
* plan.specificCost.benefit MS
* plan.specificCost.benefit.type MS
* plan.specificCost.benefit.cost MS
* plan.specificCost.benefit.cost.type MS
* plan.specificCost.benefit.cost.applicability MS
* plan.specificCost.benefit.cost.qualifiers MS
* plan.specificCost.benefit.cost.value MS

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhNdApiLocation
Parent:         $NdhLocation
Id:             ndh-ndapi-Location
Title:          "National Directory API Location Profile"
Description:    "A Location is the physical place where healthcare services are provided, practitioners are employed, 
organizations are based, etc. Locations can range in scope from a room in a building to a geographic region/area."
* meta MS
* meta.lastUpdated 1..1
* meta.profile 1..1
//* extension[restriction] only Reference(NdhExRestriction)
* extension[location-boundary-geojson] MS
* extension[accessibility] MS
//* extension[ehr] MS
* extension[newpatients] MS
//* extension[usage-restriction] MS
* extension[verification-status] 1..1 MS
* identifier.extension[identifier-status] 1..1 MS
* identifier MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
//* identifier.period MS
* identifier.assigner 0..1 MS
* identifier.assigner only Reference(NdhNdApiOrganization)
* status 1..1 MS
* status = $LocationStatus#active  (exactly) 
* mode 0..0 
* telecom MS
* telecom.extension[ContactPointAvailableTime] MS
* telecom.extension[via-intermediary] MS
* telecom.system MS
* telecom.value MS
* telecom.use MS
* telecom.rank MS
//* telecom.period MS
* name MS
* alias MS
* description MS
* type MS
* address MS
* address.use MS
* address.type MS
* address.text MS
* address.line MS
* address.city MS
* address.state MS
* address.postalCode MS
* address.country MS
* physicalType MS
* position MS
* position.longitude MS
* position.latitude MS
* position.altitude MS
* managingOrganization 0..1 MS
* managingOrganization only Reference(NdhNdApiOrganization)
* partOf 0..1 MS
* partOf only Reference(NdhNdApiLocation)
* hoursOfOperation MS
* hoursOfOperation.daysOfWeek MS
* hoursOfOperation.allDay MS
* hoursOfOperation.openingTime MS
* hoursOfOperation.closingTime MS
* availabilityExceptions MS
* endpoint MS
* endpoint only Reference(NdhNdApiEndpoint)

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhNdApiNetwork
Parent:         $NdhNetwork
Id:             ndh-ndapi-Network
Title:          "National Directory API Network Profile"
Description:    "A Network refers to a healthcare provider insurance network. A healthcare provider insurance network is an aggregation of organizations and individuals 
that deliver a set of services across a geography through health insurance products/plans. In the NDH IG, individuals and organizations are represented as participants 
in a National Directory Exchange Network through the practitionerRole and National Directory Exchange-organizationAffiliation resources, respectively."
* meta MS
* meta.lastUpdated 1..1
* meta.profile 1..1
* extension[location] MS
* extension[location].valueReference only Reference(NdhNdApiLocation)
* extension[organization-period] MS
//* extension[usage-restriction] MS
* extension[verification-status] 1..1 MS
* identifier MS
* identifier.extension[identifier-status] 1..1 MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
//* identifier.period MS
* identifier.assigner MS
* identifier.assigner only Reference(NdhNdApiOrganization)
//* active 1..1 MS
//* active = true (exactly)
//* type from NetworkTypeVS (required)
//* type 1..1 MS
//* name MS
* address MS
//* partOf 1..1 MS
* partOf only Reference(NdhNdApiOrganization)
//* partOf ^short = "The organization that manages this network"
* contact MS
* contact.purpose MS
* contact.name MS
* contact.name.use MS
* contact.name.text MS
* contact.name.family MS
* contact.name.given MS
* contact.name.prefix MS
* contact.name.suffix MS
//* contact.name.period MS
* contact.telecom MS
* contact.telecom.extension[ContactPointAvailableTime] MS
* contact.telecom.extension[via-intermediary] MS
* contact.telecom.value  MS
* contact.telecom.system  MS
* contact.telecom.use MS
* contact.telecom.rank MS
//* contact.telecom.period MS
//* contact.address MS
* endpoint only Reference(NdhNdApiEndpoint)
//* endpoint MS 


//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhNdApiOrganization
Parent:         $NdhOrganization
Id:             ndh-ndapi-Organization
Title:          "National Directory API Organization Profile"
Description:    "An organization is a formal or informal grouping of people or organizations with a common purpose, such as a company, institution, corporation, 
community group, or healthcare practice. Guidance: When the contact is a department name, rather than a human (e.g., patient help line), include a blank family 
and given name, and provide the department name in contact.name.text"
* meta MS
* meta.lastUpdated 1..1
* meta.profile 1..1
* extension[org-description] MS
* extension[digitalcertificate] MS
* extension[qualification] MS
//* extension[usage-restriction] MS
* extension[insuranceplan] MS
* extension[insuranceplan].valueReference only Reference(NdhNdApiInsurancePlan)
* extension[verification-status] 1..1 MS
* identifier MS
* identifier.extension[identifier-status] 1..1 MS
* identifier.use MS
* identifier.type MS
* identifier.value MS
* identifier.system MS
//* identifier.period MS
* identifier.assigner MS
* identifier.assigner only Reference(NdhNdApiOrganization)
//* active 1..1 MS
//* active = true
//* type 1..* MS
//* type from OrgTypeVS (extensible)
//* name MS
//* alias MS
* alias.extension[OrgAliasType] MS
* alias.extension[OrgAliasPeriod] MS
//* telecom MS
* telecom.extension[ContactPointAvailableTime] MS
* telecom.extension[via-intermediary] MS
//* telecom.system MS
//* telecom.value MS
* telecom.use MS
* telecom.rank MS
//* telecom.period MS
//* address 0..* MS
* address.extension[geolocation] MS
* address.use MS
* address.type MS
* address.text MS
//* address.line MS
//* address.city MS
//* address.state MS
//* address.postalCode MS
//* address.country MS
* partOf MS
* partOf only Reference(NdhNdApiOrganization)
* contact MS
* contact.purpose MS
* contact.name MS
* contact.name.use MS
* contact.name.text MS
* contact.name.family MS
* contact.name.given MS
* contact.name.prefix MS
* contact.name.suffix MS
* contact.name.period MS
* contact.telecom MS
* contact.telecom.extension[contactpoint-availabletime] MS
* contact.telecom.extension[via-intermediary] MS
* contact.telecom.value MS
* contact.telecom.system MS
* contact.telecom.use MS
* contact.telecom.rank MS
//* contact.telecom.period MS
* contact.address MS
* contact.address.use MS
* contact.address.type MS
* contact.address.text MS
* contact.address.line MS
* contact.address.city MS
//* contact.address.district MS
* contact.address.state MS
* contact.address.postalCode MS
* contact.address.country MS
//* contact.address.period MS
//* endpoint MS
* endpoint only Reference(NdhNdApiEndpoint)



//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhNdApiOrganizationAffiliation
Parent:         $NdhOrganizationAffiliation
Id:             ndh-ndapi-OrganizationAffiliation
Title:          "National Directory API OrganizationAffiliation Profile"
Description:    "The OrganizationAffiliation resource describes relationships between two or more organizations, including the services one organization provides another, 
the location(s) where they provide services, the availability of those services, electronic endpoints, and other relevant information."
* meta MS
* meta.lastUpdated 1..1
* meta.profile 1..1
//* obeys organization-or-participatingOrganization 
* extension[qualification] MS
//* extension[usage-restriction] MS
* extension[verification-status] 1..1 MS
* identifier MS
* identifier.extension[identifier-status] 1..1 MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
//* identifier.period MS
* identifier.assigner MS
* identifier.assigner only Reference(NdhNdApiOrganization)
* active MS
//* active = true 
* period MS
* organization  MS
* organization only Reference (NdhNdApiOrganization)
* participatingOrganization  MS
* participatingOrganization only Reference (NdhNdApiOrganization)
* network  MS
* network only Reference (NdhNdApiNetwork)
* code MS
//* code from OrganizationAffiliationRoleVS  (extensible)
* specialty MS
//* specialty from SpecialtiesVS (required)
* location  MS
* location only Reference (NdhNdApiLocation)
* healthcareService MS
* healthcareService only Reference (NdhNdApiHealthcareService)
* telecom MS
* telecom.extension[ContactPointAvailableTime] MS
* telecom.extension[via-intermediary] MS
* telecom.system MS
* telecom.value MS
* telecom.use MS
* telecom.rank MS
//* telecom.period MS
* endpoint MS
* endpoint only Reference (NdhNdApiEndpoint)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhNdApiPractitioner
Parent:         $NdhPractitioner
Id:             ndh-ndapi-Practitioner
Title:          "National Directory API Practitioner Profile"
Description:    "Practitioner is a person who is directly or indirectly involved in the provisioning of healthcare."
* meta MS
* meta.lastUpdated 1..1
* meta.profile 1..1
* extension[us-core-race] MS
* extension[us-core-ethnicity] MS
//* extension[individual-genderIdentity] MS
//* extension[individual-pronouns] MS
//* extension[individual-recordedSexOrGender] MS
//* extension[usage-restriction] MS
* extension[endpoint] MS
* extension[endpoint].valueReference only Reference(NdhNdApiEndpoint)
* extension[accessibility] MS
* extension[digitalcertificate] MS
* extension[verification-status] 1..1 MS
* extension[rating] MS
* identifier MS
* identifier.extension[identifier-status] 1..1 MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
//* identifier.period MS
* identifier.assigner MS
* identifier.assigner only Reference(NdhNdApiOrganization)
* active MS
//* active = true 
* name 1..* MS
* name.use MS
* name.text MS
* name.family 1..1 MS
* name.given 1..* MS
* name.prefix MS
* name.suffix MS
* name.period MS
* telecom MS
* telecom.extension[ContactPointAvailableTime] MS
* telecom.extension[via-intermediary] 0..1 MS
* telecom.system 1..1 MS
* telecom.value 1..1 MS
* telecom.use MS
* telecom.rank MS
//* telecom.period MS
* address MS
* address.extension[geolocation] MS
* address.use MS
* address.type MS
* address.text MS
* address.line MS
* address.city MS
//* address.district MS
* address.state MS
* address.postalCode MS
* address.country MS
//* address.period MS
* gender MS
* birthDate MS
* photo MS
* qualification  MS
* qualification.extension[practitioner-qualification] MS
* qualification.identifier MS 
* qualification.identifier.extension[identifier-status] 1..1 MS
* qualification.identifier.use MS
* qualification.identifier.type MS
* qualification.identifier.system MS
* qualification.identifier.value MS
* qualification.identifier.period MS
* qualification.identifier.assigner MS
* qualification.identifier.assigner only Reference(NdhNdApiOrganization)
* qualification.code MS
* qualification.period MS
* qualification.issuer MS
* communication MS
* communication.extension[communication-proficiency] MS
* communication.coding MS
* communication.text MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhNdApiPractitionerRole
Parent:         $NdhPractitionerRole
Id:             ndh-ndapi-PractitionerRole
Title:          "National Directory API PractitionerRole"
Description:    "PractitionerRole describes details about a provider, which can be a practitioner or an organization. When the provider is a practitioner, 
there may be a relationship to an organization. A provider renders services to patients at a location. Practitioner participation in healthcare provider 
insurance networks may be direct or through their role at an organization."
* meta MS
* meta.lastUpdated 1..1
* meta.profile 1..1
//* obeys practitioner-or-organization-or-healthcareservice-or-location 
* extension[newpatients] MS
* extension[network] MS
* extension[network].valueReference only Reference(NdhNdApiNetwork)
//* extension[usage-restriction] MS
* extension[digitalcertificate] MS
//* extension[practitioner-qualification] MS
* extension[qualification] MS
* extension[rating] MS
* extension[verification-status] 1..1 MS
* identifier MS
* identifier.extension[identifier-status] 1..1 MS
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
//* identifier.period MS
* identifier.assigner MS
* identifier.assigner only Reference(NdhNdApiOrganization)
* active MS
//* active = true
* period MS
* practitioner MS
* practitioner only Reference(NdhNdApiPractitioner)
* organization MS
* organization only Reference(NdhNdApiOrganization)
* code MS
//* code from PractitionerRoleVS
* specialty MS
//* specialty from IndividualAndGroupSpecialtiesVS (required)
* location MS
* location only Reference(NdhNdApiLocation)
* healthcareService MS
* healthcareService only Reference(NdhNdApiHealthcareService)
* telecom MS
* telecom.extension[ContactPointAvailableTime] MS
* telecom.extension[via-intermediary] MS
* telecom.system 1..1 MS
* telecom.value 1..1 MS
* telecom.rank MS
//* telecom.period MS
* availableTime MS
* availableTime.daysOfWeek MS
* availableTime.allDay MS
* availableTime.availableStartTime MS
* availableTime.availableEndTime MS
* notAvailable MS
* notAvailable.description MS
* notAvailable.during MS
* endpoint MS
* endpoint only Reference(NdhNdApiEndpoint) 
