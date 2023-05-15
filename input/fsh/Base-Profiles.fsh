Profile: NdhCareTeam
Parent: CareTeam
Id: ndh-CareTeam
Title: "NDH Base CareTeam Profile"
Description: "Defines the basic constraints and extensions on the CareTeam resource for use in a National Directory of Healthcare Providers & Service (NDH)"
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* ^status = #active
* contained only NdhRestriction
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.rules = #open
* extension ^mustSupport = false
* extension contains
    CareteamAlias named careteam-alias 0..*  and
    LocationReference named location 0..*  and
    HealthcareServiceReference named healthcareservice 0..* and
    EndpointReference named endpoint 0..* and
//    UsageRestriction named usage-restriction 0..* and 
    VerificationStatus named verification-status 0..1
* extension[careteam-alias] ^short = "Alternate name for care team"
* extension[careteam-alias] ^definition = "Alternate names by which the team is also known"
* extension[location] ^short = "Where the care team operates"
* extension[location] ^definition = "An extension to indicate the location(s) at which the care team operates"
* extension[healthcareservice] ^short = "Services provided by the care team"
* extension[healthcareservice] ^definition = "An extension to describe the healthcare services provided by the care team"
* extension[endpoint] ^short = "Endpoints for the care team"
* extension[endpoint] ^definition = "An extensions indicating endpoints for the care team"
//* extension[endpoint].valueReference only Reference(NdhEndpoint)
//* extension[usage-restriction] ^short = "Usage Restriction"
* identifier MS
* identifier.extension ^slicing.discriminator.path = "url"
* identifier.extension ^slicing.discriminator.type = #value
* identifier.extension ^slicing.rules = #open
* identifier.extension ^mustSupport = false
* identifier.extension contains IdentifierStatus named identifier-status 0..1 
* identifier.extension[identifier-status] ^short = "Status"
* identifier.extension[identifier-status] ^definition = "Describes the status of an identifier"
//* identifier.use 
//* identifier.type 
//* identifier.system 
//* identifier.value 
//* identifier.period 
* identifier.assigner only Reference(NdhOrganization)
//* identifier.assigner 
* status 1.. 
* category 1..* MS
* category from NDHCareTeamCategoryVS (extensible) 
* name MS
* subject 0..0 
* encounter 0..0
//* period 
//* participant 
* participant.role from IndividualAndGroupSpecialtiesVS (extensible)
* participant.member only Reference(NdhCareTeam or NdhPractitionerRole or NdhOrganization)
//* participant.member 
* participant.member ^definition = "The role associated with the specific person or organization who is participating/expected to participate in the care team."
* participant.onBehalfOf ..0 
//* participant.period 
* reasonCode ..0 
* reasonReference ..0 
* managingOrganization ..1 
* managingOrganization only Reference(NdhOrganization)
//* telecom 
* telecom.extension contains
       ContactPointAvailableTime named contactpoint-availabletime 0..* and
       ViaIntermediary named via-intermediary 0..1
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
//* telecom.system 
//* telecom.value 
//* note 
* note.author[x] only string or Reference(NdhPractitioner or NdhOrganization)
//* note.author[x] 
//* note.time 
//* note.text 

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhEndpoint
Parent:         Endpoint
Id:             ndh-Endpoint
Title:          "NDH Base Endpoint Profile"
Description:    "The technical details of an endpoint that can be used for electronic services, such as a portal or FHIR REST services, messaging or operations, or DIRECT messaging."
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
//* obeys endpoint-fhir-payloadtype 
* contained only NdhRestriction
* extension contains 
    EndpointUsecase named endpoint-usecase 0..* and
    EndpointNonFhirUsecase named endpoint-nonfhir-usecase 0..* and
    FhirIg named fhir-ig 0..* and
    SecureExchangeArtifacts named secure-exchange-artifacts 0..*  and
    TrustFramework named trust-framework 0..*  and 
    DynamicRegistration named dynamic-registration 0..*  and
    AssociatedServers named associated-servers 0..* and
    EndpointAccessControlMechanism named access-control-mechanism 0..1 and
    //SecureEndpoint named secured-endpoint 0..1 and
    EndpointConnectionTypeVersion named connection-type-version 0..* and
    //UsageRestriction named usage-restriction 0..* and
    EndpointRank named endpoint-rank 0..1 and
    EndpointIheSpecificConnectionType named ihe-specific-connection-type 0..* and
    VerificationStatus named verification-status 0..1
