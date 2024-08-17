//webhook - a user specifies a URL on their own server (the webhook url) in the configration of an app or a service, a callback address
//when certain events happen, the server will send an HTTP POST request to the webhook url
//The user's server receives the HTTP POST request and process the data in it.
/*
Instance:    BackportSubscriptionPractitionerQualificationChange
InstanceOf:  BackportSubscription
Usage:       #example
Title:       "Backport Subscription for Practitioner Qualification Change"
Description: "Topic-based 'Practitioner Qualification Change' subscription."
//* url = "http://ndh.org/topic/practitioner-qualification-create-modified-or-delete"
* id       = "subscription-practitioner-qualification-change"
* status   = #active
* end      = "2023-06-29T12:00:00Z"
* reason   = "Topic-Based Subscription for Practitioner Qualification Change"
//* extension[backport-topic-canonical].valueUri = $practitionerQualificationTopic
* criteria = "Practitioner?qualification=MD"
//* criteria.extension[backport-additional-criteria].valueString = "Practitioner?address-state=MD"
* channel.type                                         = #rest-hook
* channel.endpoint                                     = $webHookEndpoint
* channel.extension[heartbeatPeriod].valueUnsignedInt  = 86400
* channel.extension[timeout].valueUnsignedInt          = 60
* channel.extension[maxCount].valuePositiveInt         = 20
* channel.payload                                      = #application/fhir+json
* channel.payload.extension[content].valueCode         = #id-only
*/

Instance: TopicSubscriptionPractitionerQualificationChange
InstanceOf: Subscription
Usage: #example
Title:       "Backport Subscription for Practitioner Qualification Change"
Description: "Topic-based 'Practitioner Qualification Change' subscription."
* meta.profile = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription"
* status = #active
* end = "2024-08-16T12:00:00Z"
* reason = "Practitioner Qualification Change Subscription"
* criteria = "http://ndh.org/topic/practitioner-qualification-create-modified-or-delete"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "PractitionerRole?practitioner=Practitioner/123"
* channel.extension[0].url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-heartbeat-period"
* channel.extension[=].valueUnsignedInt = 86400
* channel.extension[+].url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-timeout"
* channel.extension[=].valueUnsignedInt = 60
* channel.extension[+].url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-max-count"
* channel.extension[=].valuePositiveInt = 20
* channel.type = #rest-hook
* channel.endpoint = "https://example.org/Endpoints/d7dcc004-808d-452b-8030-3a3a13cd871d"
* channel.payload = #application/fhir+json
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #id-only