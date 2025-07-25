
Extension: Accessibility
Id: base-ext-accessibility
Title: "NDH Accessibility"
Description: "An extension to describe accessibility options offered by a practitioner or at a location."
Context: Location, Practitioner
//* ^context[+].type = #element
//* ^context[=].expression = "Practitioner"
//* ^context[+].type = #element
//* ^context[=].expression = "Location"
* value[x] 1..1 MS
* value[x] only CodeableConcept 
* value[x] from AccessibilityVS (extensible)

Extension: AssociatedServers
Id: base-ext-associatedServers
Title: "NDH Associated Servers"
Description: "This extension is designed to store information about servers that may be associated with the current endpoint. It defines a set of servers that 
could be linked to this endpoint. If a server is associated, the server's type and URL will be included. For example, if your system features two types of endpoints: 
a standard endpoint and a proxy endpoint associated with the server. For example, the proxy endpoint can be configured to interface with AEGIS software, 
allowing the software to record transactions and ensure compliance with pertinent standards or regulations. Implementing such a configuration in a production
environment would offer the flexibility to switch between standard and proxy modes (associated server) as necessary. Consequently, it is essential to have both
standard and proxy endpoints readily available for seamless transitions as required."
Context: Endpoint
//* ^context.type = #element
//* ^context.expression = "Endpoint"
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

/*
Extension: CareteamAlias
Id: base-ext-careteam-alias
Title: "NDH Careteam Alias"
Description: "Alternate names by which the team is known"
* ^context.expression = "CareTeam"
* ^context.type = #element
* ^date = "2017-11-16T15:42:31.192-05:00"
* . ^short = "Alias"
* . ^definition = "Alternate names by which the team is also known"
* valueString 1.. MS
* valueString only string
* valueString ^sliceName = "valueString"
* valueString ^label = "alias"
* valueString ^short = "Alias"
* valueString ^definition = "Alternate names by which the team is also known"
*/

Extension: CommunicationProficiency
Id: base-ext-communication-proficiency
Title: "NDH Communication Proficiency"
Description: "An extension to express a practitioner’s spoken proficiency with the language indicated in practitioner.communication."
//* ^context.type = #fhirpath
//* ^context.expression = "descendants()"
Context: Practitioner.communication
* value[x] 1..1 
* value[x] only CodeableConcept 
* value[x] from $ILRReadingScaleVS (extensible)

Extension: EndpointConnectionTypeVersion
Id: base-ext-endpoint-connection-type-version
Title: "NDH Endpoint Connection Type Version"
Description: "An extension for endpoint connection type version"
* ^context.type = #element
* ^context.expression = "Endpoint"
* value[x] 0..1 MS
* value[x] only CodeableConcept
* value[x] from $FHIRVersionVS (extensible)
//* value[x] from EndpointConnectionTypeVersionVS (extensible)

Extension: EndpointTestingCertification   
Id: base-ext-endpoint-testing-certification
Title: "NDH Endpoint Testing Certification"
Description: "An extension for endpoint testing certification"
Context: Endpoint
//* ^context.type = #element
//* ^context.expression = "Endpoint"
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
Title: "NDH Contactpoint Availabletime"
Description: "An extension representing the days and times a contact point is available"
//* ^context.type = #fhirpath
//* ^context.expression = "descendants()"
Context: CareTeam.telecom, Endpoint.contact, HealthcareService.telecom, InsurancePlan.contact.telecom,
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
Description: "An extension describing the service delivery method. If service delivery is virtual, one or more delivery modalities should be specified."
Context: HealthcareService
//* ^context[+].type = #element
//* ^context[=].expression = "HealthcareService"
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



Extension: Digitalcertificate
Id: base-ext-digitalcertificate
Title: "NDH Digitalcertificate"
Description: "A digital certificate, used to identify a user or group of users, or for encrypted communications"
Context: Organization, Practitioner, PractitionerRole
//* ^context[+].type = #element
//* ^context[=].expression = "Practitioner"
//* ^context[+].type = #element
//* ^context[=].expression = "Organization"
//* ^context[+].type = #element
//* ^context[=].expression = "PractitionerRole"
* value[x] 0..0
* extension contains
   use 0..1 and
   certificate 1..1 and
   expirationDate 1..1
