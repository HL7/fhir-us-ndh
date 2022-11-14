
Extension: Accessibility
Id: base-ext-accessibility
Title: "Accessibility"
Description: "An extension to describe accessibility options offered by a practitioner or at a location."
* value[x] 1..1 
* value[x] only CodeableConcept 
* value[x] from AccessibilityVS (extensible)

Extension: AssociatedServers
Id: base-ext-associatedServers
Title: "Associated Servers"
Description: "Associated Servers"
* extension contains
   associatedServersType  1..1 MS and
   serverURL 1..1 MS 
* extension[associatedServersType].value[x] only string
* extension[associatedServersType] ^short = "Dynamic Registration Version"
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
Title: "Communication Proficiency"
Description: "An extension to express a practitioner’s spoken proficiency with the language indicated in practitioner.communication."
* value[x] 1..1 
* value[x] only CodeableConcept 
* valueCodeableConcept from LanguageProficiencyVS (required) 


Extension: ContactPointAvailableTime
Id: base-ext-contactpoint-availabletime
Title: "Contactpoint Availabletime"
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
Title: "Delivery Method"
Description: "An extension describing the service delivery method.   If service delivery is virtual, one or more delivery modalities should be specified."
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

Extension: DynamicRegistration
Id: base-ext-dynamicRegistration
Title: "Dynamic Registration"
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


Extension: EndpointReference
Id: base-ext-endpoint-reference
Title: "NDH Practitioner Endpoint Reference"
Description: "The technical details of an endpoint that can be used for electronic services"
* ^context[0].expression = "Practitioner"
* ^context[=].type = #element
* ^context[+].expression = "CareTeam"
* ^context[=].type = #element
* ^date = "2017-11-07T12:23:01.804-05:00"
* . ^short = "Endpoint reference"
* . ^definition = "A reference to the endpoint resource"
* valueReference 1.. MS
* valueReference only Reference(NdhEndpoint)
* valueReference ^sliceName = "valueReference"
* valueReference ^short = "Endpoint reference"
* valueReference ^definition = "A reference to the endpoint"

Extension: EndpointType
Id: base-ext-endpointType
Title: "Endpoint Type"
Description: "Type of Endpoint"
* extension contains 
   endpointType  1..1 MS 
* extension[endpointType].value[x] only CodeableConcept
* extension[endpointType] ^short = "Endpoint Type"
* extension[endpointType].value[x] from EndpointTypeVS (required)


Extension: EndpointUsecase
Id: base-ext-endpoint-usecase
Title: "Endpoint Usecase"
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


Extension: FundingSource
Id: base-ext-fundingSource
Title: "Funding Source"
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

Extension: IGsSupported
Id: base-ext-igsSupported
Title: "IGs Supported"
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

Extension: LocationReference
Id: base-ext-location-reference
Title: "Location Reference"
Description: "A reference to a Location resource (NDH-Location) defining the coverage area of a health insurance provider network"
* value[x] only Reference (NdhLocation)
* value[x] 1..1 MS 


Extension: NewPatients
Id: base-ext-newpatients
Title: "New Patients"
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
Title: "Network Reference"
Description: "A reference to the healthcare provider insurance networks (NdhNetwork) the practitioner participates in through their role"
* value[x] only Reference(NdhNetwork) 
* value[x] 1..1 MS 

Extension: OrgDescription
Id: base-ext-org-description
Title: "Org Description"
Description: "An extension to provide a human-readable description of an organization"
* value[x] 1..1 MS
* value[x] only string 

Extension: PaymentAccepted
Id: base-ext-paymentAccepted
Title: "Payment Accepted"
Description: "Methods of payment that can be used for a healthcare service"
* value[x] 0..1 
* value[x] only CodeableConcept 
* valueCodeableConcept from $paymentTypeVS (required)


Extension: PractitionerQualification
Id: base-ext-practitioner-qualification
Title: "Practitioner Qualification"
Description: "An extension to add status and whereValid elements to a practitioner’s qualifications."
* value[x] 0..0
* extension contains
   status 1..1 MS and
   whereValid 0..* MS 
* extension[status] ^short = "Status"
* extension[status].value[x] only  code 
* extension[status].value[x] 1..1
* extension[status].valueCode from QualificationStatusVS (required)
* extension[status].valueCode =  $QualificationStatusCS#active (exactly)
* extension[whereValid] ^short = "Where the qualification is valid"
* extension[whereValid].value[x] only CodeableConcept or Reference(NdhLocation)
* extension[whereValid].valueCodeableConcept from $USPSState (required)
* extension[whereValid].value[x] 1..1

Extension: Rating
Id: base-ext-rating
Title: "Rating"
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
Title: "Required Document"
Description: "Documents that are required in order to access or use services (eg. Gov't issued ID, passport)"
* extension contains
   requiredDocumentId 1..* and 
   document  1..*  
* extension[requiredDocumentId].value[x] only string
* extension[document].value[x] only string


Extension: SecureEndpoint
Id: base-ext-secureEndpoint
Title: "Secure Endpoint"
Description: "Is the Endpoint Secured"
* value[x] 1..1 
* value[x] only boolean

Extension: SecureExchangeArtifacts
Id: base-ext-secureExchangeArtifacts
Title: "Secure Exchange Artifacts"
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


Extension: TrustFramework
Id: base-ext-trustFramework
Title: "Trust Framework"
Description: "Trust Framework"
* extension contains
   trustFrameworkType  1..1 MS and
   qualifier 1..1 MS and
   signedArtifact 1..1 and
   publicCertificate 1..1 
* extension[trustFrameworkType].value[x] only CodeableConcept
* extension[trustFrameworkType] ^short = "Trust Framework Type"
* extension[trustFrameworkType].value[x] from TrustFrameworkTypeVS (required)
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
* valueReference 1.. MS
* valueReference only Reference(NdhRestriction)
* valueReference ^sliceName = "valueReference"
* valueReference ^short = "Reference"
* valueReference ^definition = "Reference to the restriction resource (consent)"
* valueReference ^comment = "This is anticipated to usually be a reference to a contained resource (this eases distribution, and permits the same consent applying 
to multiple properties in the same resource)"
* valueReference.identifier ..0

Extension: ViaIntermediary
Id: base-ext-via-intermediary
Title: "Via Intermediary"
Description: "A reference to an alternative point of contact (NdhPractitionerRole, NdhOrganization, NdhOrganizationAffiliation, or NdhLocation) for this organization"
* value[x] only Reference(NdhPractitionerRole or NdhOrganizationAffiliation or NdhLocation or NdhOrganization) 
* value[x] 1..1 MS
