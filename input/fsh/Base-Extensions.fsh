
Extension: Accessibility
Id: base-ext-accessibility
Title: "NDH Accessibility"
Description: "This extension enables NDH to communicate accessibility accommodations for practitioners and locations in a consistent, computable form, using a coded value with extensible binding to AccessibilityVS for interoperable discovery and filtering; it is used in Location and Practitioner."
Context: Location, Practitioner
* value[x] 1..1 MS
* value[x] only CodeableConcept 
* value[x] from AccessibilityVS (extensible)

Extension: AssociatedServers
Id: base-ext-associatedServers
Title: "NDH Associated Servers"
Description: "This extension enables NDH to represent endpoint-to-server associations so implementers can publish alternate or companion server routes for operational flexibility, with structured sub-extensions for server type and server URL and an extensible binding to NdhAssociatedServersTypeVS for consistent classification; it is used in Endpoint."
Context: Endpoint
* extension contains
   associatedServersType  1..1 MS and
   serverURL 0..1 MS 
* extension[associatedServersType].value[x] only CodeableConcept
* extension[associatedServersType] ^short = "Associated Server Type"
* extension[associatedServersType].value[x] 1..1
* extension[associatedServersType].value[x] from NdhAssociatedServersTypeVS (extensible)  
* extension[serverURL].value[x] only string
* extension[serverURL] ^short = "Binary"
* extension[serverURL].value[x] 1..1


Extension: CommunicationProficiency
Id: base-ext-communication-proficiency
Title: "NDH Communication Proficiency"
Description: "This extension enables NDH to encode a practitioner's language proficiency level for a declared communication language, using a CodeableConcept bound extensibly to ILRReadingScaleVS to support consistent language-access matching; it is used in Practitioner.communication."
Context: Practitioner.communication
* value[x] 1..1 
* value[x] only CodeableConcept 
* value[x] from $ILRReadingScaleVS (extensible)


Extension: EndpointTestingCertification   
Id: base-ext-endpoint-testing-certification
Title: "NDH Endpoint Testing Certification"
Description: "This extension enables NDH to document endpoint testing and certification evidence, including tester, method, certificate artifact, and relevant timestamps, using structured sub-extensions and an extensible binding to EndpointTestingMethodVS for harmonized test-method representation; it is used in Endpoint."
Context: Endpoint
* value[x] 0..0
* extension contains
   testBy 0..1 and
   element 0..* and
   when 0..1 and
   testName 0..* and
   method 0..* and 
   certificate 0..1 and
   expirationDate 0..1 and 
   lastUpdated 0..1
* extension[testBy].value[x] only Reference(NdhOrganization)
* extension[testBy] ^short = "Organization conducting or providing the testing"
* extension[element].value[x] only Expression
* extension[element] ^short = "FHIRPath expression to the element being tested/verified"
* extension[when].value[x] only dateTime
* extension[when] ^short = "Date and time the test was performed"
* extension[testName].value[x] only string
* extension[testName] ^short = "Name of the test"
* extension[method].value[x] only CodeableConcept
* extension[method] ^short = "Method used to perform the test"
* extension[method].value[x] from EndpointTestingMethodVS (extensible)
* extension[certificate].value[x] only base64Binary
* extension[certificate] ^short = "X509 V3 identity Certificate issued and signed by Testing/Certification entity"
* extension[expirationDate].value[x] only date
* extension[expirationDate] ^short = "Expiration date of the certificate"
* extension[lastUpdated].value[x] only dateTime
* extension[lastUpdated] ^short = "Timestamp of the last update for the Endpoint instance during certificate testing"

