

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhEndpoint
Parent:         Endpoint
Id:             ndh-Endpoint
Title:          "NDH Endpoint Profile"
Description:    "This profile enables NDH to publish trusted, implementation-ready technical endpoints so directory consumers can reliably discover, evaluate, and connect to electronic exchange services including APIs and messaging; it adds endpoint-focused extensions for trust, registration, access control, testing, and environment context, and applies ValueSet bindings that standardize connection type, payload type, and MIME-type semantics."
* meta.lastUpdated 1..1
* extension contains 
    ImplementationGuideSupported named implementation-guide 0..* and
    SecureExchangeArtifacts named secure-exchange-artifacts 0..*  and
    SecurityDetails named security-details 0..*  and 
    DynamicRegistration named dynamic-registration 0..*  and
    AssociatedServers named associated-servers 0..* and
    EndpointAccessControlMechanism named access-control-mechanism 0..1 and
    EndpointRank named endpoint-rank 0..1 and
    EndpointIheSpecificConnectionType named ihe-specific-connection-type 0..* and
    VerificationStatus named verification-status 0..1 and
    EndpointEnvironmentType named environmentType 0..*
* extension[implementation-guide] ^short = "Implementation guide supported"
* extension[secure-exchange-artifacts] ^short = "Secure Exchange Artifacts store information about the type of public certificate, the certificate itself, 
and its expiration date. Issued by Certificate Authorities, public certificates are meant for sharing and verification in digital communications. Each certificate 
includes an expiration date, essential for validating its current validity and maintaining security. This extension is used when the exchange standard requires the discovery of the public key."
* extension[security-details] ^short = "Security details for an endpoint, including trust framework information, signed artifacts, and public certificates."
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
* payloadType 1..1
* payloadType from EndpointPayloadTypeVS (extensible) 
* payloadMimeType from EndpointFhirMimeTypeVS (required)
* payloadMimeType MS
* contact ^slicing.discriminator.type = #value
* contact ^slicing.discriminator.path = "system"
* contact ^slicing.rules = #open
* contact contains configuration-url 0..* MS
* contact[configuration-url] ^short = "Website where developers can configure access to this endpoint"
* contact[configuration-url] ^definition = "Contact information for the endpoint. This is the website where developers can configure access to this endpoint."
* contact[configuration-url].system 1..1 MS
* contact[configuration-url].system = #url
* contact[configuration-url].value 1..1 MS
* contact[configuration-url].value ^short = "an https:// URL for app developers"
* contact[configuration-url].value ^definition = "The value of the contact is an https:// URL for app developers to configure access to this endpoint."


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhHealthcareService
Parent:         HealthcareService
Id:             ndh-HealthcareService
Title:          "NDH HealthcareService Profile"
Description:    "This profile enables NDH to represent healthcare and community services in a consistent, searchable way so consumers can identify what is offered, where and how it is delivered, and who can access it; it adds extensions for ratings, new-patient intake, delivery method, funding, required documents, network linkage, and verification, and strengthens interoperability with ValueSet-constrained categories, types, specialties, provision conditions, eligibility codes, and programs."
* meta.lastUpdated 1..1
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
* extension[rating] ^short = "Evaluations or reviews for the service."
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
* category[HSC] from NdhHealthcareServiceCategoryVS (required)
* type MS
* type from HealthcareServiceTypeVS (extensible)
* specialty MS
* specialty from $HealthcareProviderTaxonomyVS (extensible)
* location only Reference(NdhLocation)
* location MS
* name MS
* telecom.extension contains
       LanguageSpeak named language-speak 0..*
* telecom.extension[language-speak] ^short = "Language Speak"
* coverageArea only Reference(NdhLocation)
* coverageArea MS
* serviceProvisionCode from $ServiceProvisionConditionsVS (extensible)
* eligibility MS
* eligibility.code MS
* eligibility.code from HealthcareServiceEligibilityCodeVS (extensible) 
* program from $ProgramVS (extensible)
* program.extension contains
    ServiceOrProgramRequirement named program-requirement 0..*
