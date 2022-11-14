
Instance: ndh-query-BasicEndpoint
InstanceOf: CapabilityStatement
Usage: #definition
Title: "NDH Query Basic Endpoint Capability Statement"

* id = "ndh-query-BasicEndpoint"
* name = "NDHQueryBasicEndpointCapabilityStatement"
* url = "http://hl7.org/fhir/us/ndh/CapabilityStatement/ndh-query-BasicEndpoint"
* description = "Capabilities for a basic Query Server where endpoint search capabilities are met"
//* title = "NDH Query Basic Endpoint Capability Statement"
* rest.mode = #server
* status = #draft
* date = "2022-10-31"
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json

// Measure requirements
* insert SupportResource(Endpoint, #SHALL)
* insert SupportProfile(https://hl7.org/fhir/ndh/StructureDefinition/ndh-Endpoint, #SHALL)
* insert SupportInteraction(#read, #SHALL)
//* insert SupportInteraction(#search-type, #SHALL)
//* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
//* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
//* insert SupportSearchParam(name, http://hl7.org/fhir/SearchParameter/Location-name, #string, #SHALL)

 // MeasureReport requirements
* insert SupportResource(HealthcareService, #SHALL)
* insert SupportProfile(https://hl7.org/fhir/ndh/StructureDefinition/ndh-HealthcareService, #SHALL)
* insert SupportInteraction(#read, #SHALL)
//* insert SupportInteraction(#search-type, #SHALL)
//* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
//* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
//* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/MeasureReport-date, #date, #SHALL)
//* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/MeasureReport-subject, #reference, #SHALL)
//* insert SupportSearchParam(code, http://hl7.org/fhir/us/saner/SearchParameter/SearchParameter-code, #token, #SHOULD)