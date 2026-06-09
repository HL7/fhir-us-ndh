Instance: PlanNetToNdhEndpointConnectionTypeCM
InstanceOf: ConceptMap
Title: "Plan-Net to NDH Endpoint Connection Type ConceptMap"
Description: "Maps Plan-Net Endpoint connection type codes to NDH Endpoint connection type codes."
Usage: #definition
* name = "PlanNetToNdhEndpointConnectionType"
* title = "Plan-Net to NDH Endpoint Connection Type ConceptMap"
* status = #active
* experimental = false
* description = "Maps Plan-Net Endpoint connection type codes to NDH Endpoint connection type codes."
* sourceUri = "http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/EndpointConnectionTypeVS"
* targetUri = "http://hl7.org/fhir/us/ndh/ValueSet/EndpointConnectionTypeVS"

* group[+].source = "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/EndpointConnectionTypeCS"
* group[=].target = "http://hl7.org/fhir/us/ndh/CodeSystem/NdhEndpointConnectionTypeCS"

* group[=].element[+].code = #hl7-fhir-opn
// intentionally no target for hl7-fhir-opn

* group[=].element[+].code = #rest-non-fhir
* group[=].element[=].target[+].code = #rest-non-fhir
* group[=].element[=].target[=].equivalence = #equal