Extension: ContactPointAvailableTime
Id: base-ext-contactpoint-availabletime
Title: "NDH Contact Point Available Time"
Description: "This extension enables NDH to publish contact-point availability windows in a uniform format, with sub-extensions for days, all-day indicator, and start/end times, and a DayOfWeek code binding to support consistent schedule interpretation across resources; it is used in Endpoint.contact, HealthcareService.telecom, InsurancePlan.contact.telecom, Location.telecom, Organization.telecom, Organization.contact.telecom, OrganizationAffiliation.telecom, Practitioner.telecom, and PractitionerRole.telecom."
Context: Endpoint.contact, HealthcareService.telecom, InsurancePlan.contact.telecom,
Location.telecom, Organization.telecom, Organization.contact.telecom, OrganizationAffiliation.telecom, Practitioner.telecom, PractitionerRole.telecom
* value[x] 0..0
* extension contains
   daysOfWeek 0..* MS and 
   allDay 0..1 MS and
   availableStartTime 0..1 MS and
   availableEndTime 0..1 MS
* extension[daysOfWeek].value[x] only code 
* extension[daysOfWeek].valueCode from $DaysOfWeekVS
* extension[allDay].value[x] only boolean 
* extension[availableStartTime].value[x] only time 
* extension[availableEndTime].value[x] only time  


Extension: DeliveryMethod
Id: base-ext-delivery-method
Title: "NDH Delivery Method"
Description: "This extension enables NDH to declare how a service is delivered and, when virtual, which modalities are supported, using structured sub-extensions and ValueSet bindings to DeliveryMethodVS and VirtualModalitiesVS for predictable service-access routing; it is used in HealthcareService."
Context: HealthcareService
* value[x] 0..0
* extension contains
   deliveryMethodtype 1..1 and
   virtualModalities 0..* MS 
* extension[deliveryMethodtype].value[x] only CodeableConcept 
* extension[deliveryMethodtype].value[x] from $DeliveryMethodVS (required)
* extension[deliveryMethodtype] ^short = "Physical or Virtual Service Delivery"
* extension[deliveryMethodtype].value[x] 1..1
* extension[virtualModalities].value[x] only CodeableConcept 
* extension[virtualModalities].value[x] from VirtualModalitiesVS (extensible)
* extension[virtualModalities].value[x] 1..1
* extension[virtualModalities] ^short = "Modalities of Virtual Delivery"


Extension: DynamicRegistration
Id: base-ext-dynamicRegistration
Title: "NDH Dynamic Registration"
Description: "This extension enables NDH to convey dynamic client-registration capabilities for trust-framework participation, using sub-extensions for trust profile and version and an extensible binding to TrustProfileVS to standardize runtime registration signaling; it is used in Endpoint."
Context: Endpoint
* extension contains
   trustProfile 0..1 and
   version  0..1 MS
* extension[trustProfile].value[x] only CodeableConcept
* extension[trustProfile].value[x] from TrustProfileVS (extensible)
* extension[version].value[x] only string
* extension[version] ^short = "Trust Profile Version"
* extension[version].value[x] 0..1

Extension: EndpointRank
Id: base-ext-endpoint-rank
Title: "NDH Endpoint Rank"
Description: "This extension enables NDH to express preferred ordering among functionally equivalent endpoints, using a required positive integer so clients can deterministically select connection priority; it is used in Endpoint."
Context: Endpoint
* value[x] 1..1
* value[x] only positiveInt



Extension: EndpointReference
Id: base-ext-endpoint-reference
Title: "NDH Endpoint Reference"
Description: "This extension enables NDH to attach a direct reference to an NDH Endpoint resource so technical exchange capabilities can be resolved from practitioner-facing directory data; it is used in Practitioner."
Context: Practitioner
* value[x] only Reference(NdhEndpoint) 
* value[x] 1..1 

Extension: EndpointenvironmentType
Id: base-ext-endpoint-environment-type
Title: "NDH Endpoint EnvironmentType"
Description: "This extension enables NDH to classify endpoint environment context, using a CodeableConcept with extensible binding to NdhEndpointEnvironmentVS so consumers can distinguish operational deployment targets consistently; it is used in Endpoint."
Context: Endpoint
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from NdhEndpointEnvironmentVS (extensible)