* program.extension[program-requirement] ^short = "Program Requirement"
* endpoint only Reference(NdhEndpoint)
* endpoint MS
// * appointmentRequired
// * availableTime
// * notAvailable
// * availabilityExceptions

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhInsurancePlan
Parent:         InsurancePlan
Id:             ndh-InsurancePlan
Title:          "NDH InsurancePlan Profile"
Description:    "This profile enables NDH to publish normalized insurance product and plan details, including coverage, network relationships, and administration, so users can compare options and accurately match plans to participating providers and service areas; it adds verification and identifier-status extensions and uses ValueSet bindings to normalize product type, coverage type, benefit type, and plan type classifications."
* obeys network-or-NatlDirwork 
* obeys plan-type-is-distinct
* meta.lastUpdated 1..1
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
Description:    "This profile enables NDH to define service locations with consistent operational and geographic details so consumers can accurately discover where care is delivered, understand access characteristics, and link locations to organizations, services, and endpoints; it adds extensions for geospatial boundaries, accessibility, new-patient status, and verification, and applies ValueSet constraints for status, mode, location type, address use and type, state, and days-of-week availability."
* ^baseDefinition = $USCoreLocation
* meta.lastUpdated 1..1
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
        LanguageSpeak named language-speak 0..*
* telecom.extension[language-speak] ^short = "Language Speak"
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
Description:    "This profile enables NDH to represent payer and provider network structures as computable directory data so users can determine network participation, geographic coverage, and organizational relationships that affect access and coverage decisions; it adds extensions for coverage-area references, organization period, and verification, and uses ValueSet bindings to standardize network type and key identifier semantics."
* ^baseDefinition = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization|6.1.0"
* meta.lastUpdated 1..1
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
* contact.address.state from http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state|6.1.0 (extensible)
* endpoint only Reference(NdhEndpoint)
* endpoint MS 


//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhOrganization
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization|6.1.0
Id:             ndh-Organization
Title:          "NDH Organization Profile"
Description:    "This profile enables NDH to publish authoritative organizational identities, attributes, and contact channels so directory consumers can verify entities, understand what they offer, and connect organizations to plans, networks, services, and exchange endpoints; it adds extensions for ratings, funding, accepted payments, organization description, insurance-plan linkage, CMS-alignment indicators, verification, logos, and alias metadata, and applies ValueSet constraints for organization type and state/address semantics."
* ^baseDefinition = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization|6.1.0"
* meta.lastUpdated 1..1
* extension contains
    Rating named rating 0..*  and
    PaymentAccepted named paymentaccepted  0..* and
    FundingSource named fundingSource 0..* and
    OrgDescription named org-description  0..1 and
    InsurancePlanReference named insuranceplan 0..* and
   CmsEnrollmentInGoodStanding named cms-enrollment-in-good-standing 0..1 and
   CmsIAL2Verified named ial2-verified 0..1 and
   AlignedWithCMSDataNetwork named aligned-with-cms-data-network 0..1 and
    VerificationStatus named verification-status 0..1 and
    Logo named logo 0..1
* extension[org-description] ^short = "Organization Description"
* extension[insuranceplan] ^short = "Insurance plan(s) offered to the organization's employees"
* extension[cms-enrollment-in-good-standing] ^short = "CMS Enrollment In Good Standing"
* extension[ial2-verified] ^short = "IAL2 Verified"
* extension[aligned-with-cms-data-network] ^short = "Aligned with CMS Data Network"
* identifier contains 
    TID 0..1
* identifier[TID] ^short = "Tax Identifier"
* identifier[TID] ^patternIdentifier.system = "http://hl7.org/fhir/sid/us-ssn"
* identifier.extension contains
    IdentifierStatus named identifier-status 0..1
//* identifier.type
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
        LanguageSpeak named language-speak 0..*
* telecom.extension[language-speak] ^short = "Language Speak"
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
* endpoint only Reference(NdhEndpoint)
* endpoint MS



//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhOrganizationAffiliation
Parent:         OrganizationAffiliation
Id:             ndh-OrganizationAffiliation
Title:          "NDH OrganizationAffiliation Profile"
Description:    "This profile enables NDH to describe formal affiliations between organizations in a computable way so consumers can understand delegated services, shared networks, service locations, and endpoint relationships that drive referral and access pathways; it adds extensions for verification, and branding, and uses ValueSet bindings for affiliation role and specialty coding to improve consistent role interpretation across implementations."
* meta.lastUpdated 1..1
* obeys organization-or-participatingOrganization
* extension contains
    VerificationStatus named verification-status 0..1 and
    Logo named logo 0..1
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
//* specialty from $HealthcareProviderTaxonomyVS (extensible)
* specialty ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* specialty ^binding.extension[=].extension[+].url = "key"
* specialty ^binding.extension[=].extension[=].valueId = "NDH-OrganizationAffiliation-specialty"
* specialty ^binding.extension[=].extension[+].url = "purpose"
* specialty ^binding.extension[=].extension[=].valueCode = #extensible
* specialty ^binding.extension[=].extension[+].url = "valueSet"
* specialty ^binding.extension[=].extension[=].valueCanonical = $HealthcareProviderTaxonomyVS
* specialty ^binding.extension[=].extension[+].url = "documentation"
* specialty ^binding.extension[=].extension[=].valueMarkdown = "The specialty(ies) of the participating organization in this affiliation."
* specialty ^binding.extension[=].extension[+].url = "shortDoco"
* specialty ^binding.extension[=].extension[=].valueString = "The specialty(ies) at the organization in this affiliation."

