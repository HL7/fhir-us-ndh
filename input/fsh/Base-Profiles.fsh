

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhEndpoint
Parent:         Endpoint
Id:             ndh-Endpoint
Title:          "NDH Endpoint Profile"
Description:    "The technical details of an endpoint that can be used for electronic services, such as a portal or FHIR REST services, messaging or operations, or DIRECT messaging."
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International" 
* extension contains 
    FhirIg named implementation-guide 0..* and
    SecureExchangeArtifacts named secure-exchange-artifacts 0..*  and
    TrustFramework named trust-framework 0..*  and 
    DynamicRegistration named dynamic-registration 0..*  and
    AssociatedServers named associated-servers 0..* and
    EndpointAccessControlMechanism named access-control-mechanism 0..1 and
    EndpointConnectionTypeVersion named connection-type-version 0..* and
    EndpointRank named endpoint-rank 0..1 and
    EndpointIheSpecificConnectionType named ihe-specific-connection-type 0..* and
    VerificationStatus named verification-status 0..1 and
    EndpointTestingCertification named testing-certification 0..* and
    EndpointenvironmentType named environmentType 0..*
* extension[implementation-guide] ^short = "Implementation guide supported"
* extension[secure-exchange-artifacts] ^short = "Secure Exchange Artifacts store information about the type of public certificate, the certificate itself, 
and its expiration date. Issued by Certificate Authorities, public certificates are meant for sharing and verification in digital communications. Each certificate 
includes an expiration date, essential for validating its current validity and maintaining security. This extension is used when the exchange standard requires the discovery of the public key."
* extension[trust-framework] ^short = "A trust framework is a structured set of rules, policies, protocols, and standards that define how trust is established, managed, 
and maintained between different entities (such as organizations, systems, or users) involved in the exchange of healthcare information. It provides the guidelines and 
technical specifications that ensure secure, interoperable, and reliable data exchange."
* extension[dynamic-registration] ^short = "Dynamic registration within a trust framework refers to a process where clients can register with a server or service provider 
dynamically and securely at runtime, rather than being pre-registered manually. This approach is often used in environments where scalability, flexibility, and security 
are crucial. Currently, dynamic registration is used in SMART and UDAP."
* extension[associated-servers] ^short = "Store information about servers that may be associated with the current endpoint. It defines a set of servers that could be linked 
to this endpoint. If a server is associated, its type and URL will be included"
* extension[access-control-mechanism] ^short = "Access control mechanisms are designed to protect and manage access to healthcare endpoints, ensuring that data exchange 
between systems adheres to specific security protocols when needed."
* extension[endpoint-rank] ^short = "Preferred order for connecting to the endpoint"
* extension[ihe-specific-connection-type] ^short = "IHE Specific Connection Type"
* extension[verification-status] ^short = "Verification Status"
* extension[testing-certification] ^short = "Endpoint Testing Certification"
* extension[environmentType] ^short = "The type of environment exposed at this endpoint"
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
* contact.extension contains
    ContactPointAvailableTime named contactpoint-availabletime 0..* and
    ViaIntermediary named via-intermediary 0..1
* contact.extension[via-intermediary] ^short = "Via Intermediary"
* payloadType 1..1
* payloadType from EndpointPayloadTypeVS (extensible) 
* payloadMimeType from EndpointFhirMimeTypeVS (required)
* payloadMimeType MS


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhHealthcareService
Parent:         HealthcareService
Id:             ndh-HealthcareService
Title:          "NDH HealthcareService Profile"
Description:    "The HealthCareService resource typically describes services offered by an organization/practitioner at a location. 
The resource may be used to encompass a variety of services covering the entire healthcare spectrum, including promotion, prevention, diagnostics, pharmacy, 
hospital and ambulatory care, home care, long-term care, and other health-related and community services."
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* extension contains
    Rating named rating 0..*  and
    NewPatients named newpatients 0..* and
    DeliveryMethod named deliverymethod 0..* and
    PaymentAccepted named paymentaccepted  0..* and
    RequiredDocument named requiredDocument 0..* and
    FundingSource named fundingSource 0..* and
    VerificationStatus named verification-status 0..1 and
    NetworkReference named network 0..* and
    ServiceOrProgramRequirement named social-service-requirement 0..* and
    Logo named logo 0..1
