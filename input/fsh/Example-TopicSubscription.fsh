
Instance:    BackportSubscriptionPractitionerQualificationChange
InstanceOf:  BackportSubscription
Usage:       #example
Title:       "Backport Subscription for Practitioner Qualification Change"
Description: "Topic-based 'Practitioner Qualification Change' subscription."
* id       = "subscription-practitioner-qualification-change"
* status   = #active
* end      = "2023-06-29T12:00:00Z"
* reason   = "Topic-Based Subscription for Practitioner Qualification Change"
* extension[backport-topic-canonical].valueUri = $practitionerQualificationTopic
* criteria.extension[backport-additional-criteria].valueString = "Practitioner?address-state=MD"
* channel.type                                         = #rest-hook
* channel.endpoint                                     = $restHookEndpoint
* channel.extension[heartbeatPeriod].valueUnsignedInt  = 86400
* channel.extension[timeout].valueUnsignedInt          = 60
* channel.extension[maxCount].valuePositiveInt         = 20
* channel.payload                                      = #application/fhir+json
* channel.payload.extension[content].valueCode         = #id-only