* location  MS
* location only Reference (NdhLocation)
* healthcareService only Reference (NdhHealthcareService)
* endpoint MS
* endpoint only Reference (NdhEndpoint)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:        NdhPractitioner
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner|6.1.0
Id:             ndh-Practitioner
Title:          "NDH Practitioner Profile"
Description:    "This profile enables NDH to represent healthcare practitioners with verifiable identity and qualification details so consumers can discover, trust, and select individual professionals participating in care delivery and directory exchange; it adds extensions for endpoint references, accessibility, ratings, CMS-alignment indicators, verification, and communication proficiency, and applies ValueSet constraints and additional bindings for qualification, taxonomy, credential, and address-state semantics."
* ^baseDefinition = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner|6.1.0"
* meta.lastUpdated 1..1
* extension contains
    USCoreRaceExtension|6.1.0 named us-core-race 0..1 and
    USCoreEthnicityExtension|6.1.0 named us-core-ethnicity 0..1 and
    http://hl7.org/fhir/StructureDefinition/individual-genderIdentity named individual-genderIdentity 0..0 and
    http://hl7.org/fhir/StructureDefinition/individual-pronouns named individual-pronouns 0..0 and
    RecordedSexOrGender named individual-recordedSexOrGender 0..0 and
    Accessibility named accessibility 0..* and
    Rating named rating 0..* and
    CmsEnrollmentInGoodStanding named cms-enrollment-in-good-standing 0..1 and
    CmsIAL2Verified named cms-ial2-verified 0..1 and
    AlignedWithCMSDataNetwork named aligned-with-cms-data-network 0..1 and
    VerificationStatus named verification-status 0..1
* extension[accessibility] ^short = "Accessibility"
* extension[rating] ^short = "Rating"
* extension[cms-enrollment-in-good-standing] ^short = "CMS Enrollment In Good Standing"
* extension[cms-ial2-verified] ^short = "CMS IAL2 Verified"
* extension[aligned-with-cms-data-network] ^short = "Aligned with CMS Data Network"
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
* address.extension contains 
    $GeolocationExtension named geolocation 0..1 MS
* address.state from http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state|6.1.0 (extensible)
* gender MS
* qualification  MS
* qualification.extension contains 
    PractitionerQualificationScope named scope 0..1
* qualification.identifier.extension contains
    IdentifierStatus named identifier-status 0..1 
* qualification.identifier.assigner only Reference(NdhOrganization)
* qualification.code 1..1
// use extension additional-binding to bind HealthcareIndividualTaxonomyVS and FaCeTcredentialVS to qualification.code
* qualification.code ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* qualification.code ^binding.extension[=].extension[+].url = "key"
* qualification.code ^binding.extension[=].extension[=].valueId = "nucc"
* qualification.code ^binding.extension[=].extension[+].url = "purpose"
* qualification.code ^binding.extension[=].extension[=].valueCode = #extensible
* qualification.code ^binding.extension[=].extension[+].url = "valueSet"
* qualification.code ^binding.extension[=].extension[=].valueCanonical = Canonical(HealthcareIndividualTaxonomyVS)
* qualification.code ^binding.extension[=].extension[+].url = "documentation"
* qualification.code ^binding.extension[=].extension[=].valueMarkdown = "The code that identifies the license, or certification held by the individual.  For example, a practitioner may have a medical license, and a nursing license."
* qualification.code ^binding.extension[=].extension[+].url = "shortDoco"
* qualification.code ^binding.extension[=].extension[=].valueString = "The code that identifies license, or certification; regulated authorization to practice."
* qualification.code ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* qualification.code ^binding.extension[=].extension[+].url = "key"
* qualification.code ^binding.extension[=].extension[=].valueId = "credentials"
* qualification.code ^binding.extension[=].extension[+].url = "purpose"
* qualification.code ^binding.extension[=].extension[=].valueCode = #extensible
* qualification.code ^binding.extension[=].extension[+].url = "valueSet"
* qualification.code ^binding.extension[=].extension[=].valueCanonical = Canonical(FaCeTcredentialVS)
* qualification.code ^binding.extension[=].extension[+].url = "documentation"
* qualification.code ^binding.extension[=].extension[=].valueMarkdown = "The code that identifies the credential held by the individual.  For example, a practitioner may have a Fellowship in cardiology from the American College of Cardiology."
* qualification.code ^binding.extension[=].extension[+].url = "shortDoco"
* qualification.code ^binding.extension[=].extension[=].valueString = "The code that identifies the credential; evidence that supports or proves an authorization."
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
Description:    "This profile enables NDH to express how practitioners function within organizations, locations, services, and networks so users can understand role-specific participation and route patients to the right provider context for care and coverage; it adds extensions for ratings, new-patient intake, network references, and verification, and uses ValueSet bindings for practitioner-role and specialty coding to support consistent downstream matching and routing."
* ^baseDefinition = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole|6.1.0"
* meta.lastUpdated 1..1
* obeys practitioner-or-organization-or-healthcareservice-or-location 
* extension contains
   Rating named rating 0..* and 
   NewPatients named newpatients 0..* MS and
   NetworkReference named network 0..* MS and
   VerificationStatus named verification-status 0..1