* extension[Rating] ^short = "Evaluations or reviews for the service."
* extension[newpatients] ^short = "Is the service currently accepting new patients?"
* extension[deliverymethod] ^short = "Method of providing the service."
* extension[paymentaccepted] ^short = "Forms of payment accepted."
* extension[requiredDocument] ^short = "Documents required for the service."
* extension[fundingSource] ^short = "Funding source for the service."
* extension[verification-status] ^short = "Verification Status"
* extension[network] ^short = "Network associated with social service."
* extension[social-service-requirement] ^short = "Social Service Requirement"
* extension[logo] ^short = "Service Logo"
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
* identifier.extension[identifier-status] ^short = "Identifier Status"
* identifier.assigner only Reference(NdhOrganization)
* active 1..1 MS
* active = true 
* providedBy only Reference(NdhOrganization) 
* providedBy MS
* category 1..* MS 
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = ""
* category ^slicing.ordered = false
* category contains HSC 0..1 MS
* category[HSC] ^short = "NDH HealthcareService Category"
* category[HSC] only CodeableConcept
* category[HSC] from HealthcareServiceCategoryVS (required)



* type MS
* type from HealthcareServiceTypeVS (extensible)
* specialty MS
* specialty from $HealthcareProviderTaxonmyVS (extensible)
* location only Reference(NdhLocation)
* location MS
* name MS
* telecom.extension contains
       ContactPointAvailableTime named contactpoint-availabletime 0..* and
       ViaIntermediary named via-intermediary 0..1 and
       LanguageSpeak named language-speak 0..*
* telecom.extension[ContactPointAvailableTime] ^short = "Availability Hours for the Contact Point"
* telecom.extension[language-speak] ^short = "Language Speak"
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* coverageArea only Reference(NdhLocation)
* coverageArea MS
* serviceProvisionCode from $ServiceProvisionConditionsVS (extensible)
* eligibility.code from HealthcareServiceEligibilityCodeVS (extensible) 
* program from $ProgramVS (extensible)
* program.extension contains
    ServiceOrProgramRequirement named program-requirement 0..*
* program.extension[program-requirement] ^short = "Program Requirement"
* endpoint only Reference(NdhEndpoint)
* endpoint MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhInsurancePlan
Parent:         InsurancePlan
Id:             ndh-InsurancePlan
Title:          "NDH InsurancePlan Profile"
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
* extension contains
    VerificationStatus named verification-status 0..1
* identifier MS
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
* identifier.assigner only Reference(NdhOrganization)
* status 1..1 MS
* status = #active  (exactly) 
* type 1..1  MS
* type from $InsuranceProductTypeVS (extensible)
* type ^short = "Product Type"
* name MS 
* ownedBy only Reference(NdhOrganization)
* administeredBy only Reference(NdhOrganization)
* coverageArea only Reference(NdhLocation)
* coverageArea MS
* contact.telecom.extension contains
    ContactPointAvailableTime named contactpoint-availabletime 0..*  and
    ViaIntermediary named via-intermediary 0..1 
* contact.telecom.extension[via-intermediary] ^short = "Via Intermediary"
* endpoint only Reference(NdhEndpoint)
* network only Reference(NdhNetwork)
* network  MS
* coverage.type from $InsuranceCoverageTypeVS (extensible)
* coverage.network MS
* coverage.network only Reference(NdhNetwork)
* coverage.benefit.type from BenefitTypeVS (extensible)
* plan ^short = "Cost sharing details for the plan"
* plan.type from $InsurancePlanTypeVS (extensible)
* plan.type ^short = "Categorization of the cost sharing for the plan"
* plan.coverageArea only Reference(NdhLocation)
* plan.identifier.extension contains
    IdentifierStatus named identifier-status 0..1
* plan.identifier.assigner only Reference(NdhOrganization)
* plan.network only Reference(NdhNetwork)

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhLocation
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-location|6.1.0
Id:             ndh-Location
Title:          "NDH Location Profile"
Description:    "A Location is the physical place where healthcare services are provided, practitioners are employed, 
                 organizations are based, etc. Locations can range in scope from a room in a building to a geographic region/area."
* ^baseDefinition = $USCoreLocation
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* extension contains
    $R4GeoJSONExtension named location-boundary-geojson 0..1 and
    Accessibility named accessibility 0..* and
    NewPatients named newpatients 0..* and
    VerificationStatus named verification-status 0..1
