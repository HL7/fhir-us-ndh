
Extension: Accessibility
Id: base-ext-accessibility
Title: "NDH Accessibility"
Description: "An extension to describe accessibility options offered by a practitioner or at a location."
* value[x] 1..1 MS
* value[x] only CodeableConcept 
* value[x] from AccessibilityVS (extensible)

Extension: AssociatedServers
Id: base-ext-associatedServers
Title: "NDH Associated Servers"
Description: "Associated Servers"
* extension contains
   associatedServersType  1..1 MS and
   serverURL 1..1 MS 
* extension[associatedServersType].value[x] only string
* extension[associatedServersType] ^short = "Associated Server Type"
* extension[associatedServersType].value[x] 1..1
* extension[serverURL].value[x] only string
* extension[serverURL] ^short = "Binary"
* extension[serverURL].value[x] 1..1

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

Extension: CommunicationProficiency
Id: base-ext-communication-proficiency
Title: "NDH Communication Proficiency"
Description: "An extension to express a practitioner’s spoken proficiency with the language indicated in practitioner.communication."
* value[x] 1..1 
* value[x] only CodeableConcept 
* value[x] from LanguageProficiencyVS (required) 
//* valueCodeableConcept from LanguageProficiencyVS (required) 

Extension: EndpointConnectionTypeVersion
Id: base-ext-endpoint-connection-type-version
Title: "NDH Endpoint Connection Type Version"
Description: "An extension for endpoint connection type version"
* value[x] 0..1 MS
* value[x] only CodeableConcept 
* value[x] from EndpointConnectionTypeVersionVS (extensible)
//* valueCodeableConcept from EndpointConnectionTypeVersionVS (extensible) 



Extension: EndpointNonFhirPayloadType
Id: base-ext-endpoint-non-fhir-payload-type
Title: "NDH Endpoint non FHIR payloadType"
Description: "Endpoint non FHIR payloadType"
* value[x] 0..0
* extension contains
   endpointpayload 1..1 MS and
   endpointmimetype 0..* MS
* extension[endpointpayload] ^short = "endpoint non fhir playload type"
* extension[endpointpayload].value[x] only  CodeableConcept 
* extension[endpointpayload].value[x]  1..1
* extension[endpointpayload].value[x] from $V3HL7FormatCodesVS (extensible)
* extension[endpointmimetype] ^short = "mimetype for the payload type"
* extension[endpointmimetype].value[x] only code 
//* extension[endpointmimetype].value[x] 0..*
* extension[endpointmimetype].value[x] from EndpointCommonMimeTypeVS (extensible)
//* extension[endpointmimetype].valueCode from EndpointCommonMimeTypeVS (extensible)


Extension: ContactPointAvailableTime
Id: base-ext-contactpoint-availabletime
Title: "NDH Contactpoint Availabletime"
Description: "An extension representing the days and times a contact point is available"
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
* value[x] 0..0
* extension contains
   deliveryMethodtype 1..1 and
   virtualModalities 0..* MS 
* extension[deliveryMethodtype].value[x] only CodeableConcept 
* extension[deliveryMethodtype].value[x] from DeliveryMethodVS (required)
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
* value[x] 0..0
* extension contains
   //type 1..1 and
   use 0..1 and
   //certificateStandard 0..1 and
   certificate 1..1 and
   expirationDate 1..1
   //trustFramework 1..1 
//* extension[type] ^short = "Type"
//* extension[type].value[x] 1..1
//* extension[type].value[x] only Coding
* extension[use] ^short = "Use"
* extension[use].value[x] 1..1
* extension[use].value[x] only Coding
* extension[use].value[x] from DigitalcertificateUseVS (example)
//* extension[certificateStandard] ^short = "Certificate Standard"
//* extension[certificateStandard].value[x] 1..1
//* extension[certificateStandard].value[x] only Coding
* extension[certificate] ^short = "Certificate"
* extension[certificate].value[x] only string or uri
* extension[certificate].value[x] 1..1
* extension[expirationDate] ^short = "Expiration Date"
* extension[expirationDate].value[x] 1..1
* extension[expirationDate].value[x] only date
//* extension[trustFramework] ^short = "Trust Framework"
//* extension[trustFramework].value[x] 1..1
//* extension[trustFramework].value[x] only CodeableConcept
//* extension[trustFramework].valueCodeableConcept from TrustFrameworkTypeVS (example)