* extension[use] ^short = "Use"
* extension[use].value[x] 1..1
* extension[use].value[x] only Coding
* extension[use].value[x] from DigitalcertificateUseVS (example)
* extension[certificate] ^short = "Certificate"
* extension[certificate].value[x] only string or uri
* extension[certificate].value[x] 1..1
* extension[expirationDate] ^short = "Expiration Date"
* extension[expirationDate].value[x] 1..1
* extension[expirationDate].value[x] only date


Extension: DynamicRegistration
Id: base-ext-dynamicRegistration
Title: "NDH Dynamic Registration"
Description: "Dynamic registration within a trust framework refers to a process where clients can register with a server or service provider 
dynamically and securely at runtime, rather than being pre-registered manually. This approach is often used in environments where scalability, flexibility, 
and security are crucial.  Currently, dynamic registration is used in SMART and UDAP."
Context: Endpoint
//* ^context.type = #element
//* ^context.expression = "Endpoint"
* extension contains
   trustProfile 0..1 and
   version  0..1 MS
   //binary 1..1 MS 
* extension[trustProfile].value[x] only CodeableConcept
* extension[trustProfile].value[x] from TrustProfileVS (extensible)
* extension[version].value[x] only string
* extension[version] ^short = "Trust Profile Version"
* extension[version].value[x] 0..1

/*
Extension: Ehr
Id: base-ext-ehr
Title: "NDH EHR"
Description: "Information about the EHR system/module used at a location"
* value[x] 0..0
* extension contains
   developer 0..1 MS and
   product 0..1 MS and
   version 0..1 MS and
   certificationEdition 0..1 MS and
   patientAccess 0..* MS and
   certificationID 0..1 MS
* extension[developer].value[x] 1..1
* extension[developer].value[x] only string 
* extension[developer] ^definition = "Developer"
* extension[developer] ^short = "Developer"
* extension[product].value[x] 1..1
* extension[product].value[x] only string
* extension[product] ^definition = "Product"
* extension[product] ^short = "Product"
* extension[version].value[x] 1..1
* extension[version].value[x] only string
* extension[version] ^definition = "Version"
* extension[version] ^short = "Version"
* extension[certificationEdition].value[x] 1..1
* extension[certificationEdition].value[x] only Coding
* extension[certificationEdition] ^definition = "Certification edition"
* extension[certificationEdition] ^short = "Certification edition"
* extension[patientAccess].value[x] 1..1
* extension[patientAccess].value[x] only CodeableConcept
* extension[patientAccess] ^definition = "Patient access"
* extension[patientAccess] ^short = "Patient access"
* extension[certificationID].value[x] 1..1
* extension[certificationID].value[x] only string
* extension[certificationID] ^definition = "Certification ID"
* extension[certificationID] ^short = "Certification ID"
*/

Extension: EndpointRank
Id: base-ext-endpoint-rank
Title: "NDH Endpoint Rank"
Description: "Order established by a Role, Organization… for Endpoints capable of transferring the same content"
Context: Endpoint
//* ^context.type = #element
//* ^context.expression = "Endpoint"
* value[x] 1..1
* value[x] only positiveInt
//* valuePositiveInt 1..1


Extension: EndpointReference
Id: base-ext-endpoint-reference
Title: "NDH Endpoint Reference"
Description: "The technical details of an endpoint that can be used for electronic services"
//do this way creat slice inside of extension
//* value[x] only Reference
//* valueReference 1..1
//* valueReference only Reference(NdhEndpoint)
//do this way no slice created inside of extension
Context: CareTeam, Practitioner
//* ^context[+].type = #element
//* ^context[=].expression = "CareTeam"
//* ^context[+].type = #element
//* ^context[=].expression = "Practitioner"
* value[x] only Reference(NdhEndpoint) 
* value[x] 1..1 

Extension: EndpointenvironmentType
Id: base-ext-endpoint-environment-type
Title: "NDH Endpoint EnvironmentType"
Description: "Endpoint Environment Type"
Context: Endpoint
//* ^context.type = #element
//* ^context.expression = "Endpoint"
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from NdhEndpointEnvironmentVS (extensible)

Extension: EndpointIheSpecificConnectionType
Id: base-ext-endpoint-ihe-specific-connection-type
Title: "NDH Endpoint IHE Specific Connection Type"
Description: "Endpoint IHE Specific Connection Type"
Context: Endpoint
//* ^context.type = #element
//* ^context.expression = "Endpoint"
* value[x] 0..1
* value[x] only CodeableConcept
//* value[x] from EndpointHieSpecificConnectionTypeVS (preferred)
* value[x] from EndpointIheSpecificConnectionTypeVS (preferred)