Extension: EndpointIheSpecificConnectionType
Id: base-ext-endpoint-ihe-specific-connection-type
Title: "NDH Endpoint IHE Specific Connection Type"
Description: "This extension enables NDH to represent IHE-specific endpoint connection semantics when base connectionType coding is insufficiently granular, using a preferred binding to EndpointIheSpecificConnectionTypeVS for more precise interoperability declarations; it is used in Endpoint."
Context: Endpoint
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from EndpointIheSpecificConnectionTypeVS (preferred)




Extension: ImplementationGuideSupported
Id: base-ext-implementation-guide
Title: "NDH Implementation Guide Supported"
Description: "This extension enables NDH to declare implementation-guide compatibility for endpoints when standard connection-type coding does not fully describe behavior, using structured sub-extensions for IG URI, name, use case, version, actor, and options with extensible use-case binding to NdhImplementationGuideVS; it is used in Endpoint."
Context: Endpoint
* value[x] 0..0
* extension contains
   ig-uri 0..1 and
   ig-name 0..1 and
   ig-usecase 0..* and
   ig-version 0..1 and
   ig-actor 0..* and
   ig-option 0..*
* extension[ig-uri] ^short = "IG Publication URI"
* extension[ig-uri].value[x] only canonical
* extension[ig-name] ^short = "IG Name"
* extension[ig-name].value[x] only string
* extension[ig-usecase] ^short = "IG Use Case"
* extension[ig-usecase] ^comment = "This is the use-case that is addressed by the named implementation guide"
* extension[ig-usecase].value[x] only CodeableConcept 
* extension[ig-usecase].valueCodeableConcept from NdhImplementationGuideVS (extensible)
* extension[ig-version] ^short = "IG Version"
* extension[ig-version].value[x] only string
* extension[ig-actor] ^short = "IG Actor"
* extension[ig-actor].value[x] only string
* extension[ig-option] ^short = "IG Option"
* extension[ig-option].value[x] only string

Extension: FundingSource
Id: base-ext-fundingSource
Title: "NDH Funding Source"
Description: "This extension enables NDH to identify funding provenance for services and organizations, using structured sub-extensions for funding identifiers, funding organizations, and source text to support financial-context transparency in directory records; it is used in HealthcareService and Organization."
Context: HealthcareService, Organization
* extension contains
    fundingSourceId 0..1 MS and
    fundingOrganization 0..* and
    fundingSource 1..1 MS
* extension[fundingSourceId].value[x] only string
* extension[fundingSource].value[x] only string
* extension[fundingOrganization].value[x] only Reference(NdhOrganization)


Extension: IdentifierStatus
Id: base-ext-identifier-status
Title: "NDH Identifier Status"
Description: "This extension enables NDH to assert lifecycle status for identifiers in a normalized way, using required code binding to IdentifierStatusVS so consumers can consistently interpret identifier validity and operational state; it is used in Identifier."
Context: Identifier
* ^date = "2017-11-20T11:33:43.51-05:00"
* value[x] 1..1 MS
* value[x] only code
* value[x] from IdentifierStatusVS (required)
* value[x] ^short = "active|inactive|issued-in-error|expired|revoked|pending|provisional|unknown"

Extension: InsurancePlanReference
Id: base-ext-insuranceplan-reference
Title: "NDH InsurancePlan Reference"
Description: "This extension enables NDH to link organizations to accepted NDH InsurancePlan resources, providing explicit plan participation references for accurate plan-organization discovery; it is used in Organization."
Context: Organization
* value[x] only Reference(NdhInsurancePlan)
* value[x] 1..1 MS

Extension: LocationReference
Id: base-ext-location-reference
Title: "NDH Location Reference"
Description: "This extension enables NDH to declare NDH Location-based coverage areas, supporting clear network and organizational service-geography linkage for downstream eligibility and routing decisions; it is used in Organization."
Context: Organization
* value[x] only Reference (NdhLocation)
* value[x] 1..1 MS 