Extension: DynamicRegistration
Id: base-ext-dynamicRegistration
Title: "NDH Dynamic Registration"
Description: "Dynamic Registration"
* extension contains
   version  1..1 MS and
   binary 1..1 MS 
* extension[version].value[x] only string
* extension[version] ^short = "Dynamic Registration Version"
* extension[version].value[x] 0..1
* extension[binary].value[x] only string
* extension[binary] ^short = "Binary"
* extension[binary].value[x] 0..1

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

Extension: EndpointRank
Id: base-ext-endpoint-rank
Title: "NDH Endpoint Rank"
Description: "Order established by a Role, Organization… for Endpoints capable of transferring the same content"
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
* value[x] only Reference(NdhEndpoint) 
* value[x] 1..1 

/*
* ^context[0].expression = "Practitioner"
* ^context[=].type = #element
* ^context[+].expression = "CareTeam"
* ^context[=].type = #element
* ^date = "2017-11-07T12:23:01.804-05:00"
* . ^short = "Endpoint reference"
* . ^definition = "A reference to the endpoint resource"
* valueReference 1.. MS
* valueReference only Reference(Endpoint)
* valueReference ^sliceName = "valueReference"
* valueReference ^short = "Endpoint reference"
* valueReference ^definition = "A reference to the endpoint"
*/

/*no longer needed
Extension: EndpointType
Id: base-ext-endpointType
Title: "NDH Endpoint Type"
Description: "Type of Endpoint"
* extension contains 
   endpointType  1..1 MS 
* extension[endpointType].value[x] only CodeableConcept
* extension[endpointType] ^short = "Endpoint Type"
* extension[endpointType].value[x] from EndpointTypeVS (required)
*/


Extension: EndpointIheSpecificConnectionType
Id: base-ext-endpoint-ihe-specific-connection-type
Title: "NDH Endpoint IHE Specific Connection Type"
Description: "Endpoint IHE Specific Connection Type"
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from EndpointHieSpecificConnectionTypeVS (preferred)

Extension: EndpointUsecase
Id: base-ext-endpoint-usecase
Title: "NDH Endpoint Usecase"
Description: "EndpointUseCase is an enumeration of the specific use cases (service descriptions) supported by the endpoint"
* value[x] 0..0
* extension contains
   endpointUsecasetype 1..1 MS and
   standard 0..1 MS 
* extension[endpointUsecasetype] ^short = "An indication of the type of services supported by the endpoint"
* extension[endpointUsecasetype].value[x] only  CodeableConcept 
* extension[endpointUsecasetype].value[x]  1..1
* extension[endpointUsecasetype].value[x] from EndpointUsecaseVS (extensible)
* extension[standard] ^short = "A URI to a published standard describing the services supported by the endpoint (e.g. an HL7 implementation guide)"
* extension[standard].value[x] only uri 
* extension[standard].value[x] 1..1

Extension: SupportedIG
Id: base-ext-supported-ig
Title: "NDH Supported IG"
Description: "Supported IG"
* value[x] 0..0
* extension contains
   ig-publication 0..1 and
   ig-name 0..1 and
   ig-version 0..1 and
   SupportedIGActor named supported-ig-actor 0..*
* extension[ig-publication].value[x] only uri
* extension[ig-publication] ^short = "IG Publication"
* extension[ig-name].value[x] only string
* extension[ig-name] ^short = "IG Name"
* extension[ig-version].value[x] only string
* extension[ig-version] ^short = "IG Version"
//* extention[supported-ig-actor] ^short = "Supported IG Actor"