* extension[endpoint-usecase] ^short = "Endpoint Usecase"
* extension[endpoint-nonfhir-usecase] ^short = "Non FHIR Endpoint Usecase"
//* extension[usage-restriction] ^short = "Usage Restriction"
* extension[endpoint-rank] ^short = "Preferred order for connecting to the endpoint"
* identifier MS
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
* identifier.assigner only Reference(NdhOrganization)
* status MS 
* status = #active (exactly)  
* connectionType MS  
* connectionType from EndpointConnectionTypeVS (extensible)
* name MS
* managingOrganization only Reference(NdhOrganization)
* managingOrganization MS
//* contact MS
//* contact.value MS 
//* contact.system MS
* contact.extension contains
    ContactPointAvailableTime named contactpoint-availabletime 0..* and
    ViaIntermediary named via-intermediary 0..1
* contact.extension[via-intermediary] ^short = "Via Intermediary"
* payloadType 1..1
//* payloadType MS 
* payloadType from EndpointPayloadTypeVS (extensible) 
* payloadMimeType from EndpointFhirMimeTypeVS
* payloadMimeType MS
//* address MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhHealthcareService
Parent:         HealthcareService
Id:             ndh-HealthcareService
Title:          "NDH Base HealthcareService Profile"
Description:    "The HealthCareService resource typically describes services offered by an organization/practitioner at a location. 
The resource may be used to encompass a variety of services covering the entire healthcare spectrum, including promotion, prevention, diagnostics, pharmacy, 
hospital and ambulatory care, home care, long-term care, and other health-related and community services."
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* contained only NdhRestriction
* extension contains
    Rating named rating 0..*  and
    NewPatients named newpatients 0..* and
    DeliveryMethod named deliverymethod 1..* and
    PaymentAccepted named paymentaccepted  0..* and
    RequiredDocument named requiredDocument 0..* and
    FundingSource named fundingSource 0..* and
    //UsageRestriction named usage-restriction 0..* and
    VerificationStatus named verification-status 0..1 and
    Logo named logo 0..1
* extension[newpatients] ^short = "New Patients"
* extension[deliverymethod] ^short = "Delivery Method"
//* extension[usage-restriction] ^short = "Usage Restriction"
//* identifier MS
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
* identifier.assigner only Reference(NdhOrganization)
//* identifier.type MS
//* identifier.value MS
* active 1..1 MS
* active = true 
* providedBy only Reference(NdhOrganization) 
* providedBy MS
* category 1..1 MS 
* category from HealthcareServiceCategoryVS (extensible)
* type MS
* type from HealthcareServiceTypeVS (extensible)
* specialty MS
* specialty from SpecialtiesVS (required)
* location only Reference(NdhLocation)
* location MS
* name MS
//* comment MS
//* telecom MS
* telecom.extension contains
       ContactPointAvailableTime named contactpoint-availabletime 0..* and
       ViaIntermediary named via-intermediary 0..1 and
       LanguageSpeak named language-speak 0..*
* telecom.extension[language-speak] ^short = "Language Speak"
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
//* telecom.system MS
//* telecom.value MS
* coverageArea only Reference(NdhLocation)
* coverageArea MS
* serviceProvisionCode from $ServiceProvisionConditionsVS (extensible)
* eligibility.code from HealthcareServiceEligibilityCodeVS (extensible) 
* program from $ProgramVS (extensible)
//* characteristic 
* referralMethod from $ServiceReferralMethodVS (extensible)
//* appointmentRequired MS
//* availableTime MS
//* availableTime.daysOfWeek MS
//* availableTime.allDay MS
//* availableTime.availableStartTime MS
//* availableTime.availableEndTime MS
//* notAvailable MS
//* notAvailable.description MS
//* notAvailable.during MS
//* availabilityExceptions MS
* endpoint only Reference(NdhEndpoint)
* endpoint MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhInsurancePlan
Parent:         InsurancePlan
Id:             ndh-InsurancePlan
Title:          "NDH Base InsurancePlan Profile"
Description:    "An InsurancePlan is a discrete package of health insurance coverage benefits that are offered under a particular network type. A given payer’s products 
typically differ by network type and/or covered benefits. A plan pairs a product’s covered benefits with the particular cost sharing structure offered to a consumer. 
A given product may comprise multiple plans (i.e. each plan offers different cost sharing requirements for the same set of covered benefits).
InsurancePlan describes a health insurance offering comprised of a list of covered benefits (i.e. the product), costs associated with those benefits (i.e. the plan), 
and additional information about the offering, such as who it is owned and administered by, a coverage area, contact information, etc."
* obeys network-or-NatlDirwork 
* obeys plan-type-is-distinct
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* contained only NdhRestriction
* extension contains
    //UsageRestriction named usage-restriction 0..* and
    VerificationStatus named verification-status 0..1