Extension: NewPatientsCharacteristics
Id: base-ext-newpatients-characteristics
Title: "NDH New Patients Characteristics"
Description: "This extension enables NDH to capture additional qualifiers about accepted new-patient populations as textual characteristics, complementing structured acceptance indicators in NewPatients workflows; it is used as a nested extension within base-ext-newpatients."
* ^context[+].type = #extension
* ^context[=].expression = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients"
* value[x] 1..1
* value[x] only string
* value[x] ^short = "Characteristics of accepted patients"

Extension: NewPatients
Id: base-ext-newpatients
Title: "NDH New Patients"
Description: "This extension enables NDH to represent new-patient acceptance policy with optional network specificity and contextual characteristics, using structured sub-extensions and required binding to AcceptingPatientsVS so access status can be compared consistently across roles, services, and locations; it is used in HealthcareService, Location, and PractitionerRole."
Context: HealthcareService, Location, PractitionerRole
* obeys new-patients-characteristics
* value[x] 0..0
* extension contains
   acceptingPatients  1..1 MS and
   fromNetwork 0..1 MS  and
   NewPatientsCharacteristics named characteristics 0..* MS 
* extension[acceptingPatients].value[x] only CodeableConcept
* extension[acceptingPatients] ^short = "Accepting Patients"
* extension[acceptingPatients].value[x] 1..1
* extension[acceptingPatients].value[x] from AcceptingPatientsVS (required)
* extension[fromNetwork].value[x] only Reference(NdhNetwork)
* extension[fromNetwork].value[x] 1..1
* extension[fromNetwork] ^short = "From Network"
//* extension[characteristics].value[x] only string
//* extension[characteristics].value[x] 1..1
* extension[characteristics] ^short = "Characteristics of accepted patients"

Extension: NetworkReference
Id: base-ext-network-reference
Title: "NDH Network Reference"
Description: "This extension enables NDH to explicitly link practitioner roles and services to participating NDH Network resources, improving network participation discovery and filtering; it is used in PractitionerRole and HealthcareService."
Context: PractitionerRole, HealthcareService
* value[x] only Reference(NdhNetwork) 
* value[x] 1..1 MS 

Extension: OrgAliasType
Id: base-ext-org-alias-type
Title: "NDH Organization Alias Type"
Description: "This extension enables NDH to classify organization aliases by usage type, using a CodeableConcept bound by example to OrgAliasTypeVS to support clearer interpretation of alternate naming; it is used in Organization.alias."
Context: Organization.alias
* value[x] 0..1
* value[x] ^short = "Alias Type"
* value[x] only CodeableConcept
* value[x] 1..1 MS
* value[x] from OrgAliasTypeVS (example)

Extension: OrgAliasPeriod
Id: base-ext-org-alias-period
Title: "NDH Organization Alias Period"
Description: "This extension enables NDH to time-bound organization alias validity with a Period value so consumers can distinguish current from historical alternate names; it is used in Organization.alias."
Context: Organization.alias
* value[x] 0..1 
* value[x] ^short = "Alias Period"
* value[x] only Period
* value[x] 1..1 MS

Extension: OrgDescription
Id: base-ext-org-description
Title: "NDH Org Description"
Description: "This extension enables NDH to provide a concise human-readable narrative describing an organization's purpose or scope, improving directory comprehension beyond coded attributes; it is used in Organization."
Context: Organization
* value[x] 1..1 MS
* value[x] only string

Extension: PaymentAccepted
Id: base-ext-paymentAccepted
Title: "NDH Payment Accepted"
Description: "This extension enables NDH to state accepted payment methods for services or organizations, using required binding to paymentTypeVS for interoperable financial-access signaling; it is used in HealthcareService and Organization."
Context: HealthcareService, Organization
* value[x] 0..1 
* value[x] only CodeableConcept 
* value[x] from $paymentTypeVS (required)

Extension: VerificationStatus
Id: base-ext-verification-status
Title: "NDH Verification Status"
Description: "This extension enables NDH to communicate verification standing for directory resources in a consistent coded format, using an extensible binding to NdhVerificationStatusVS for trust-state interoperability; it is used in Endpoint, HealthcareService, InsurancePlan, Location, Organization, OrganizationAffiliation, Practitioner, PractitionerRole, and Group."
Context:  Endpoint, HealthcareService, InsurancePlan, Location, Organization, OrganizationAffiliation, Practitioner, PractitionerRole, Group
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from NdhVerificationStatusVS (extensible)