Extension: CombinedPayloadAndMimeType
Id: base-ext-combined-payload-and-mimetype
Title: "NDH Combined Payload And MimeType"
Description: "Combined Payload And MimeType"
* value[x] 0..0
* extension contains
   payload 0..1 and
   mimeType 0..*
* extension[payload].value[x] only CodeableConcept
* extension[payload].value[x] from $V3HL7FormatCodesVS (extensible)
* extension[payload] ^short = "payload type"
* extension[mimeType].value[x] only code
* extension[mimeType] ^short = "mimeType for the payload type"
* extension[mimeType].value[x] from EndpointCommonMimeTypeVS (extensible)

Extension: SupportedIGActor
Id: base-ext-supported-ig-actor
Title: "NDH Supported IG Actor"
Description: "Supported IG Actor"
* value[x] 0..0
* extension contains
   ig-actor-name 0..1 and
   ig-actor 0..1 and
   CombinedPayloadAndMimeType named payload-and-mimetype 0..*
* extension[ig-actor-name].value[x] only string
* extension[ig-actor-name] ^short = "IG Actor Name"
* extension[ig-actor].value[x] only CodeableConcept
* extension[ig-actor] ^short = "IG Actor"
* extension[ig-actor].value[x] from IgActorVS (extensible)
* extension[payload-and-mimetype] ^short = "Payload and MimeType"

Extension: EndpointNonFhirUsecase
Id: base-ext-endpoint-non-fhir-usecase
Title: "NDH Endpoint Non FHIR Usecase"
Description: "NonEndpointUseCase is an enumeration of the specific use cases (service descriptions) supported by the endpoint"
* value[x] 0..0
* extension contains
   endpointUsecasetype 0..1 and
   SupportedIG named ig-supported 0..*
   //SupportedIGActor named ig-actor-supported 0..*
* extension[endpointUsecasetype] ^short = "An indication of the type of services supported by the endpoint"
* extension[endpointUsecasetype].value[x] only  CodeableConcept 
* extension[endpointUsecasetype].value[x]  0..1
* extension[endpointUsecasetype].value[x] from EndpointUsecaseVS (extensible)
* extension[ig-supported] ^short = "IG supported"
//* extension[ig-actor-supported] ^short = "IG Actor supported"

Extension: FundingSource
Id: base-ext-fundingSource
Title: "NDH Funding Source"
Description: "The sources of funding for a service or organization"
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
* value[x] only Reference(NdhHealthcareService) 
* value[x] 1..1 MS 
/*
* ^context.expression = "CareTeam"
* ^context.type = #element
* ^date = "2017-11-08T11:53:40.139-05:00"
* . ^short = "healthcareservice"
* . ^definition = "Reference to healthcareservice resources"
* valueReference 1.. MS
* valueReference only Reference(NdhHealthcareService)
* valueReference ^sliceName = "valueReference"
* valueReference ^label = "healthcareservice"
* valueReference ^short = "Healthcare service"
* valueReference ^definition = "Reference to healthcareservice resource"
* valueReference ^comment = "Extension to careteam"
*/

/*
Extension: IdentifierStatus
Id: base-ext-identifier-status
Title: "NDH Identifier Status"
Description: "Describes the status of an identifier"
* ^context.expression = "Identifier"
* ^context.type = #element
* ^date = "2017-11-20T11:33:43.51-05:00"
* . ..1
* . ^short = "Status"
* . ^definition = "Describes the status of an identifier"
* valueCode 1.. MS
* valueCode only code
* valueCode from IdentifierStatusVS (required)
* valueCode ^sliceName = "valueCode"
* valueCode ^label = "status"
* valueCode ^short = "active|inactive|issued-in-error|revoked|pending"
* valueCode ^definition = "Describes the status of an identifier"
*/
Extension: IdentifierStatus
Id: base-ext-identifier-status
Title: "NDH Identifier Status"
Description: "Describes the status of an identifier"
* ^context.expression = "Identifier"
* ^context.type = #element
* ^date = "2017-11-20T11:33:43.51-05:00"
* value[x] 1..1 MS
* value[x] only code
* value[x] ^short = "active|inactive|issued-in-error|revoked|pending"
* valueCode from IdentifierStatusVS (required)