Extension: EndpointUsecase
Id: base-ext-endpoint-usecase
Title: "NDH Endpoint Usecase"
Description: "EndpointUseCase is an enumeration of the specific use cases (service descriptions) supported by the endpoint"
Context: Endpoint
//* ^context.type = #element
//* ^context.expression = "Endpoint"
* value[x] 0..0
* extension contains
   endpointUsecasetype 1..1 MS and
   standard 0..1 MS 
* extension[endpointUsecasetype] ^short = "An indication of the type of services supported by the endpoint"
* extension[endpointUsecasetype].value[x] only  CodeableConcept 
* extension[endpointUsecasetype].value[x]  1..1
* extension[endpointUsecasetype].value[x] from NdhFhirEndpointUseCaseVS (extensible)
* extension[standard] ^short = "A URI to a published standard describing the services supported by the endpoint (e.g. an HL7 implementation guide)"
* extension[standard].value[x] only uri 
* extension[standard].value[x] 1..1



Extension: FhirIg
Id: base-ext-fhir-ig
Title: "NDH FHIR IG"
Description: "FHIR IG"
Context: Endpoint
* value[x] 0..0
* extension contains
   ig-publication 0..1 and
   ig-name 0..1 and
   ig-version 0..1
* extension[ig-publication].value[x] only uri
* extension[ig-publication] ^short = "IG Publication"
* extension[ig-name] ^short = "IG Name"
* extension[ig-name].value[x] only string
* extension[ig-name].value[x] 1..1
* extension[ig-version].value[x] only string
* extension[ig-version] ^short = "IG Version"
* extension[ig-version].value[x] 1..1

/*
Extension: CombinedPayloadAndMimeType
Id: base-ext-combined-payload-and-mimetype
Title: "NDH Combined Payload And MimeType"
Description: "Combined Payload And MimeType"
* ^context[+].type = #extension
* ^context[=].expression = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-supported-ig-actor"
* value[x] 0..0
* extension contains
   payload 0..1 and
   mimeType 0..*
* extension[payload].value[x] only CodeableConcept
* extension[payload].value[x] from NdhDirectTrustPayloadTypeVS (extensible)
* extension[payload].value[x] 1..1
* extension[payload] ^short = "payload type"
* extension[mimeType].value[x] only code
* extension[mimeType].value[x] 1..1
* extension[mimeType] ^short = "mimeType for the payload type"
* extension[mimeType].value[x] from EndpointCommonMimeTypeVS (extensible)
*/

/*
Extension: SupportedIGActor
Id: base-ext-supported-ig-actor
Title: "NDH Supported IG Actor"
Description: "Supported IG Actor"
* ^context[+].type = #extension
* ^context[=].expression = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-ig-supported"
* value[x] 0..0
* extension contains
   ig-actor-name 0..1 and
   ig-actor 0..1 and
   CombinedPayloadAndMimeType named payload-and-mimetype 0..*
* extension[ig-actor-name].value[x] only string
* extension[ig-actor-name].value[x] 1..1
* extension[ig-actor-name] ^short = "IG Actor Name"
* extension[ig-actor].value[x] only CodeableConcept
* extension[ig-actor].value[x] from IgActorVS (extensible)
* extension[ig-actor].value[x] 1..1
* extension[ig-actor] ^short = "IG Actor"
* extension[payload-and-mimetype] ^short = "Payload and MimeType"
*/

/*
Extension: IgSupported
Id: base-ext-ig-supported
Title: "NDH Supported IG"
Description: "Supported IG"
* ^context[+].type = #extension
* ^context[=].expression = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-non-fhir-usecase"
* value[x] 0..0
* extension contains
   ig-publication 0..1 and
   ig-name 0..1 and
   ig-version 0..1 and
   SupportedIGActor named supported-ig-actor 0..*
* extension[ig-publication].value[x] only uri
* extension[ig-publication] ^short = "IG Publication"
* extension[ig-name] ^short = "IG Name"
* extension[ig-name].value[x] only string
* extension[ig-name].value[x] 1..1
* extension[ig-version].value[x] only string
* extension[ig-version] ^short = "IG Version"
* extension[ig-version].value[x] 1..1
*/