Extension: PractitionerQualificationScope
Id: base-ext-practitioner-qualification-scope
Title: "NDH Practitioner Qualification Scope where valid and status"
Description: "This extension enables NDH to qualify practitioner credentials with explicit status and jurisdictional validity, using structured sub-extensions with required bindings to QualificationStatusVS and US-core state semantics for computable credential governance; it is used in Practitioner.qualification."
Context: Practitioner.qualification
* value[x] 0..0
* extension contains
   status 1..1 MS and
   whereValid 0..* MS 
* extension[status] ^short = "Status"
* extension[status].value[x] only  code 
* extension[status].value[x] 1..1
* extension[status].value[x] from QualificationStatusVS (required)
* extension[status].value[x] =  $CredentialStatusCS#active (exactly)
* extension[whereValid] ^short = "Where the qualification is valid"
//* extension[whereValid].value[x] only CodeableConcept or Reference(NdhLocation)
* extension[whereValid].value[x] only CodeableConcept
* extension[whereValid].value[x] from http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state|6.1.0 (required)
//* extension[whereValid].value[x] 1..1

Extension: Qualification
Id: base-ext-qualification
Title: "NDH Qualification"
Description: "This extension enables NDH to model organizational and practitioner-role qualifications as reusable structured data, with sub-extensions for identifier, code, issuer, status, period, and validity location, and ValueSet bindings to specialty/credential and qualification-status terminology for consistent qualification interpretation; it is used in Organization, OrganizationAffiliation, and PractitionerRole."
Context: Organization, OrganizationAffiliation, PractitionerRole
* value[x] 0..0
* extension contains
   identifier 0..* MS and
   code 1..1 MS and
   issuer 0..1 MS and
   status 1..1 MS and
   period 0..1 MS and
   whereValid 0..* MS
* extension[identifier] ^short = "Identifier"
* extension[identifier].value[x] 1..1
* extension[identifier].value[x] only Identifier
* extension[code] ^short = "Code"
* extension[code].value[x] 1..1
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] from SpecialtyAndDegreeLicenseCertificateVS (extensible)
* extension[issuer] ^short = "Issuer"
* extension[issuer].value[x] 1..1
* extension[issuer].value[x] only Reference(NdhOrganization)
* extension[issuer] ^short = "Reference to NdhOrganization"
* extension[status] ^short = "Status"
* extension[status].value[x] 1..1
* extension[status].value[x] only  code 
* extension[status].value[x] from QualificationStatusVS (required)
* extension[period] ^short = "Period"
* extension[period].value[x] 1..1
* extension[period].value[x] only Period
* extension[whereValid] ^short = "Where the qualification is valid"
* extension[whereValid].value[x] 1..1
* extension[whereValid].value[x] only CodeableConcept or Reference(NdhLocation)
* extension[whereValid].value[x] from http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state|6.1.0 (required)

Extension: RatingDetails
Id: base-ext-rating-details
Title: "NDH Rating Details"
Description: "This extension enables NDH to carry supplemental rating metadata, including rating system, rating type, and rating value, so implementer-defined scoring models can be represented with clearer provenance and meaning; it is used as a nested extension within base-ext-rating."
* ^context[+].type = #extension
* ^context[=].expression = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-rating"
* extension contains
   ratingSystem  0..1 and
   ratingType 0..1 and
   ratingValue 0..1
* extension[ratingSystem].value[x] only url
* extension[ratingSystem] ^short = "URL to a specific rating system"
* extension[ratingSystem].value[x] 0..1
* extension[ratingType].value[x] only url
* extension[ratingType] ^short = "URL to a specific rating type"
* extension[ratingType].value[x] 0..1
* extension[ratingValue].value[x] only string or Quantity
* extension[ratingValue] ^short = "Rating Value either Text or Number"
* extension[ratingValue].value[x] 0..1