Extension: IGsSupported
Id: base-ext-igsSupported
Title: "NDH IGs Supported"
Description: "IGs Supported document the different types of IGs supported by the Endpoint."
* value[x] 0..0
* extension contains
   igsSupportedType  1..1 MS and
   formatCode 0..1 MS  and
   versionCode 0..* MS 
* extension[igsSupportedType].value[x] only CodeableConcept
* extension[igsSupportedType] ^short = "IG Type"
* extension[igsSupportedType].value[x] 1..1
* extension[igsSupportedType].value[x] from IgTypeVS (required)
* extension[formatCode].value[x] only CodeableConcept
* extension[formatCode].value[x] 1..1
* extension[formatCode] ^short = "IG Format Code"
* extension[formatCode].value[x] from $IgFormatCodeVS (required)
* extension[versionCode].value[x] only string
* extension[versionCode].value[x] 1..1
* extension[versionCode] ^short = "IG Version Code"

Extension: InsurancePlanReference
Id: base-ext-insuranceplan-reference
Title: "NDH InsurancePlan Reference"
Description: "Reference to insuranceplan resource"
* value[x] only Reference(NdhInsurancePlan)
* value[x] 1..1 MS

Extension: LocationReference
Id: base-ext-location-reference
Title: "NDH Location Reference"
Description: "A reference to a Location resource (NDH-Location) defining the coverage area of a health insurance provider network"
* value[x] only Reference (NdhLocation)
* value[x] 1..1 MS 


Extension: NewPatients
Id: base-ext-newpatients
Title: "NDH New Patients"
Description: "New Patients indicates whether new patients are being accepted in general, or from a specific network.   
              This extension is included in the PractitionerRole, HealthcareService, and Location profiles.  
              This provides needed flexibility for specifying whether a provider accepts new patients by location and network."
* obeys new-patients-characteristics
* value[x] 0..0
* extension contains
   acceptingPatients  1..1 MS and
   fromNetwork 0..1 MS  and
   characteristics 0..* MS 
* extension[acceptingPatients].value[x] only CodeableConcept
* extension[acceptingPatients] ^short = "Accepting Patients"
* extension[acceptingPatients].value[x] 1..1
* extension[acceptingPatients].value[x] from AcceptingPatientsVS (required)
* extension[fromNetwork].value[x] only Reference(NdhNetwork)
* extension[fromNetwork].value[x] 1..1
* extension[fromNetwork] ^short = "From Network"
* extension[characteristics].value[x] only string
* extension[characteristics].value[x] 1..1
* extension[characteristics] ^short = "Characteristics of accepted patients"

Extension: NetworkReference
Id: base-ext-network-reference
Title: "NDH Network Reference"
Description: "A reference to the healthcare provider insurance networks (NdhNetwork) the practitioner participates in through their role"
* value[x] only Reference(NdhNetwork) 
* value[x] 1..1 MS 

Extension: OrgAliasType
Id: base-ext-org-alias-type
Title: "NDH Orgnization Alias Type"
Description: "Type of organization alias (legal alternative, historical)"
* value[x] 0..1
* value[x] ^short = "Alias Type"
* value[x] only CodeableConcept
* value[x] 1..1 MS
* value[x] from OrgAliasTypeVS (example)
//* valueCodeableConcept from OrgAliasTypeVS (example)

Extension: OrgAliasPeriod
Id: base-ext-org-alias-period
Title: "NDH Orginization Alias Period"
Description: "The period of time the organization alias was actively used"
* value[x] 0..1 
* value[x] ^short = "Alias Period"
* value[x] only Period
* value[x] 1..1 MS

Extension: OrgDescription
Id: base-ext-org-description
Title: "NDH Org Description"
Description: "An extension to provide a human-readable description of an organization"
* value[x] 1..1 MS
* value[x] only string