//* extension[usage-restriction] ^short = "Usage Restriction"
* identifier MS
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
* identifier.assigner only Reference(NdhOrganization)
//* identifier.type MS
//* identifier.value MS
//* identifier.assigner MS
* status 1..1 MS
* status = #active  (exactly) 
* type 1..1  MS
* type from InsuranceProductTypeVS (extensible)
* type ^short = "Product Type"
* name MS 
//* alias MS
//* period MS
* ownedBy 1..1 MS
* ownedBy only Reference(NdhOrganization)
* administeredBy 1..1 MS
* administeredBy only Reference(NdhOrganization)
* coverageArea only Reference(NdhLocation)
* coverageArea MS
//* contact MS
//* contact.name MS
//* contact.name.text MS
//* contact.telecom MS
* contact.telecom.extension contains
    ContactPointAvailableTime named contactpoint-availabletime 0..*  and
    ViaIntermediary named via-intermediary 0..1 
* contact.telecom.extension[via-intermediary] ^short = "Via Intermediary"
//* contact.telecom.system MS
//* contact.telecom.value MS
//* contact.telecom.use
//* contact.telecom.rank
//* contact.telecom.period
* endpoint only Reference(NdhEndpoint)
//* endpoint  MS
* network only Reference(NdhNetwork)
* network  MS
* coverage.type from NdhCoverageTypeVS (extensible)
* coverage.network MS
* coverage.network only Reference(NdhNetwork)
* coverage.benefit.type from NdhBenefitTypeVS (extensible)
//* coverage.benefit.type 1..1 MS
* plan ^short = "Cost sharing details for the plan"
* plan.type from InsurancePlanTypeVS (extensible)
//* plan.type  MS
* plan.type ^short = "Categorization of the cost sharing for the plan"
* plan.coverageArea only Reference(NdhLocation)
* plan.identifier.extension contains
    IdentifierStatus named identifier-status 0..1
* plan.identifier.assigner only Reference(NdhOrganization)
//* plan.coverageArea MS
* plan.network only Reference(NdhNetwork)

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhLocation
Parent:         $USCoreLocation
Id:             ndh-Location
Title:          "NDH Base Location Profile"
Description:    "A Location is the physical place where healthcare services are provided, practitioners are employed, 
                 organizations are based, etc. Locations can range in scope from a room in a building to a geographic region/area."
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* contained only NdhRestriction
* extension contains
    $R4GeoJSONExtension named location-boundary-geojson 0..1 and
    Accessibility named accessibility 0..* and
    Ehr named ehr 0..* and
    NewPatients named newpatients 0..* and
    //UsageRestriction named usage-restriction 0..* and
    VerificationStatus named verification-status 0..1
* extension[location-boundary-geojson] ^short = "Associated Region (GeoJSON)"
* extension[newpatients] ^short = "New Patients"
* extension[accessibility] ^short = "Accessibility"
//* extension[usage-restriction] ^short = "Usage Restriction"
//* extension[restriction] only Reference(NdhRestriction)
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
//* identifier.use MS
//* identifier.type MS
//* identifier.system MS
//* identifier.value MS
//* identifier.period MS
//* identifier.assigner 0..1 MS
* identifier.assigner only Reference(NdhOrganization)
* status 1..1 MS
* status = $LocationStatus#active  (exactly) 
//* mode 0..0 
* name 1..1 MS
//* alias MS
//* description MS
* type MS
* telecom MS
* telecom.extension contains
        ContactPointAvailableTime named contactpoint-availabletime 0..* and
        ViaIntermediary named via-intermediary 0..1 and
        LanguageSpeak named language-speak 0..*