Extension: Rating
Id: base-ext-rating
Title: "NDH Rating"
Description: "This extension enables NDH to represent ratings for services, organizations, practitioners, and roles, with structured support for rating type, quantitative or textual values, and optional nested RatingDetails for richer comparative quality signals; it is used in HealthcareService, Organization, Practitioner, and PractitionerRole."
Context: HealthcareService, Organization, Practitioner, PractitionerRole
* extension contains
   ratingType  0..1 and
   ratingValue 0..1 and
   RatingDetails named rating-details 0..*
* extension[ratingType] ^short = "Rating type"
* extension[ratingType].value[x] only CodeableConcept
* extension[ratingType].value[x] ^short = "Rating type value set will be defined by the implementer"
* extension[ratingValue].value[x] 1..1
* extension[ratingValue].value[x] only string or Quantity
* extension[ratingValue] ^short = "Rating Value either Text or Number"

Extension: RequiredDocument
Id: base-ext-requiredDocument
Title: "NDH Required Document"
Description: "This extension enables NDH to enumerate documents required to access or use a service, using structured identifier and document sub-extensions to support intake readiness and pre-visit transparency; it is used in HealthcareService."
Context: HealthcareService
* extension contains
   requiredDocumentId 1..* and 
   document  1..*  
* extension[requiredDocumentId].value[x] only string
* extension[document].value[x] only string

Extension: EndpointAccessControlMechanism
Id: base-ext-endpointAccessControlMechanism
Title: "NDH Endpoint Access Control Mechanism"
Description: "This extension enables NDH to declare endpoint access-control approach for secure and scalable exchange, using an extensible binding to EndpointAccessControlMechanismVS so clients can align connection behavior with expected authorization patterns; it is used in Endpoint."
Context: Endpoint
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from EndpointAccessControlMechanismVS (extensible)

Extension: LanguageSpeak
Id: base-ext-language-speak
Title: "NDH Language Speak"
Description: "This extension enables NDH to represent spoken language capability at telecom contact points, using extensible binding to LanguagesVS to improve language-concordant access and communication routing; it is used in HealthcareService.telecom, Location.telecom, and Organization.telecom."
Context: HealthcareService.telecom, Location.telecom, Organization.telecom
* value[x] 1..1
* value[x] only code
* value[x] from $LanguagesVS (extensible)

Extension: Logo
Id: base-ext-logo
Title: "NDH Logo"
Description: "This extension enables NDH to attach a canonical visual identity artifact for services and organizations using an Attachment value, supporting recognizable presentation across directory consumers; it is used in HealthcareService, Organization, and OrganizationAffiliation."
Context: HealthcareService, Organization, OrganizationAffiliation
* value[x] 1..1
* value[x] only Attachment


Extension: SecureExchangeArtifacts
Id: base-ext-secureExchangeArtifacts
Title: "NDH Secure Exchange Artifacts"
Description: "This extension enables NDH to publish key secure-exchange artifacts needed for trust establishment, including artifact type, certificate payload, and expiration, with extensible binding to NdhSecureExchangeArtifactsVS for interoperable certificate-discovery workflows; it is used in Endpoint."
Context: Endpoint
* extension contains
   secureExchangeArtifactsType  1..1 MS and
   certificate 0..1 MS and
   expirationDate 0..1
* extension[secureExchangeArtifactsType].value[x] only CodeableConcept
* extension[secureExchangeArtifactsType] ^short = "Secure Artifact Type"
* extension[secureExchangeArtifactsType].value[x] 1..1 
* extension[secureExchangeArtifactsType].value[x] from NdhSecureExchangeArtifactsVS (extensible)
* extension[certificate].value[x] only base64Binary
* extension[certificate].value[x] 1..1
* extension[certificate] ^short = "Certificate"
* extension[expirationDate].value[x] only dateTime
* extension[expirationDate].value[x] 1..1
* extension[expirationDate] ^short = "Expiration Date"