Extension: PaymentAccepted
Id: base-ext-paymentAccepted
Title: "NDH Payment Accepted"
Description: "Methods of payment that can be used for a healthcare service"
* value[x] 0..1 
* value[x] only CodeableConcept 
* value[x] from $paymentTypeVS (required)
//* valueCodeableConcept from $paymentTypeVS (required)


Extension: PractitionerQualification
Id: base-ext-practitioner-qualification
Title: "NDH Practitioner Qualification"
Description: "An extension to add status and whereValid elements to a practitioner’s qualifications."
* value[x] 0..0
* extension contains
   status 1..1 MS and
   whereValid 0..* MS 
* extension[status] ^short = "Status"
* extension[status].value[x] only  code 
* extension[status].value[x] 1..1
* extension[status].value[x] from QualificationStatusVS (required)
//* extension[status].valueCode from QualificationStatusVS (required)
* extension[status].value[x] =  $QualificationStatusCS#active (exactly)
//* extension[status].valueCode =  $QualificationStatusCS#active (exactly)
* extension[whereValid] ^short = "Where the qualification is valid"
* extension[whereValid].value[x] only CodeableConcept or Reference(NdhLocation)
//* extension[whereValid].valueCodeableConcept from $USPSState (required)
* extension[whereValid].value[x] from $USPSState (required)
* extension[whereValid].value[x] 1..1

Extension: Qualification
Id: base-ext-qualification
Title: "NDH Qualification"
Description: "An extension to add qualifications for an organization (e.g. accreditation) or practitionerRole 
(e.g. registered to prescribe controlled substances)."
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
//* extension[code].valueCodeableConcept from SpecialtyAndDegreeLicenseCertificateVS (extensible)
* extension[issuer] ^short = "Issuer"
* extension[issuer].value[x] 1..1
//* extension[issuer].value[x] only Reference(Resource)
* extension[issuer].value[x] only Reference(NdhOrganization or NdhExOrganization)
//* extension[issuer].value[x] only Reference
* extension[issuer] ^short = "Reference to NdhOrganization, NdhExOrganization"
* extension[status] ^short = "Status"
* extension[status].value[x] 1..1
* extension[status].value[x] only  code 
* extension[status].value[x] from QualificationStatusVS (required)
//* extension[status].valueCode from QualificationStatusVS (required)
* extension[status].value[x] =  $QualificationStatusCS#active (exactly)
//* extension[status].valueCode =  $QualificationStatusCS#active (exactly)
* extension[period] ^short = "Period"
* extension[period].value[x] 1..1
* extension[period].value[x] only Period
* extension[whereValid] ^short = "Where the qualification is valid"
* extension[whereValid].value[x] 1..1
* extension[whereValid].value[x] only CodeableConcept or Reference(NdhLocation)
* extension[whereValid].value[x] from $USPSState (required)
//* extension[whereValid].valueCodeableConcept from $USPSState (required)

Extension: Rating
Id: base-ext-rating
Title: "NDH Rating"
Description: "Rating"
* extension contains
   ratingType  1..1 MS and
   ratingValue 1..1 MS
* extension[ratingType].value[x] only CodeableConcept
* extension[ratingType] ^short = "Rating Type"
* extension[ratingType].value[x] 1..1
* extension[ratingValue].value[x] only string
* extension[ratingValue] ^short = "Rating"

Extension: RequiredDocument
Id: base-ext-requiredDocument
Title: "NDH Required Document"
Description: "Documents that are required in order to access or use services (eg. Gov't issued ID, passport)"
* extension contains
   requiredDocumentId 1..* and 
   document  1..*  
* extension[requiredDocumentId].value[x] only string
* extension[document].value[x] only string


Extension: SecureEndpoint
Id: base-ext-secureEndpoint
Title: "NDH Secure Endpoint"
Description: "Is the Endpoint Secured"
* value[x] 1..1 
* value[x] only boolean