* telecom.extension[language-speak] ^short = "Language Speak"
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
//* telecom.system MS
//* telecom.value MS
* address MS
* address.line 0..4 MS
* address.city MS
* address.state MS
* address.postalCode MS
* address.country MS
//* physicalType MS
//* position MS
* managingOrganization 0..1 MS
* managingOrganization only Reference(NdhOrganization)
* partOf 0..1 MS
* partOf only Reference(NdhLocation)
//* hoursOfOperation MS
//* hoursOfOperation.daysOfWeek MS
//* hoursOfOperation.allDay MS
//* hoursOfOperation.openingTime MS
//* hoursOfOperation.closingTime MS
//* availabilityExceptions MS
* endpoint MS
* endpoint only Reference(NdhEndpoint)

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhNetwork
Parent:         $USCoreOrganization
Id:             ndh-Network
Title:          "NDH Base Network Profile"
Description:    "A Network refers to a healthcare provider insurance network. A healthcare provider insurance network is an aggregation of organizations and individuals 
that deliver a set of services across a geography through health insurance products/plans. In the NDH IG, individuals and organizations are represented as participants 
in a National Directory Exchange Network through the practitionerRole and National Directory Exchange-organizationAffiliation resources, respectively."
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* contained only NdhRestriction
* extension contains
    LocationReference named location 0..* and
    $OrganizationPeriodExt named organization-period 0..1 and
    //UsageRestriction named usage-restriction 0..* and
    VerificationStatus named verification-status 0..1
* extension[location] ^short = "Network coverage area"
* extension[organization-period] ^short = "Valid time period for this Network"
//* extension[usage-restriction] ^short = "Usage Restriction"
//* contained 0..1
//* contained only Consent
* contained only NdhRestriction
* identifier MS
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
//* identifier.type MS
//* identifier.system MS
//* identifier.value MS
//* identifier.assigner MS
* identifier.assigner only Reference(NdhOrganization)
* identifier[NPI] 0..0
* identifier[CLIA] 0..0
//* identifier[NPI].assigner only Reference(NdhOrganization)
//* identifier[CLIA].assigner only Reference(NdhOrganization)
* active 1..1 MS
* active = true (exactly)
* type from NetworkTypeVS (required)
* type 1..1 MS
* name 1..1 MS
//* address
* address.line 0..4 MS
* address.city MS
* address.state MS
* address.postalCode MS
* address.country MS
* partOf 1..1 MS
* partOf only Reference(NdhOrganization)
* partOf ^short = "The organization that manages this network"
//* contact MS
//* contact.name MS
//* contact.telecom MS
* contact.telecom.extension contains
       ContactPointAvailableTime named contactpoint-availabletime 0..*  and
       ViaIntermediary named via-intermediary 0..1
* contact.telecom.extension[via-intermediary] ^short = "Via Intermediary"
//* contact.telecom.value  MS
//* contact.telecom.system  MS
* endpoint only Reference(NdhEndpoint)
* endpoint MS 


//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhOrganization
Parent:         $USCoreOrganization
Id:             ndh-Organization
Title:          "NDH Base Organization Profile"
Description:    "An organization is a formal or informal grouping of people or organizations with a common purpose, such as a company, institution, corporation, 
community group, or healthcare practice. Guidance: When the contact is a department name, rather than a human (e.g., patient help line), include a blank family 
and given name, and provide the department name in contact.name.text"
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* contained only NdhRestriction
* extension contains
    Rating named rating 0..*  and
    PaymentAccepted named paymentaccepted  0..* and
    FundingSource named fundingSource 0..* and
    OrgDescription named org-description  0..1 and
    Digitalcertificate named digitalcertificate 0..* and
    Qualification named qualification 0..* and
    //UsageRestriction named usage-restriction 0..* and
    InsurancePlanReference named insuranceplan 0..* and
    VerificationStatus named verification-status 0..1 and
    Logo named logo 0..1
* extension[org-description] ^short = "Organization Description"
* extension[digitalcertificate] ^short = "Digital Certificate"
* extension[qualification] ^short = "Qualification"
//* extension[usage-restriction] ^short = "Usage Restriction"
* extension[insuranceplan] ^short = "Insurance plan(s) offered to the organization's employees"
* identifier contains 
    TID 0..1