* extension[location-boundary-geojson] ^short = "Associated Region (GeoJSON)"
* extension[newpatients] ^short = "New Patients"
* extension[accessibility] ^short = "Accessibility"
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
* identifier.assigner only Reference(NdhOrganization)
* status 1..1 MS
* status = $LocationStatus#active  (exactly)
* operationalStatus from $Hl7VSBedStatusV20116VS (preferred)
* mode from $LocationModeVS (required)
* name 1..1 MS
* type MS
* type from $V3ServiceDeliveryLocationRoleTypeVS (extensible)
* telecom MS
* telecom.extension contains
        ContactPointAvailableTime named contactpoint-availabletime 0..* and
        ViaIntermediary named via-intermediary 0..1 and
        LanguageSpeak named language-speak 0..*
* telecom.extension[language-speak] ^short = "Language Speak"
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* address MS
* address.use from $AddressUseVS (required)
* address.type from $AddressTypeVS (required)
* address.line 0..4 MS
* address.city MS
* address.state MS
* address.state from http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state|6.1.0 (extensible)
* address.postalCode MS
* address.country MS
* managingOrganization 0..1 MS
* managingOrganization only Reference(NdhOrganization)
* partOf 0..1 MS
* partOf only Reference(NdhLocation)
* hoursOfOperation.daysOfWeek from $DaysOfWeekVS (required)
* endpoint MS
* endpoint only Reference(NdhEndpoint)

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhNetwork
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization|6.1.0
Id:             ndh-Network
Title:          "NDH Network Profile"
Description:    "A Network refers to a healthcare provider insurance network. A healthcare provider insurance network is an aggregation of organizations and individuals 
that deliver a set of services across a geography through health insurance products/plans. In the NDH IG, individuals and organizations are represented as participants 
in a National Directory Exchange Network through the practitionerRole and National Directory Exchange-organizationAffiliation resources, respectively."
* ^baseDefinition = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization|6.1.0"
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* extension contains
    LocationReference named location 0..* and
    $OrganizationPeriodExt named organization-period 0..1 and
    VerificationStatus named verification-status 0..1
* extension[location] ^short = "Network coverage area"
* extension[organization-period] ^short = "Valid time period for this Network"
* identifier MS
* identifier.use from http://hl7.org/fhir/ValueSet/identifier-use|4.0.1 (required)
* identifier.type from http://hl7.org/fhir/ValueSet/identifier-type|4.0.1 (extensible)
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
* identifier.assigner only Reference(NdhOrganization)
* identifier[NPI] 0..0
* identifier[CLIA] 0..0
* active 1..1 MS
* active = true (exactly)
* type from NetworkTypeVS (required)
* type 1..1 MS
* name 1..1 MS
* address.line 0..4 MS
* address.city MS
* address.state MS
* address.state from http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state|6.1.0 (extensible)
* address.postalCode MS
* address.country MS
* partOf 1..1 MS
* partOf only Reference(NdhOrganization)
* partOf ^short = "The organization that manages this network"
* contact.telecom.extension contains
       ContactPointAvailableTime named contactpoint-availabletime 0..*  and
       ViaIntermediary named via-intermediary 0..1
* contact.telecom.extension[via-intermediary] ^short = "Via Intermediary"
* contact.address.state from http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state|6.1.0 (extensible)
* endpoint only Reference(NdhEndpoint)
* endpoint MS 


//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhOrganization
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization|6.1.0
Id:             ndh-Organization
Title:          "NDH Organization Profile"
Description:    "An organization is a formal or informal grouping of people or organizations with a common purpose, such as a company, institution, corporation, 
community group, or healthcare practice. Guidance: When the contact is a department name, rather than a human (e.g., patient help line), include a blank family 
and given name, and provide the department name in contact.name.text"
* ^baseDefinition = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization|6.1.0"
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* extension contains
    Rating named rating 0..*  and
    PaymentAccepted named paymentaccepted  0..* and
    FundingSource named fundingSource 0..* and
    OrgDescription named org-description  0..1 and
    Digitalcertificate named digitalcertificate 0..* and
    Qualification named qualification 0..* and
    InsurancePlanReference named insuranceplan 0..* and
    VerificationStatus named verification-status 0..1 and
    Logo named logo 0..1
* extension[org-description] ^short = "Organization Description"
* extension[digitalcertificate] ^short = "Digital Certificate"
* extension[qualification] ^short = "Qualification"
* extension[insuranceplan] ^short = "Insurance plan(s) offered to the organization's employees"
* identifier contains 
    TID 0..1
* identifier[TID] ^short = "Tax Identifier"
* identifier[TID] ^patternIdentifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
* identifier.type
* identifier.value MS
* identifier.system MS
* identifier.assigner only Reference(NdhOrganization)
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
* address 0..* MS
* address.extension contains $GeolocationExtension named geolocation 0..1
* address.line 0..4 MS
* address.city MS
* address.state MS
* address.state from http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state|6.1.0 (extensible)
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
* endpoint only Reference(NdhEndpoint)
* endpoint MS