Extension: SecureExchangeArtifacts
Id: base-ext-secureExchangeArtifacts
Title: "NDH Secure Exchange Artifacts"
Description: "Secure Exchange Artifacts"
* extension contains
   secureExchangeArtifactsType  1..1 MS and
   certificate 1..1 MS and
   expirationDate 1..1
* extension[secureExchangeArtifactsType].value[x] only string
* extension[secureExchangeArtifactsType] ^short = "Secure Artifact Type"
* extension[secureExchangeArtifactsType].value[x] 0..1
* extension[certificate].value[x] only base64Binary
* extension[certificate] ^short = "Certificate"
* extension[expirationDate].value[x] only dateTime
* extension[expirationDate] ^short = "Expiration Date"

Extension: RestrictFhirPath
Id: base-ext-restrictFhirPath
Title: "NDH usage restriction fhir path"
Description: "NDH usage restriction to resource element level"
* value[x] 1..1
* value[x] only string


Extension: TrustFramework
Id: base-ext-trustFramework
Title: "NDH Trust Framework"
Description: "Trust Framework"
* extension contains
   trustFrameworkType  1..1 MS and
   qualifier 0..1 MS and
   signedArtifact 0..1 and
   publicCertificate 0..1 
* extension[trustFrameworkType].value[x] only CodeableConcept
* extension[trustFrameworkType] ^short = "Trust Framework Type"
* extension[trustFrameworkType].value[x] from TrustFrameworkTypeVS (extensible)
* extension[qualifier].value[x] only string
* extension[qualifier] ^short = "Qualifier"
* extension[qualifier].value[x] 1..1
* extension[signedArtifact].value[x] only base64Binary
* extension[signedArtifact] ^short = "Signed Artifact"
* extension[signedArtifact].value[x] 1..1
* extension[publicCertificate].value[x] only base64Binary
* extension[publicCertificate] ^short = "Public Certificate"
* extension[publicCertificate].value[x] 1..1

Extension: UsageRestriction
Id: base-ext-usage-restriction
Title: "NDH Usage Restriction"
Description: """The FHIR specification contains a security meta tag which can be used to inform systems of the sensitivity of resources, as well as by access control 
mechanisms to ensure content isn't exposed that shouldn't be. This mechanism only goes to the resource level, this reference to a usage-restriction (consent) extends 
this further into the resource, and can be applied to any element, and may apply to all properties beneath the element (e.g. If applied to an identifier on a practitioner, 
then all the properties of the identifier should not be exposed unless it is understood) This will be expected to be used as a modifier extension."""
* ^date = "2017-10-20T10:59:36.931+11:00"
* . ^short = "Restriction"
* . ^definition = "Identifies and conveys information about restrictions on the use or release of exchanged information, e.g. information that can only be shared 
under particular condition, such as a signed data use agreement between parties"
//* valueReference 1.. MS
//* valueReference only Reference(NdhRestriction)
//* valueReference ^sliceName = "valueReference"
//* valueReference ^short = "Reference"
//* valueReference ^definition = "Reference to the restriction resource (consent)"
//* valueReference ^comment = "This is anticipated to usually be a reference to a contained resource (this eases distribution, and permits the same consent applying 
//to multiple properties in the same resource)"
//* valueReference.identifier ..0
* value[x] only Reference(NdhRestriction)
* value[x] 1..1 MS
* value[x] ^short = "Reference"
* value[x] ^definition = "Reference to the restriction resource (consent)"
* value[x] ^comment = "This is anticipated to usually be a reference to a contained resource (this eases distribution, and permits the same consent applying 
to multiple properties in the same resource)"

Extension: ViaIntermediary
Id: base-ext-via-intermediary
Title: "NDH Via Intermediary"
Description: "A reference to an alternative point of contact (NdhPractitionerRole, NdhOrganization, NdhOrganizationAffiliation, or NdhLocation) for this organization"
* value[x] only Reference(NdhPractitionerRole or NdhOrganizationAffiliation or NdhLocation or NdhOrganization) 
* value[x] 1..1 MS
