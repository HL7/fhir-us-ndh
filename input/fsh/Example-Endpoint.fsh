/*
The ownership of endpoints in a healthcare system can vary, but generally, the endpoints are typically owned and managed by the healthcare organization itself. This could be a hospital, clinic, or any other healthcare provider. In some cases, the ownership might extend to third-party service providers if they are contracted to manage certain aspects of the system.
1. Endpoint discovery
2. how the endpoint is protected
*/





Instance: DirectTrustEndpointAdtNotifications
InstanceOf: NdhEndpoint
Description: "Endpoint for DirectTrust"
Usage: #example
* meta.profile = Canonical(NdhEndpoint)
* meta.lastUpdated = "2023-03-23T13:26:22.0314215+00:00"
* language = #en-US
* status = #active
* name = "Endpoint for DirectTrust"
* connectionType = $ConnectionTypeCS#direct-project
* payloadType = $DataAbsentReasonCS#not-applicable
//* extension[endpoint-nonfhir-usecase].extension[endpointUsecasetype].valueCodeableConcept = NdhDirectTrustEndpointUsecaseCS#adt-notifications
* extension[implementation-guide].extension[ig-usecase].valueCodeableConcept = NdhDirectTrustEndpointUsecaseCS#adt-notifications "information exchange for ADT notifications"
* extension[implementation-guide].extension[ig-usecase].valueCodeableConcept.text = "ANSI/DS 2020-03-100-2022 - Event Notifications via the Direct Standard"
* extension[implementation-guide].extension[ig-name].valueString = "ANSI/DS 2020-03-100-2022 - Event Notifications via the Direct Standard"
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[ig-version].valueString = "Release Version 1.0 – US Realm"
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[ig-actor-name].valueString = "Recipient System"
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[ig-actor].valueCodeableConcept = NdhIgActorCS#recipient
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][0].extension[payload].valueCodeableConcept = NdhDirectTrustPayloadTypeCS#urn:dt-org:dsm:adt-en:SMTP+CIG+V2:1.0
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][0].extension[mimeType][0].valueCode = $BCP13#text/plain
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][0].extension[mimeType][+].valueCode = $BCP13#text/html
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][0].extension[mimeType][+].valueCode = $BCP13#text/hl7v2
* address = "testdirectendpoint2@ndhexample.org"
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][+].extension[payload].valueCodeableConcept = NdhDirectTrustPayloadTypeCS#urn:dt-org:dsm:adt-en:SMTP+XDM:1.0
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][+].extension[mimeType][0].valueCode = $BCP13#text/plain
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][+].extension[mimeType][+].valueCode = $BCP13#text/html
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][+].extension[mimeType][+].valueCode = $BCP13#text/hl7v2
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][+].extension[mimeType][+].valueCode = $BCP13#text/rtf
* address = "testdirectendpoint2@ndhexample.org"


Instance: DirectTrustEndpointReferrals
InstanceOf: NdhEndpoint
Description: "Endpoint for DirectTrust"
Usage: #example
* meta.profile = Canonical(NdhEndpoint)
* meta.lastUpdated = "2023-03-23T13:26:22.0314215+00:00"
* language = #en-US
* status = #active
* name = "Endpoint for DirectTrust"
* connectionType = $ConnectionTypeCS#direct-project
* payloadType = $DataAbsentReasonCS#not-applicable
* extension[implementation-guide].extension[ig-usecase].valueCodeableConcept = NdhDirectTrustEndpointUsecaseCS#referrals "information exchange for referrals"
* extension[implementation-guide].extension[ig-usecase].valueCodeableConcept.text = "DirectTrust social care referrals IG"
* extension[implementation-guide].extension[ig-name].valueString = "DirectTrust social care referrals IG"
//* extension[endpoint-nonfhir-usecase].extension[endpointUsecasetype].valueCodeableConcept = NdhDirectTrustEndpointUsecaseCS#referrals
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[ig-usecase].valueUri = "http://example.org/directtrust/standards/ix4hs-example/referralsIG.pdf"
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[ig-name].valueString = "DirectTrust social care referrals IG"
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[ig-version].valueString = "1.0 – Trial Implementation"
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[ig-actor-name].valueString = "Referral Recipient"
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[ig-actor].valueCodeableConcept = NdhIgActorCS#recipient
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][0].extension[payload].valueCodeableConcept = NdhDirectTrustPayloadTypeCS#urn:dt-org:dsm:ix4hs-ref:SMTP+CDA+FHIR:1.0
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][0].extension[mimeType][0].valueCode = $BCP13#application/cda+xml
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][0].extension[mimeType][+].valueCode = $BCP13#application/fhir+xml
//* extension[endpoint-nonfhir-usecase].extension[ig-supported].extension[supported-ig-actor][0].extension[payload-and-mimetype][0].extension[mimeType][+].valueCode = $BCP13#application/fhir+json
* address = "testdirectendpoint1@ndhexample.org"