/*
Extension: EndpointNonFhirUsecase
Id: base-ext-endpoint-non-fhir-usecase
Title: "NDH Endpoint Non FHIR Usecase"
Description: "NonEndpointUseCase is an enumeration of the specific use cases (service descriptions) supported by the endpoint"
Context: Endpoint
* value[x] 0..0
* extension contains
   endpointUsecasetype 0..1 and
   IgSupported named ig-supported 0..*
* extension[endpointUsecasetype] ^short = "An indication of the type of services supported by the endpoint"
* extension[endpointUsecasetype].value[x] only  CodeableConcept 
* extension[endpointUsecasetype].value[x]  0..1
* extension[endpointUsecasetype].value[x] from NdhDirectTrustEndpointUsecaseVS (extensible)
* extension[ig-supported] ^short = "IG supported"
*/

Extension: FundingSource
Id: base-ext-fundingSource
Title: "NDH Funding Source"
Description: "The sources of funding for a service or organization"
Context: HealthcareService, Organization
* extension contains
    fundingSourceId 0..1 MS and
    fundingOrganization 0..* and
    fundingSource 1..1 MS
* extension[fundingSourceId].value[x] only string
* extension[fundingSource].value[x] only string
* extension[fundingOrganization].value[x] only Reference(NdhOrganization)

Extension: HealthcareServiceReference
Id: base-ext-healthcareservice-reference
Title: "NDH Healthcareservice Reference"
Description: "Reference to healthcareservice resource"
Context: CareTeam
* value[x] only Reference(NdhHealthcareService) 
* value[x] 1..1 MS 

Extension: IdentifierStatus
Id: base-ext-identifier-status
Title: "NDH Identifier Status"
Description: "Describes the status of an identifier"
Context: Identifier
//* ^context.expression = "Identifier"
//* ^context.type = #element
* ^date = "2017-11-20T11:33:43.51-05:00"
* value[x] 1..1 MS
* value[x] only code
* value[x] from IdentifierStatusVS (required)
* value[x] ^short = "active|inactive|issued-in-error|expired|revoked|pending|provisional|unknown"

Extension: InsurancePlanReference
Id: base-ext-insuranceplan-reference
Title: "NDH InsurancePlan Reference"
Description: "Reference to insuranceplan resource"
Context: Organization
//* ^context[+].type = #element
//* ^context[=].expression = "Organization"
* value[x] only Reference(NdhInsurancePlan)
* value[x] 1..1 MS

Extension: LocationReference
Id: base-ext-location-reference
Title: "NDH Location Reference"
Description: "A reference to a Location resource (NDH-Location) defining the coverage area of a health insurance provider network"
Context: Organization, CareTeam
* value[x] only Reference (NdhLocation)
* value[x] 1..1 MS 

Extension: NewPatientsCharacteristics
Id: base-ext-newpatients-characteristics
Title: "NDH New Patients Characteristics"
Description: "Characteristics of accepted patients"
* ^context[+].type = #extension
* ^context[=].expression = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients"
* value[x] 1..1
* value[x] only string
* value[x] ^short = "Characteristics of accepted patients"

Extension: NewPatients
Id: base-ext-newpatients
Title: "NDH New Patients"
Description: "New Patients indicates whether new patients are being accepted in general, or from a specific network.   
              This extension is included in the PractitionerRole, HealthcareService, and Location profiles.  
              This provides needed flexibility for specifying whether a provider accepts new patients by location and network."
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
Description: "A reference to the healthcare provider insurance networks (NdhNetwork) the practitioner participates in through their role"
Context: PractitionerRole, HealthcareService
* value[x] only Reference(NdhNetwork) 
* value[x] 1..1 MS 

Extension: OrgAliasType
Id: base-ext-org-alias-type
Title: "NDH Organization Alias Type"
Description: "Type of organization alias (legal alternative, historical)"
//* ^context.type = #fhirpath
//* ^context.expression = "descendants()"
Context: Organization.alias
* value[x] 0..1
* value[x] ^short = "Alias Type"
* value[x] only CodeableConcept
* value[x] 1..1 MS
* value[x] from OrgAliasTypeVS (example)

Extension: OrgAliasPeriod
Id: base-ext-org-alias-period
Title: "NDH Organization Alias Period"
Description: "The period of time the organization alias was actively used"
//* ^context.type = #fhirpath
//* ^context.expression = "descendants()"
Context: Organization.alias
* value[x] 0..1 
* value[x] ^short = "Alias Period"
* value[x] only Period
* value[x] 1..1 MS

Extension: OrgDescription
Id: base-ext-org-description
Title: "NDH Org Description"
Description: "An extension to provide a human-readable description of an organization"
Context: Organization
* value[x] 1..1 MS
* value[x] only string