Extension: SecurityDetails
Id: base-ext-security-details
Title: "NDH Security Details"
Description: "This extension enables NDH to communicate endpoint trust-framework security context, including framework type, qualifiers, signed artifacts, and public certificates, with extensible TrustFrameworkTypeVS binding to support consistent policy interpretation across trust communities; it is used in Endpoint."
Context: Endpoint
* extension contains
   trustFrameworkType  1..1 MS and
   qualifier 0..1 MS and
   signedArtifact 0..1 and
   publicCertificate 0..1 
* extension[trustFrameworkType].value[x] only CodeableConcept
* extension[trustFrameworkType] ^short = "Trust Framework Type"
* extension[trustFrameworkType].value[x] from TrustFrameworkTypeVS (extensible)
* extension[qualifier].value[x] only string
* extension[qualifier] ^short = "A qualifier associates with an endpoint to provide additional context or information about that endpoint in a trust framework community. 
Qualifiers are used to help other members of the community understand the capabilities, compliance status, or other relevant characteristics of an endpoint."
* extension[qualifier].value[x] 1..1
* extension[signedArtifact].value[x] only base64Binary
* extension[signedArtifact] ^short = "By utilizing a signed artifact, you can identify which Certificate Authority has issued the certificate for the entity that 
signed the artifact. Verifying the issuing Certificate Authority is crucial because it adds an additional layer of trust and security, ensuring that the entity involved 
in the data exchange is legitimate and that their digital identity has been properly validated."
* extension[signedArtifact].value[x] 1..1
* extension[publicCertificate].value[x] only base64Binary
* extension[publicCertificate] ^short = "Public certificates help in affirming that an entity is indeed who they claim to be. These certificates are used to establish 
secure connections via the Mutual TLS (Transport Layer Security) protocol. Public certificates issued by Certificate Authorities are fundamental in establishing a 
secure and trustworthy digital environment. They enable secure communication, ensure data integrity, and facilitate authentication and trust across a wide range of 
online interactions."
* extension[publicCertificate].value[x] 1..1


Extension: ViaIntermediary
Id: base-ext-via-intermediary
Title: "NDH Via Intermediary"
Description: "This extension enables NDH to identify an alternate intermediary contact reference for communications, using constrained references to NDH role, organization, affiliation, or location resources for explicit routing pathways; it is used in Endpoint.contact, HealthcareService.telecom, InsurancePlan.contact.telecom, Organization.telecom, Organization.contact.telecom, Location.telecom, OrganizationAffiliation.telecom, Practitioner.telecom, and PractitionerRole.telecom."
Context: Endpoint.contact, HealthcareService.telecom, InsurancePlan.contact.telecom,
Organization.telecom, Organization.contact.telecom, 
Location.telecom, OrganizationAffiliation.telecom, Practitioner.telecom, PractitionerRole.telecom
* value[x] only Reference(NdhPractitionerRole or NdhOrganizationAffiliation or NdhLocation or NdhOrganization) 
* value[x] 1..1 MS

Extension: NdhAgeRange
Id: base-ext-ndh-age-range
Title: "NDH Age Range"
Description: "This extension enables NDH to represent age-based eligibility as a structured Range value for service and program requirement evaluation; it is used as a nested extension within base-ext-service-or-program-requirement."
* ^context[+].type = #extension
* ^context[=].expression = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement"
* value[x] 1..1
* value[x] only Range
* value[x] ^short = "Age Range"

Extension: NdhAgeGroup
Id: base-ext-ndh-age-group
Title: "NDH Age Group"
Description: "This extension enables NDH to represent age-based eligibility categories as coded concepts with extensible binding to AgeGroupVS for consistent age-group filtering; it is used as a nested extension within base-ext-service-or-program-requirement."
* ^context[+].type = #extension
* ^context[=].expression = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] ^short = "Age Group"
* value[x] from AgeGroupVS (extensible)