Instance: IheEndpoint 
InstanceOf: NdhEndpoint
Description: "Endpoint for IHE"
Usage: #example
* meta.profile = Canonical(NdhEndpoint)
* meta.lastUpdated = "2023-06-14T13:26:22.0314215+00:00"
* language = #en-US
* status = #active
* name = "Endpoint for IHE"
//* connectionType = $ConnectionTypeCS#ihe-xcpd
* connectionType = $IheMCSDEndpointTypesCS#ihe-xcpd
* payloadType = $DataAbsentReasonCS#not-applicable
* extension[ihe-specific-connection-type][0].valueCodeableConcept = $IheMCSDEndpointTypesCS#XCPD-InitGateway-PatientDiscovery-AsyncResponse

* extension[implementation-guide].extension[ig-uri].valueCanonical  = "https://profiles.ihe.net/ITI/TF/Volume1/ch-27.html"
* extension[implementation-guide].extension[ig-name].valueString  = "Cross-Community Patient Discovery (XCPD)"
* extension[implementation-guide].extension[ig-usecase].valueCodeableConcept = $IheMCSDEndpointTypesCS#ihe-xcpd
* extension[implementation-guide].extension[ig-actor].valueString = "Initiating Gateway"
* extension[implementation-guide].extension[ig-option].valueString = "Asynchronous Web Services Exchange"

//* extension[endpoint-nonfhir-usecase][0].extension[endpointUsecasetype].valueCodeableConcept = NdhDirectTrustEndpointUsecaseCS#referrals
//* extension[endpoint-nonfhir-usecase][=].extension[ig-supported][0].extension[ig-usecase].valueUri = "http://example.org/directtrust/standards/ix4hs-example/referralsIG.pdf"
//* extension[endpoint-nonfhir-usecase][=].extension[ig-supported][=].extension[ig-name].valueString = "DirectTrust social care referrals IG"
//* extension[endpoint-nonfhir-usecase][=].extension[ig-supported][=].extension[ig-version].valueString = "1.0  Trial Implementation"
//* extension[endpoint-nonfhir-usecase][=].extension[ig-supported][=].extension[supported-ig-actor][0].extension[ig-actor-name].valueString = "Referral Recipient"
//* extension[endpoint-nonfhir-usecase][=].extension[ig-supported][=].extension[supported-ig-actor][0].extension[ig-actor].valueCodeableConcept = NdhIgActorCS#recipient
//* extension[endpoint-nonfhir-usecase][=].extension[ig-supported][=].extension[supported-ig-actor][0].extension[payload-and-mimetype][0].extension[payload].valueCodeableConcept = NdhDirectTrustPayloadTypeCS#urn:dt-org:dsm:ix4hs-ref:SMTP+CDA+FHIR:1.0
//* extension[endpoint-nonfhir-usecase][=].extension[ig-supported][=].extension[supported-ig-actor][0].extension[payload-and-mimetype][0].extension[mimeType][0].valueCode = $BCP13#application/cda+xml
//* extension[endpoint-nonfhir-usecase][=].extension[ig-supported][=].extension[supported-ig-actor][0].extension[payload-and-mimetype][0].extension[mimeType][+].valueCode = $BCP13#application/fhir+xml
//* extension[endpoint-nonfhir-usecase][=].extension[ig-supported][=].extension[supported-ig-actor][0].extension[payload-and-mimetype][0].extension[mimeType][+].valueCode = $BCP13#application/fhir+json
* address = "testdirectendpoint1@ndhexample.org"