Extension: PaymentAccepted
Id: base-ext-paymentAccepted
Title: "NDH Payment Accepted"
Description: "Methods of payment that can be used for a healthcare service"
Context: HealthcareService, Organization
* value[x] 0..1 
* value[x] only CodeableConcept 
* value[x] from $paymentTypeVS (required)

Extension: VerificationStatus
Id: base-ext-verification-status
Title: "NDH Verification Status"
Description: "Indicates a resource instance verification status"
Context: CareTeam, Endpoint, HealthcareService, InsurancePlan, Location, Organization, OrganizationAffiliation, Practitioner, PractitionerRole
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from NdhVerificationStatusVS (extensible)


Extension: PractitionerQualification
Id: base-ext-practitioner-qualification
Title: "NDH Practitioner Qualification"
Description: "An extension to add status and whereValid elements to a practitioner’s qualifications."
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
Description: "An extension to add qualifications for an organization (e.g. accreditation) or practitionerRole 
(e.g. registered to prescribe controlled substances)."
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
* extension[status].value[x] =  $CredentialStatusCS#active (exactly)
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
Description: "Rating Details"
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
Description: "Rating"
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
Description: "Documents that are required in order to access or use services (eg. Gov't issued ID, passport)"
Context: HealthcareService
* extension contains
   requiredDocumentId 1..* and 
   document  1..*  
* extension[requiredDocumentId].value[x] only string
* extension[document].value[x] only string

Extension: EndpointAccessControlMechanism
Id: base-ext-endpointAccessControlMechanism
Title: "NDH Endpoint Access Control Mechanism"
Description: "Endpoint access control mechanisms protect and manage access to healthcare endpoints, ensuring secure data exchange between systems. 
They standardize methods to secure endpoints, ensuring interoperability and security.  
In certain use cases requiring system scalability and flexibility, different profiles may be utilized based on the chosen access control mechanism. For example, 
the Unified Data Access Profile (UDAP) uses JWT access tokens."
Context: Endpoint
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from EndpointAccessControlMechanismVS (extensible)

Extension: LanguageSpeak
Id: base-ext-language-speak
Title: "NDH Language Speak"
Description: "Language Speak"
Context: HealthcareService.telecom, Location.telecom, Organization.telecom
* value[x] 1..1
* value[x] only code
* value[x] from $LanguagesVS (extensible)

Extension: Logo
Id: base-ext-logo
Title: "NDH Logo"
Description: "Logo"
Context: HealthcareService, Organization, OrganizationAffiliation
* value[x] 1..1
* value[x] only Attachment

/*
Extension: MalpracticePayment
Id: base-ext-malpractice-payment
Title: "NDH Malpractice Payment"
Description: "Malpractice Payment"
* ^context[+].type = #extension
* ^context[=].expression = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-malpractice-coverage-payment"
* extension contains
   amount  0..1 and
   date 0..1 and
   payee 0..1 and
   recipient 0..1
* extension[amount].value[x] only Money
* extension[date].value[x] only dateTime
* extension[payee].value[x] only Reference(NdhOrganization)
* extension[recipient].value[x] only Reference(NdhPractitioner or NdhPractitionerRole or NdhOrganization or NdhOrganizationAffiliation) 

Extension: MalpracticeCoveragePayment
Id: base-ext-malpractice-coverage-payment
Title: "NDH Malpractice Coverage Payment"
Description: "Malpractice Coverage Payment"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* ^context[+].type = #element
* ^context[=].expression = "OrganizationAffiliation"
* extension contains
   MalpracticePayment named payment 0..*
* extension[payment] ^short = "Malpractice Payment"

Extension: DisciplinaryAction
Id: base-ext-disciplinary-action
Title: "NDH Disciplinary Action"
Description: "Disciplinary Action"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* ^context[+].type = #element
* ^context[=].expression = "OrganizationAffiliation"
* extension contains
   actionOn  0..1 and
   actionType  0..1 and
   actionPeriod 0..1 and
   actionStatus 0..1
* extension[actionOn].value[x] only CodeableConcept
* extension[actionOn] ^short = "Action On a particular liecnse or certification"
* extension[actionType].value[x] only CodeableConcept
* extension[actionType] ^short = "Action Type: sanction, excluded"
* extension[actionPeriod].value[x] only Period
* extension[actionPeriod] ^short = "Action start and end date"
* extension[actionStatus].value[x] only CodeableConcept
* extension[actionStatus] ^short = "Action Status: 1830 - recommentation to sanction, 1840 - withdrawal of recomendation to sanction"

*/