* identifier[TID] ^short = "Tax Identifier"
* identifier[TID] ^patternIdentifier.system = "http://hl7.org.fhir/sid/us-ssn"
//* identifier[TID].assigner only Reference(NdhOrganization)
//* identifier[TID] ^mustSupport = false
//* identifier[TID] ^mapping[0].identifier = "servd"
//* identifier[TID] ^mapping[=].map = "n/a"
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
* identifier.type
* identifier.value MS
* identifier.system MS
//* identifier.assigner 0..1 MS
* identifier.assigner only Reference(NdhOrganization)
//* identifier[NPI].assigner only Reference(NdhOrganization)
//* identifier[CLIA].assigner only Reference(NdhOrganization)
* active 1..1 MS
* active = true
* type 1..* MS
* type from OrgTypeVS (extensible)
* name 1..1 MS
* alias MS
* alias.extension contains
    OrgAliasType named org-alias-type 0..1 and
    OrgAliasPeriod named org-alias-period 0..1
* alias.extension[OrgAliasType] ^short = "Organization Alias Type"
* alias.extension[OrgAliasPeriod] ^short = "Organization Alias Period"
* telecom MS
* telecom.extension contains
        ContactPointAvailableTime named contactpoint-availabletime 0..*  and
        ViaIntermediary named via-intermediary 0..1 and
        LanguageSpeak named language-speak 0..*
* telecom.extension[language-speak] ^short = "Language Speak"
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* telecom.system MS
* telecom.value MS
//* telecom.rank
* address 0..* MS
* address.extension contains $GeolocationExtension named geolocation 0..1
//* address.type
* address.line 0..4 MS
* address.city MS
* address.state MS
* address.postalCode MS
* address.country MS
* partOf
* partOf only Reference(NdhOrganization)
* contact
* contact.telecom
* contact.telecom.extension contains
       ContactPointAvailableTime named contactpoint-availabletime 0..* and
       ViaIntermediary named via-intermediary 0..1
* contact.telecom.extension[via-intermediary] ^short = "Via Intermediary"
//* contact.telecom.value
//* contact.telecom.system
//* contact.telecom.use
* endpoint only Reference(NdhEndpoint)
* endpoint MS



//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhOrganizationAffiliation
Parent:         OrganizationAffiliation
Id:             ndh-OrganizationAffiliation
Title:          "NDH Base OrganizationAffiliation Profile"
Description:    "The OrganizationAffiliation resource describes relationships between two or more organizations, including the services one organization provides another, 
the location(s) where they provide services, the availability of those services, electronic endpoints, and other relevant information."
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* obeys organization-or-participatingOrganization
* contained only NdhRestriction 
* extension contains
    Qualification named qualification 0..* and
    //UsageRestriction named usage-restriction 0..* and
    VerificationStatus named verification-status 0..1 and
    Logo named logo 0..1
* extension[qualification] ^short = "Qualification"
//* extension[UsageRestriction] ^short = "Usage Restriction"
* identifier MS
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
//* identifier.type MS
//* identifier.value MS
//* identifier.assigner MS
* identifier.assigner only Reference(NdhOrganization)
* active 1..1
* active = true 
* period MS
* organization  MS
* organization only Reference (NdhOrganization)
* participatingOrganization  MS
* participatingOrganization only Reference (NdhOrganization)
//* network  MS
* network only Reference (NdhNetwork)
//* code MS
* code from OrganizationAffiliationRoleVS  (extensible)
//* specialty MS
* specialty from SpecialtiesVS (required)
* location  MS
* location only Reference (NdhLocation)
//* healthcareService MS
* healthcareService only Reference (NdhHealthcareService)
//* telecom MS
* telecom.extension contains
    ContactPointAvailableTime named contactpoint-availabletime 0..*  and
    ViaIntermediary named via-intermediary 0..1
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
//* telecom.system MS
//* telecom.value MS
//* telecom.rank MS
* endpoint MS
* endpoint only Reference (NdhEndpoint)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhPractitioner
Parent:         $USCorePractitioner
Id:             ndh-Practitioner
Title:          "NDH Base Practitioner Profile"
Description:    "Practitioner is a person who is directly or indirectly involved in the provisioning of healthcare."
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* contained only NdhRestriction
* extension contains
    USCoreRaceExtension named us-core-race 0..1 and
    USCoreEthnicityExtension named us-core-ethnicity 0..1 and
    //USCoreGenderIdentityExtension named us-core-genderIdentity 0..* and
    PGenderIdentity named individual-genderIdentity 0..* and
    PPronouns named individual-pronouns 0..* and
    RecordedSexOrGender named individual-recordedSexOrGender 0..* and
    //UsageRestriction named usage-restriction 0..* and
    EndpointReference named endpoint 0..* and
    Accessibility named accessibility 0..* and
    Digitalcertificate named digitalcertificate 0..* and
    Rating named rating 0..* and
    VerificationStatus named verification-status 0..1
