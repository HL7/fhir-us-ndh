Instance: location-bundle
InstanceOf: Bundle
Description: "All location resources"
* type = #transaction
* entry[+].resource = HospLoc1
//* entry[=].fullUrl = "http://ndh.org/fhir/Location/HospLoc1"
* entry[=].fullUrl = "http://example.org/Location-HospLoc1"
* entry[=].request.method = #PUT 
//* entry[=].request.url = "Location/HospLoc1"
* entry[=].request.url = "http://example.org/Location-HospLoc1"


/*
Instance: womens-shelter
InstanceOf: Bundle
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2017-03-17T01:28:32.06+00:00"
* type = #collection
* entry[0].fullUrl = "http://example.org/HealthcareService/hcs-ws"
* entry[=].resource = hcs-ws
* entry[+].fullUrl = "http://example.org/Location/loc-ws"
* entry[=].resource = loc-ws
*/

/*
Instance: womens-shelter
InstanceOf: Bundle
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2017-03-17T01:28:32.06+00:00"
* type = #collection
* entry[0].fullUrl = "http://example.org/HealthcareService/hcs-ws"
* entry[=].resource = hcs-ws
* entry[+].fullUrl = "http://example.org/Location/loc-ws"
* entry[=].resource = loc-ws
*/