Extension: SecureExchangeArtifacts
Id: base-ext-secureExchangeArtifacts
Title: "NDH Secure Exchange Artifacts"
Description: "This extension is designed to store information about the type of public certificate, the public certificate itself, and the expiration date of the 
certificate. Public certificates, issued by Certificate Authorities, are intended for sharing and inspection by others as part of the trust and verification process 
in digital communications. Each certificate includes an expiration date, which is a crucial piece of information easily accessible to anyone examining the certificate. 
The expiration date plays a significant role in validating the certificate's current validity and in maintaining security within digital communications. 
This extension should be used when the standard for exchange requires the discovery of the public key."
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

/*
Extension: RestrictFhirPath
Id: base-ext-restrictFhirPath
Title: "NDH usage restriction fhir path"
Description: "NDH usage restriction to resource element level"
Context: Consent
* value[x] 1..1
* value[x] only Expression
* value[x].language = #text/fhirpath
*/

Extension: TrustFramework
Id: base-ext-trustFramework
Title: "NDH Trust Framework"
Description: "A trust framework typically requires the use of signed artifacts and public certificates to ensure security, integrity, and trust in digital communications 
and transactions. For trust frameworks that use private PKI there is no need to use this extension unless the goals is to provide access to endpoints via the endpoint 
reference on any of the relevant resources (e.g., careteam, healthcareService)."
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
/*
Extension: UsageRestriction
Id: base-ext-usage-restriction
Title: "NDH Usage Restriction"
Description: """The FHIR specification contains a security meta tag which can be used to inform systems of the sensitivity of resources, as well as by access control 
mechanisms to ensure content isn't exposed that shouldn't be. This mechanism only goes to the resource level, this reference to a usage-restriction (consent) extends 
this further into the resource, and can be applied to any element, and may apply to all properties beneath the element (e.g. If applied to an identifier on a practitioner, 
then all the properties of the identifier should not be exposed unless it is understood) This will be expected to be used as a modifier extension."""
Context: CareTeam, Endpoint, HealthcareService, InsurancePlan, Location, Organization, OrganizationAffiliation, Practitioner, PractitionerRole
* ^date = "2017-10-20T10:59:36.931+11:00"
* . ^short = "Restriction"
* . ^definition = "Identifies and conveys information about restrictions on the use or release of exchanged information, e.g. information that can only be shared 
under particular condition, such as a signed data use agreement between parties"
* value[x] only Reference(NdhRestriction)
* value[x] 1..1
* value[x] ^type.aggregation = #contained
* value[x] ^short = "Reference"
//* value[x].identifier ..0
* value[x] ^definition = "Reference to the restriction resource (consent)"
* value[x] ^comment = "This is anticipated to usually be a reference to a contained resource (this eases distribution, and permits the same consent applying 
to multiple properties in the same resource)"
*/

Extension: ViaIntermediary
Id: base-ext-via-intermediary
Title: "NDH Via Intermediary"
Description: "A reference to an alternative point of contact (NdhPractitionerRole, NdhOrganization, NdhOrganizationAffiliation, or NdhLocation) for this organization"
Context: CareTeam.telecom, Endpoint.contact, HealthcareService.telecom, InsurancePlan.contact.telecom,
Organization.telecom, Organization.contact.telecom, 
Location.telecom, OrganizationAffiliation.telecom, Practitioner.telecom, PractitionerRole.telecom
* value[x] only Reference(NdhPractitionerRole or NdhOrganizationAffiliation or NdhLocation or NdhOrganization) 
* value[x] 1..1 MS

Extension: NdhAgeRange
Id: base-ext-ndh-age-range
Title: "NDH Age Range"
Description: "Age Range"
* ^context[+].type = #extension
* ^context[=].expression = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement"
* value[x] 1..1
* value[x] only Range
* value[x] ^short = "Age Range"

Extension: NdhAgeGroup
Id: base-ext-ndh-age-group
Title: "NDH Age Group"
Description: "Age Group"
* ^context[+].type = #extension
* ^context[=].expression = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-service-or-program-requirement"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] ^short = "Age Group"
* value[x] from AgeGroupVS (extensible)

Extension: ServiceOrProgramRequirement
Id: base-ext-service-or-program-requirement
Title: "NDH HealthcareService or Program Requirement"
Description: "Service or Program requirement indicates whether the program is available to anyone, or only to those meeting certain criteria." 
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