//* extension[usage-restriction] ^short = "Usage Restriction"
* extension[endpoint] ^short = "Endpoint Reference"
* extension[accessibility] ^short = "Accessibility"
* extension[digitalcertificate] ^short = "Digital Certificate"
* extension[rating] ^short = "Rating"
* identifier MS
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
//* identifier.type MS
* identifier.system MS
* identifier.value MS
//* identifier.assigner MS
* identifier.assigner only Reference(NdhOrganization)
//* identifier[NPI].assigner only Reference(NdhOrganization)
* active 1..1
* active = true 
* name 1..* MS
* name.text MS
* name.family 1..1 MS
//* name.given
//* telecom MS
* telecom.extension contains
    ContactPointAvailableTime named contactpoint-availabletime 0..*  and
    ViaIntermediary named via-intermediary 0..1
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
//* address MS
* address.extension contains 
    $GeolocationExtension named geolocation 0..1 MS
* qualification  MS
* qualification.extension contains 
    PractitionerQualification named practitioner-qualification 0..1
//* qualification.identifier MS 
* qualification.identifier.extension contains
    IdentifierStatus named identifier-status 0..1 
* qualification.identifier.assigner only Reference(NdhOrganization)
* qualification.code 1..1
* qualification.code from IndividualSpecialtyAndDegreeLicenseCertificateVS (extensible)
* qualification.period
* qualification.issuer MS
* qualification.issuer only Reference(NdhOrganization)
//* communication MS
* communication.extension contains
   //PatProficiency named communication-proficiency 0..1
   CommunicationProficiency named communication-proficiency 0..1


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhPractitionerRole
//Parent:         PractitionerRole //organization is based on US Core, do not use us core cause warning
Parent:         $USCorePractitionerRole //US Core require to have contact infor or endpoint
Id:             ndh-PractitionerRole
Title:          "NDH Base PractitionerRole"
Description:    "PractionerRole describes details about a provider, which can be a practitioner or an organization. When the provider is a practitioner, 
there may be a relationship to an organization. A provider renders services to patients at a location. When the provider is a practitioner, there may also 
be a relationship to an organization. Practitioner participation in healthcare provider insurance networks may be direct or through their role at an organization."

* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* obeys practitioner-or-organization-or-healthcareservice-or-location 
* contained only NdhRestriction
* extension contains
   Rating named rating 0..* and 
   NewPatients named newpatients 0..* and
   NetworkReference named network 0..1 and
   //UsageRestriction named usage-restriction 0..* and
   Digitalcertificate named digitalcertificate 0..* and
   //PractitionerQualification named practitioner-qualification 0..* and
   Qualification named qualification 0..* and
   VerificationStatus named verification-status 0..1
