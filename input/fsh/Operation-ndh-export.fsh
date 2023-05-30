Instance: ndhexport
InstanceOf: OperationDefinition
Title: "NDH Export Operation"
Description: "NDH Qery Export Operation"
Usage: #definition
* url = "http://hl7.org/fhir/us/ndh/OperationDefinition/ndhexport"
* version = "1.0.0"
* name = "ndhexport"
* title = "NDH Export Operation"
* status = #active
* kind = #operation
* date = "2023-05-25"
* publisher = "HL7 International - FHIR Patient Administration Work Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/pafm"
* description = "NDH Query Export Operation"
* jurisdiction = urn:iso:std:iso:3166#US
* code = #ndhExport
* system = true
* type = false
* instance = false
* parameter[0].name = #_practitioner
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Usage: GET [base]/$ndhExport?_practitioner=practitioner.address-state=MD&"
* parameter[=].type = #string
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The bundle type is searchset and the bundle contains a set of resources matching the search criteria."
* parameter[=].type = #Bundle