//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhOrganizationAffiliation
Parent:         OrganizationAffiliation
Id:             ndh-OrganizationAffiliation
Title:          "NDH OrganizationAffiliation Profile"
Description:    "The OrganizationAffiliation resource describes relationships between two or more organizations, including the services one organization provides another, 
the location(s) where they provide services, the availability of those services, electronic endpoints, and other relevant information."
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* obeys organization-or-participatingOrganization
* extension contains
    Qualification named qualification 0..* and
    VerificationStatus named verification-status 0..1 and
    Logo named logo 0..1
* extension[qualification] ^short = "Qualification"
* identifier MS
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
* identifier.assigner only Reference(NdhOrganization)
* active 1..1
* active = true 
* period MS
* organization  MS
* organization only Reference (NdhOrganization)
* participatingOrganization  MS
* participatingOrganization only Reference (NdhOrganization)
* network only Reference (NdhNetwork)
* code from OrganizationAffiliationRoleVS  (extensible)
* specialty from $HealthcareProviderTaxonmyVS (extensible)
* location  MS
* location only Reference (NdhLocation)
* healthcareService only Reference (NdhHealthcareService)
* telecom.extension contains
    ContactPointAvailableTime named contactpoint-availabletime 0..*  and
    ViaIntermediary named via-intermediary 0..1
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* endpoint MS
* endpoint only Reference (NdhEndpoint)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhPractitioner
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner|6.1.0
Id:             ndh-Practitioner
Title:          "NDH Practitioner Profile"
Description:    "Practitioner is a person who is directly or indirectly involved in the provisioning of healthcare."
* ^baseDefinition = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner|6.1.0"
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* extension contains
    USCoreRaceExtension|6.1.0 named us-core-race 0..1 and
    USCoreEthnicityExtension|6.1.0 named us-core-ethnicity 0..1 and
    PGenderIdentity named individual-genderIdentity 0..0 and
    PPronouns named individual-pronouns 0..0 and
    RecordedSexOrGender named individual-recordedSexOrGender 0..0 and
    EndpointReference named endpoint 0..* and
    Accessibility named accessibility 0..* and
    Digitalcertificate named digitalcertificate 0..* and
    Rating named rating 0..* and
    VerificationStatus named verification-status 0..1
* extension[endpoint] ^short = "Endpoint Reference"
* extension[accessibility] ^short = "Accessibility"
* extension[digitalcertificate] ^short = "Digital Certificate"
* extension[rating] ^short = "Rating"
* identifier MS
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
* identifier.system MS
* identifier.value MS
* identifier.assigner only Reference(NdhOrganization)
* active 1..1
* active = true 
* name 1..* MS
* name.text MS
* name.family 1..1 MS
* telecom.extension contains
    ContactPointAvailableTime named contactpoint-availabletime 0..*  and
    ViaIntermediary named via-intermediary 0..1
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* address.extension contains 
    $GeolocationExtension named geolocation 0..1 MS
* address.state from http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state|6.1.0 (extensible)
* qualification  MS
* qualification.extension contains 
    PractitionerQualification named practitioner-qualification 0..1
* qualification.identifier.extension contains
    IdentifierStatus named identifier-status 0..1 
* qualification.identifier.assigner only Reference(NdhOrganization)
* qualification.code 1..1
* qualification.code from IndividualSpecialtyAndDegreeLicenseCertificateVS (extensible)
* qualification.period
* qualification.issuer MS
* qualification.issuer only Reference(NdhOrganization)
* communication.extension contains
   CommunicationProficiency named communication-proficiency 0..1


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhPractitionerRole
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole|6.1.0
Id:             ndh-PractitionerRole
Title:          "NDH PractitionerRole"
Description:    "PractitionerRole typically describes details about a provider. When the provider is a practitioner, there may be a relationship to an organization. 
A provider renders services at a location. Practitioner participation in healthcare provider insurance networks may be direct or through their role at an organization. 
PractitionerRole involves either the actual or potential (hence the optionality on Practitioner) of an individual to play this role on behalf of or under the auspices of 
an organization. The absence of a Practitioner resource does not imply that the Organization itself is playing the role of a Practitioner, instead it implies that role 
has been established by the Organization and MAY apply that to a specific Practitioner."
* ^baseDefinition = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole|6.1.0"
* meta.lastUpdated 1..1
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* obeys practitioner-or-organization-or-healthcareservice-or-location 
* extension contains
   Rating named rating 0..* and 
   NewPatients named newpatients 0..* and
   NetworkReference named network 0..1 and
   Digitalcertificate named digitalcertificate 0..* and
   Qualification named qualification 0..* and
   VerificationStatus named verification-status 0..1