* extension[newpatients] ^short = "New Patients"
* extension[network] ^short = "NetworkReference"
//* extension[usage-restriction] ^short = "Usage Restriction"
* extension[digitalcertificate] ^short = "Digital Certificate"
//* extension[practitioner-qualification] ^short = "Practitioner Qualification"
* extension[qualification] ^short = "Qualification"
* identifier MS
//* identifier.type MS
//* identifier.system MS
//* identifier.value MS
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
* identifier.assigner only Reference(NdhOrganization)
* active 1..1
* active = true
//* period MS
//* practitioner MS
* practitioner only Reference(NdhPractitioner)
//* organization MS
* organization only Reference(NdhOrganization)
//* code MS
* code from PractitionerRoleVS
//* specialty MS
* specialty from IndividualAndGroupSpecialtiesVS (required)
//* location MS
* location only Reference(NdhLocation)
* healthcareService MS
* healthcareService only Reference(NdhHealthcareService)
//* telecom MS
* telecom.extension contains
    ContactPointAvailableTime named contactpoint-availabletime 0..*  and
    ViaIntermediary named via-intermediary 0..1
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
//* telecom.system 1..1 MS
//* telecom.value 1..1 MS
//* telecom.rank MS
//* availableTime MS
//* availableTime.daysOfWeek MS
//* availableTime.allDay MS
//* availableTime.availableStartTime MS
//* availableTime.availableEndTime MS
//* notAvailable MS
//* notAvailable.description MS
//* notAvailable.during MS
//* endpoint MS
* endpoint only Reference(NdhEndpoint) 

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//identifier will have an IG build error on snapshot table. it is know issue for fhir 4.0.1 is fixed in 4.3.0
Profile: NdhRestriction
Parent: Consent
Id: ndh-Restriction
Title: "NDH Base Restriction"
Description: "Restriction on use/release of exchanged information"
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* extension contains base-ext-restrictFhirPath named restrictFhirPath 0..*
* ^status = #active
* ^date = "2023-01-22T01:01:31.325+11:00"
* . ^short = "A policy may permit or deny recipients or roles to perform actions for specific purposes and periods of time"
* . ^alias = "Restriction"
* identifier ..0 
* status MS
* status ^short = "Indicates the current state of this restriction"
* status ^comment = "This element is labeled as a modifier because the status contains the codes rejected and entered-in-error that mark the restriction as not currently valid."
* scope MS
* scope from ConsentScopeNdhVS (extensible) 
* scope ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* scope ^binding.extension.valueString = "ConsentScope"
* category MS
* category ^label = "Type"
* category ^short = "Type of restriction"
* category ^definition = "Type of restriction (conditional release (per DUA); requires flowdown agreement (for redisclosure); internal use only; 
release defined by access rights (as specified by the national source))"
* category from ConsentCategoryNdhVS (extensible)
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
* provision.actor.reference only Reference(NdhCareTeam or NdhOrganization or NdhPractitioner or NdhPractitionerRole)
* provision.action ..1 MS
* provision.action ^short = "reasonType"
* provision.action ^definition = "Describes how the reference is related to the restriction (contributes to; reason for; existance of; specific value)"
* provision.action from $ConsentActionVS (extensible)
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


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: NdhVerification
Parent: VerificationResult
Id: ndh-Verification
Title: "NDH Base Verification"
Description: "Describes Verification requirements, source(s), status and dates for one or more elements"
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* ^date = "2023-01-22T12:42:47.483-05:00"
* ^status = #active
* . ^short = "Verification"
* . ^definition = "Describes Verification requirements, source(s), status and dates for one or more elements"
* target 1..* MS
* targetLocation MS
* need 1..1 MS
* status MS
* statusDate 1..1 MS
* validationType 1..1 MS
* validationType from $verificationresult-validation-type
//* validationType ^short = "nothing|single|multiple"
* validationType ^definition = "What the target is validated against (nothing|single source|multiple sources)"
* validationProcess 1..* MS
* validationProcess from NdhVerificationProcessVS (extensible)
//* validationProcess ^short = "The process(es) by which the target is validated"
* validationProcess ^definition = "The process(es) by which the target is validated"
* frequency MS
* lastPerformed MS
* nextScheduled MS
* failureAction 1..1 MS
* primarySource MS
* primarySource.who MS
* primarySource.who only Reference(NdhOrganization or NdhPractitioner or NdhPractitionerRole)
* primarySource.type 1..* MS
* primarySource.type from $VerificationresultPrimarySourceTypeVS (extensible)
//* primarySource.type ^short = "Type of primary source"
* primarySource.type ^definition = "Type of primary source"
* primarySource.communicationMethod 0..* MS
* primarySource.communicationMethod from NdhVerificationCommunicationMethodVS (extensible)
* primarySource.validationStatus MS
* primarySource.validationDate MS
* primarySource.canPushUpdates MS
* primarySource.pushTypeAvailable MS
* attestation 1..1 MS
* attestation.who 1..1 MS
* attestation.who only Reference(NdhOrganization or NdhPractitioner or NdhPractitionerRole)
* attestation.onBehalfOf MS
* attestation.onBehalfOf only Reference(NdhOrganization or NdhPractitioner or NdhPractitionerRole)
* attestation.communicationMethod 1..1 MS
* attestation.communicationMethod only CodeableConcept
* attestation.communicationMethod from NdhVerificationCommunicationMethodVS (extensible)
* attestation.date 1..1 MS
* attestation.sourceIdentityCertificate MS
* attestation.proxyIdentityCertificate MS
* attestation.proxySignature MS
* attestation.sourceSignature MS
* validator MS
* validator.organization MS
* validator.organization only Reference(NdhOrganization)
* validator.identityCertificate MS
* validator.attestationSignature MS