* extension[rating] ^short = "Rating"
* extension[newpatients] ^short = "New Patients"
* extension[network] ^short = "Network Reference"
* extension[network] ^short = "NetworkReference"
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
* specialty from HealthcareIndividualTaxonomyVS (extensible)
* location only Reference(NdhLocation)
* healthcareService MS
* healthcareService only Reference(NdhHealthcareService)
* endpoint only Reference(NdhEndpoint) 


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: NdhVerification
Parent: VerificationResult
Id: ndh-Verification
Title: "NDH Verification"
Description: "This profile enables NDH to capture verification provenance, status, and timing for directory data so consumers can assess trust, recency, and validation method when making decisions based on published provider, organization, and role information; it adds CMS-focused verification extensions and applies ValueSet bindings for validation type, process, primary-source type, and communication method to normalize attestation workflows."
* ^date = "2023-01-22T12:42:47.483-05:00"
* ^status = #active
* . ^short = "Verification"
* . ^definition = "Describes Verification requirements, source(s), status and dates for one or more elements"
* extension contains
   CmsEnrollmentInGoodStanding named cms-enrollment-in-good-standing 0..1 and
   CmsIAL2Verified named cms-ial2-verified 0..1
* extension[cms-enrollment-in-good-standing] ^short = "CMS Enrollment In Good Standing"
* extension[cms-ial2-verified] ^short = "CMS IAL2 Verified"
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

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


Profile: NdhGroup
Parent: Group
Id: ndh-Group
Title: "NDH Group"
Description: "This profile enables NDH to represent multidisciplinary provider groups as directory entities so consumers can discover team-based programs and services and understand the practitioner and practitioner-role membership that supports coordinated care delivery; it adds extensions for location and endpoint references, verification, artifact description, and effective period, and uses ValueSet-constrained group coding to standardize program/service classification."
* meta.lastUpdated 1..1
* extension contains
    LocationReference named location 0..* and
    EndpointReference named endpoint 0..* and
    ServiceOffered named service-offered 0..* and
    VerificationStatus named verification-status 0..1 and
    http://hl7.org/fhir/StructureDefinition/artifact-description named artifact-description 0..1 and
    http://hl7.org/fhir/StructureDefinition/artifact-effectivePeriod named artifact-effectivePeriod 0..1
* extension[location] ^short = "Network coverage area"
* extension[endpoint] ^short = "Endpoint Reference"
* extension[service-offered] ^short = "Service Offered"
* extension[verification-status] ^short = "Group Verification Status"
* extension[artifact-description] ^short = "Group Description"
* extension[artifact-effectivePeriod] ^short = "Group Effective Period"
* identifier MS
* active 1..1 MS
* active = true (exactly)
* type = #practitioner (exactly)
* actual = true (exactly)
* code 1..1 MS
* code from NDHCareTeamCategoryVS (extensible)
* code ^short = "NDH Group type (Care Team Category)"
* name 1..1 MS
* managingEntity only Reference(NdhOrganization)
* managingEntity MS
* member MS
* member.entity only Reference(NdhPractitioner or NdhPractitionerRole)
* member.period MS
* member.inactive MS