Extension: ServiceOrProgramRequirement
Id: base-ext-service-or-program-requirement
Title: "NDH HealthcareService or Program Requirement"
Description: "This extension enables NDH to encode participation criteria for services and programs using structured demographic and coverage-related sub-extensions, including age range/group, birth sex, employment, insurance, veteran status, and preferred language, with ValueSet bindings that support consistent eligibility interpretation; it is used in HealthcareService."
Context: HealthcareService
* obeys agerange-or-agegroup 
* value[x] 0..0
* extension contains
   NdhAgeRange named age-range 0..1 and
   NdhAgeGroup named age-group 0..1 and
   birthsex 0..1 and
   //gender-identity 0..1 and
   employment-status 0..1 and
   insurance-status 0..1 and
   va-status 0..1 and
   preferred-language 0..1
//* extension[age-range].value[x] only Range
* extension[age-range] ^short = "Age Range"
//* extension[age-range].value[x] 1..1
//* extension[age-group].value[x] only CodeableConcept
* extension[age-group] ^short = "Age Group"
//* extension[age-group].value[x] 1..1
//* extension[age-group].value[x] from AgeGroupVS (extensible)
* extension[birthsex].value[x] only code
* extension[birthsex] ^short = "Birth Sex"
* extension[birthsex].value[x] 1..1
* extension[birthsex].valueCode from http://hl7.org/fhir/us/core/ValueSet/birthsex|6.1.0
* extension[birthsex].valueCode from $USCoreBirthSexVS
//* extension[gender-identity].value[x] only CodeableConcept
//* extension[gender-identity] ^short = "Gender Identity"
//* extension[gender-identity].value[x] 1..1
//* extension[gender-identity].valueCodeableConcept from http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1021.32 (extensible)
* extension[employment-status].value[x] only CodeableConcept
* extension[employment-status] ^short = "Employment Status"
* extension[employment-status].value[x] 1..1
* extension[employment-status].value[x] from EmploymentStatusVS (extensible)
* extension[insurance-status].value[x] only CodeableConcept
* extension[insurance-status] ^short = "Insurance Status"
* extension[insurance-status].value[x] 1..1
* extension[insurance-status].value[x] from InsuranceStatusVS (extensible)
* extension[va-status].value[x] only boolean
* extension[va-status] ^short = "Veteran Status"
* extension[va-status].value[x] 1..1
* extension[preferred-language].value[x] only CodeableConcept
* extension[preferred-language].value[x] from $LanguagesVS (extensible)


/* 
Simple boolean extension to indicate that this artifact represents something in good standing with CMS.

*/
Extension: CmsEnrollmentInGoodStanding
Id: base-ext-cms-enrollment-in-good-standing
Title: "NDH CMS Enrollment In Good Standing"
Description: "This extension enables NDH to assert whether an artifact is enrolled with CMS and currently in good standing, using a required boolean for unambiguous compliance signaling; it is used in Practitioner, Organization, and VerificationResult."
Context: Practitioner, Organization, VerificationResult
* value[x] 1..1
* value[x] only boolean

/* 
Simple boolean extension to indicate that this artifact has been IAL2 verified by CMS

*/
Extension: CmsIAL2Verified
Id: base-ext-cms-ial2-verified
Title: "NDH CMS IAL2 Verified"
Description: "This extension enables NDH to assert CMS IAL2 identity assurance verification status for an artifact using a required boolean indicator; it is used in Practitioner, Organization, and VerificationResult."
Context: Practitioner, Organization, VerificationResult
* value[x] 1..1
* value[x] only boolean

/* 
Simple boolean extension to indicate that this artifact is aligned with CMS data network.
*/
Extension: AlignedWithCMSDataNetwork
Id: base-ext-aligned-with-cms-data-network
Title: "NDH Aligned with CMS Data Network"
Description: "This extension enables NDH to assert alignment with the CMS data network using a required boolean indicator for straightforward policy and participation checks; it is used in Practitioner and Organization."
Context: Practitioner, Organization
* value[x] 1..1
* value[x] only boolean