/*
Profile: NdhOrganizationAffiliationBulkDataGraphDefinition
Parent: GraphDefinition
Id: ndh-OrganizationAffiliationBulkGraphDefinition
Title: "NDH Organization Affiliation Bulk Data Graph Definition"
Description: "Graph definition for Organization Affiliation"
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* . ^short = "Graph definition for Organization Affiliation"
* . ^definition = "Graph definition for Organization Affiliation"
//* url MS
* url ^short = "Canonical identifier for this graph definition, represented as a URI (globally unique)"
* url ^definition = "An absolute URI that is used to identify this graph definition when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this graph definition is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the graph definition is stored on different servers."
//* url ^example[0].value = "http://hl7.org/fhir/GraphDefinition/organization-affiliation"
//* url ^example[0].label = "Canonical URL"
//* url ^example[1].value = "organization-affiliation"
//* url ^example[1].label = "Relative URL"
* version ^short = "Logical id for this version of the graph definition"
* version ^definition = "The identifier that is used to identify this version of the graph definition when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the graph definition author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence."
* name = "NdhOrganizationAffiliationGraphDefinition"
* name ^short = "Ndh OrganizationAffiliation Graph Definition"
//* name ^definition = "A natural language name identifying the graph definition. This name should be usable as an identifier for the module by machine processing applications such as code generation."
//* status MS
//* status ^short = "draft | active | retired | unknown"
//* status ^definition = "The status of this graph definition. Enables tracking the life-cycle of the content."
* status = #active
//* experimental ^short = "If for testing purposes, not real usage"
//* experimental ^definition = "A boolean value to indicate that this graph definition is authored for testing purposes (or education/evaluation/marketing), and is not intended to be used for genuine usage."
//* date ^short = "Date last changed"
//* date ^definition = "The date  (and optionally time) when the graph definition was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the graph definition changes."
* ^date = "2023-01-22T12:42:47.483-05:00"
* profile = Canonical(NdhOrganizationAffiliation)
* link ^slicing.discriminator.type = #pattern
* link ^slicing.discriminator.path = "path"
* link ^slicing.rules = #open
* link ^slicing.description = "Slicing based on path pattern"
* link ^slicing.ordered = false
* link contains
    organization 0..* and
    participatingOrganization 0..* and
    network 0..* and
    healthcareService 0..* and
    location 0..* and
    endpoint 0..*
* link[organization].path = "OrganizationAffiliation.organization"
* link[organization].description = "The organization that provides the affiliation"
* link[organization].target.profile = Canonical(NdhOrganization)
* link[organization].target.type = #Organization
* link[participatingOrganization].path = "OrganizationAffiliation.participatingOrganization"
* link[participatingOrganization].description = "The participating organization"
* link[participatingOrganization].target.profile = Canonical(NdhOrganization)
* link[participatingOrganization].target.type = #Organization
* link[network].path = "OrganizationAffiliation.network"
* link[network].description = "The network in which the participating organization provides the role"
* link[network].target.profile = Canonical(NdhNetwork)
* link[network].target.type = #Organization
* link[healthcareService].path = "OrganizationAffiliation.healthcareService"
* link[healthcareService].description = "The healthcare services provided through the role"
* link[healthcareService].target.profile = Canonical(NdhHealthcareService)
* link[healthcareService].target.type = #HealthcareService
* link[location].path = "OrganizationAffiliation.location"
* link[location].description = "The location(s) at which the role occurs"
* link[location].target.profile = Canonical(NdhLocation)
* link[location].target.type = #Location
* link[endpoint].path = "OrganizationAffiliation.endpoint"
* link[endpoint].description = "Technical endpoints providing access to services operated for the organization"
* link[endpoint].target.profile = Canonical(NdhEndpoint)
* link[endpoint].target.type = #Endpoint
*/