* extension[newpatients] ^short = "New Patients"
* extension[network] ^short = "NetworkReference"
* extension[digitalcertificate] ^short = "Digital Certificate"
* extension[qualification] ^short = "Qualification"
* identifier MS
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
* identifier.assigner only Reference(NdhOrganization)
* active 1..1
* active = true
* practitioner only Reference(NdhPractitioner)
* organization only Reference(NdhOrganization)
* organization ^short = "Organization where the role is available"
* organization ^definition = "The organization where this role is available"
* organization ^comment = "Some relationships (represented as PractitionerRoles) that may exist between practitioners and organizations include:
 - A practitioner may act as a pediatrician when associated with an organization that runs a family clinic.  PractitionerRole.organization would represent the family clinic.
 - The same practitioner may act as a physician when providing physicals for an athletics department at a school.  PractitionerRole.organization would represent the school.
 - A practitioner may perform coumadin anticoagulation services for a clinic run by a health system.   PractitionerRole.organization would represent the coumadin clinic.
 - A practitioner may act as an inpatient pharmacist reviewing and dispensing medications.  PractitionerRole.organization would represent the hospital pharmacy.
 - A practitioner may perform medication management and adherence services for an internal medicine clinic.  PractitionerRole.organization would represent the internal medicine clinic.
 - A practitioner is part of a payer's network such as a preferred provider organization (PPO), or health maintenance organizations (HMO)).  
PractitionerRole.organization would represent the payer's network.
Each of the examples above, would be represented as different PractitionerRole instances, each with a different values for PractitionerRole.organization."
* code 0..*
* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "$this"
* code ^slicing.rules = #open
* code ^slicing.description = "NDH PractitionerRole Code"
* code ^slicing.ordered = false
* code contains NDHPractitionerRoleCode 0..*
* code[NDHPractitionerRoleCode] ^short = "NDH PractitionerRole Code"
* code[NDHPractitionerRoleCode] only CodeableConcept
* code[NDHPractitionerRoleCode] from PractitionerRoleVS (required)
* specialty from IndividualAndGroupSpecialtiesVS (extensible)
* location only Reference(NdhLocation)
* healthcareService MS
* healthcareService only Reference(NdhHealthcareService)
* telecom.extension contains
    ContactPointAvailableTime named contactpoint-availabletime 0..*  and
    ViaIntermediary named via-intermediary 0..1
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* endpoint only Reference(NdhEndpoint) 


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: NdhVerification
Parent: VerificationResult
Id: ndh-Verification
Title: "NDH Verification"
Description: "Describes Verification requirements, source(s), status and dates for one or more elements"
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* ^date = "2023-01-22T12:42:47.483-05:00"
* ^status = #active
* . ^short = "Verification"
* . ^definition = "Describes Verification requirements, source(s), status and dates for one or more elements"
* target 1..* MS
* target ^short = "The resource instance was verified or attested"
* targetLocation MS
* targetLocation ^short = "The fhirpath location(s) within the resource instance that was verified or attested"
* need 1..1 MS
* status MS
* statusDate 1..1 MS
* validationType 1..1 MS
* validationType from $verificationresult-validation-type
* validationType ^short = "Whether the target was verified against primary source(s), mutually attested between resource(s), or nothing"
* validationProcess 1..* MS
* validationProcess from VerificationProcessVS (extensible)
* validationProcess ^short = "The process(es) by which the target was verified"
* frequency MS
* frequency ^short = "Frequency of verification"
* lastPerformed MS
* lastPerformed ^short = "The date/time verification was last completed (including failed verifications)"
* nextScheduled MS
* nextScheduled ^short = "The date when target is next verified, if appropriate"
* failureAction 1..1 MS
* primarySource MS
* primarySource.who MS
* primarySource.who only Reference(NdhOrganization or NdhPractitioner or NdhPractitionerRole)
* primarySource.type 1..* MS
* primarySource.type from $VerificationresultPrimarySourceTypeVS (extensible)
* primarySource.type ^definition = "Type of primary source"
* primarySource.communicationMethod 0..* MS
* primarySource.communicationMethod from $VerificationresultCommunicationMethodVS (extensible)
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
* attestation.communicationMethod from $VerificationresultCommunicationMethodVS (extensible)
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