Instance: CoordinationOfCareEndpoint
InstanceOf: NdhEndpoint
Description: "Endpoint for Coordination of Care"
Usage: #example
* meta.profile = Canonical(NdhEndpoint) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "Endpoint for Coordination of Care"
* connectionType = $ConnectionTypeCS#hl7-fhir-rest
* payloadType = $DataAbsentReasonCS#not-applicable
/* endpoint-type = #FHIR*/
* address = "https://example.org/sqlonfhir-r4-azurewebsites/fhir"
//* extension[associated-servers][+].url = "associatedServersType"
* extension[associated-servers][+].extension[associatedServersType].valueCodeableConcept = NdhAssociatedServersTypeCS#proxy-server "Proxy Server"
* extension[associated-servers][=].extension[serverURL].valueString = "https://example.com/fhir"
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#incomplete
//* extension[endpoint-usecase].extension[endpointUsecasetype].valueCodeableConcept = $V3ActReason#COC
//* extension[endpoint-usecase].extension[standard].valueUri = "http://example.org/endpoint-usecase"
* extension[endpoint-rank].valuePositiveInt = 1

//* extension[endpoint-type].extension[endpointType].valueCodeableConcept = EndpointTypeCS#FHIR

* extension[implementation-guide].extension[ig-uri].valueCanonical  = "http://example.org/fhir/myIG.foo"
* extension[implementation-guide].extension[ig-name].valueString  = "My IG foo"
* extension[implementation-guide].extension[ig-version].valueString  = "2.0.0"
* extension[associated-servers].extension[associatedServersType].valueCodeableConcept  = NdhAssociatedServersTypeCS#proxy-server
* extension[associated-servers].extension[serverURL].valueString  = "http://example.org/server-url"



Instance: AcmeOfCTPortalEndpoint
InstanceOf: NdhEndpoint
Description: "Endpoint for Acme of CT Portal"
Usage: #example
* meta.profile = Canonical(NdhEndpoint) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active 
* name = "Endpoint for Acme of CT Portal"
* connectionType = $NdhEndpointConnectionTypeCS#rest-non-fhir
* payloadType = $DataAbsentReasonCS#not-applicable
/* endpoint-type = #FHIR*/
* address = "https://example.org/urlofportal-acmect"
* extension[environmentType].valueCodeableConcept = NdhEndpointEnvironmentCS#prod
//* extension[endpoint-usecase].extension[endpointUsecasetype].valueCodeableConcept = $V3ActReason#HOPERAT
//* extension[endpoint-usecase].extension[standard].valueUri = "http://example.org/endpoint-usecase"

//* extension[endpoint-type].extension[endpointType].valueCodeableConcept = EndpointTypeCS#FHIR
* extension[implementation-guide].extension[ig-uri].valueCanonical  = "http://example.org/fhir/myIg.foo"
* extension[implementation-guide].extension[ig-name].valueString  = "My IG foo"
* extension[implementation-guide].extension[ig-version].valueString  = "2.0.0"
* extension[associated-servers].extension[associatedServersType].valueCodeableConcept  = NdhAssociatedServersTypeCS#proxy-server
* extension[associated-servers].extension[serverURL].valueString  = "http://example.org/server-url"


Instance: AcmeEHRServerEndpoint
InstanceOf: NdhEndpoint
Title: "Acme EHR Server Endpoint"
Description: "An example of an Endpoint that represents an EHR FHIR Server endpoint that has a configuration url."
Usage: #example
* status = #active
* connectionType = http://terminology.hl7.org/CodeSystem/endpoint-connection-type#hl7-fhir-rest
* name = "Acme EHR Server Endpoint"
* managingOrganization.reference = "http://example.org/fhir/Organization/AcmeHealth"
* payloadType = $DataAbsentReasonCS#not-applicable
* payloadMimeType[+] = #application/fhir+json
* payloadMimeType[+] = #application/fhir+xml
* address = "https://acme-ehr-server.example.com/fhir"
* extension[implementation-guide].extension[ig-uri].valueCanonical  = "http://hl7.org/fhir/us/core/ImplementationGuide/hl7.fhir.us.core|6.1.0"
* extension[implementation-guide].extension[ig-name].valueString  = "US Core Implementation Guide"
* extension[implementation-guide].extension[ig-version].valueString  = "6.1.0 - STU6"
* meta.lastUpdated = 2024-06-01T00:00:00Z
* contact[configuration-url].value = "https://example.com/fhir/app-config.html"
