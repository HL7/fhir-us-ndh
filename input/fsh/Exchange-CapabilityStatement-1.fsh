RuleSet:       CapabilityCommon
* jurisdiction        = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* status              = #active
* date                = "2022-11-01"
* publisher           = "HL7 International - Patient Administration Work Group"
* contact[0].telecom[0].system = #url
* contact[0].telecom[0].value  = "http://hl7.org/Special/committees/pafm"
* kind                = #requirements
* fhirVersion         = #4.0.1
* format[+]           = #xml
* format[+]           = #json
* meta.profile = "http://hl7.org/fhir/StructureDefinition/CapabilityStatement"
//* implementationGuide = "http://hl7.org/fhir/us/ndh"

Instance: capabilityNdhExchangeServer
InstanceOf: CapabilityStatement
Usage: #definition
Title: "NDH Exchange Capability Statement"

* id = "ndh-exchange-server"
* name = "NdhExchangeCapabilityStatement"
* url = "http://hl7.org/fhir/us/ndh/CapabilityStatement/ndh-exchange-server"
* description = "This Section describes the expected capabilities of the NDH Server actor which is responsible 
for providing responses to the queries submitted by the NDH Requestors. The complete list of FHIR profiles, RESTful operations, 
and search parameters supported by NDH Servers are defined. NDH Clients have the option of choosing from this list to access necessary data 
based on their local use cases and other contextual requirements."
//* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"></div>"
* text.div = "<div></div>"
* text.status = #generated
* insert CapabilityCommon
* rest[+].mode = #server
* rest[=].mode.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest.documentation = "NDH Exchange Server"

* rest[=].interaction[+].code = #search-system
* rest[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHOULD
* rest[=].interaction[=].documentation = "The NDH Server **SHOULD**"
* rest[=].interaction[+].code = #history-system
* rest[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHOULD
* rest[=].interaction[=].documentation = "The NDH Server **SHOULD**"

//=================================================
// Endpoint
//=================================================
* rest[=].resource[+].type = #Endpoint
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhEx-Endpoint"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].documentation = "Endporint Resource, supportedProfile, interaction, search parameter"

* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[=].documentation = "Read the current state of the resource"
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[+].code = #vread
* rest[=].resource[=].interaction[=].documentation = "Read the state of specific version of the resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-instance
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history of a particular resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history for all resources of particular type"
* rest[=].resource[=].readHistory = true
* rest[=].resource[=].referencePolicy[+] = #literal
* rest[=].resource[=].referencePolicy[+] = #local

* rest[=].resource[=].searchInclude[+] = "Endpoint:endpoint-identifier-assigner"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "Endpoint:endpoint-organization"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:healthcareservice-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:insuranceplan-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:location-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:organization-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:organizationaffiliation-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:practitioner-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:practitionerrole-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


* rest[=].resource[=].searchParam[+].name = "mine-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-mime-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


* rest[=].resource[=].searchParam[+].name = "usecase-standard"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-standard"
* rest[=].resource[=].searchParam[=].type = #uri
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "usecase-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


* rest[=].resource[=].searchParam[+].name = "connection-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Endpoint-connection-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "identifier"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Endpoint-identifier"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "endpoint-identifier-assigner"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-identifier-assigner"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-organization"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "payload-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Endpoint-payload-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "status"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Endpoint-status"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

//======================================================
// CareTeam
//======================================================
* rest[=].resource[+].type = #CareTeam
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHOULD
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-CareTeam"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].documentation = "CareTeam Resource, supportedProfile, interaction, search parameter"

* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[=].documentation = "Read the current state of the resource"
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[+].code = #vread
* rest[=].resource[=].interaction[=].documentation = "Read the state of specific version of the resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-instance
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history of a particular resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history for all resources of particular type"
* rest[=].resource[=].readHistory = true
* rest[=].resource[=].referencePolicy[+] = #literal
* rest[=].resource[=].referencePolicy[+] = #local

* rest[=].resource[=].searchInclude[+] = "CareTeam:careteam-endpoint"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "CareTeam:careteam-identifier-assigner"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "CareTeam:careteam-location"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "CareTeam:careteam-organization"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "CareTeam:careteam-service"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "CareTeam:careteam-via-intermediary"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


* rest[=].resource[=].searchParam[+].name = "careteam-endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-endpoint"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "careteam-location"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-location"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "careteam-name"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-name"
* rest[=].resource[=].searchParam[=].type = #string
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "careteam-organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-organization"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "careteam-service"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-service"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "careteam-category"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-category"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "careteam-via-intermediary"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-via-intermediary"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "careteam-identifier-assigner"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-identifier-assigner"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


//======================================================
// HealthcareService
//======================================================
* rest[=].resource[+].type = #HealthcareService
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhEx-HealthcareService"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].documentation = "HealthcareService Resource, supportedProfile, interaction, search parameter"

* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[=].documentation = "Read the current state of the resource"
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[+].code = #vread
* rest[=].resource[=].interaction[=].documentation = "Read the state of specific version of the resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-instance
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history of a particular resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history for all resources of particular type"
* rest[=].resource[=].readHistory = true
* rest[=].resource[=].referencePolicy[+] = #literal
* rest[=].resource[=].referencePolicy[+] = #local

* rest[=].resource[=].searchInclude[+] = "HealthcareService:healthcareservice-coverage-area"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "HealthcareService:healthcareservice-endpoint"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "HealthcareService:healthcareservice-location"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "HealthcareService:healthcareservice-new-patient-from-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "HealthcareService:healthcareservice-organization"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "HealthcareService:healthcareservice-via-intermediary"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-service"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "OrganizationAffiliation:organizationaffiliation-service"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "PractitionerRole:practitionerrole-service"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-category"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-category"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-coverage-area"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-coverage-area"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-eligibility"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-eligibility"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-endpoint"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-location"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-location"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-new-patient"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-new-patient-from-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient-from-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-organization"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-via-intermediary"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-via-intermediary"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

//======================================================
// InsurancePlan
//======================================================
* rest[=].resource[+].type = #InsurancePlan
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-InsurancePlan"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].documentation = "InsurancePlan Resource, supportedProfile, interaction, search parameter"

* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[=].documentation = "Read the current state of the resource"
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[+].code = #vread
* rest[=].resource[=].interaction[=].documentation = "Read the state of specific version of the resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-instance
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history of a particular resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history for all resources of particular type"
* rest[=].resource[=].readHistory = true
* rest[=].resource[=].referencePolicy[+] = #literal
* rest[=].resource[=].referencePolicy[+] = #local

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-administered-by"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-coverage-area"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-coverage-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-endpoint"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-owned-by"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-plan-coverage-area"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-plan-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan--administered-by"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-area"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-coverage-area"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-area"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-coverage-benefit-limit-value"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-benefit-limit-value"
* rest[=].resource[=].searchParam[=].type = #quantity
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-coverage-benefit-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-benefit-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-coverage-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-coverage-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-owned-by"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-plan-coverage-area"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-coverage-area"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-plan-general-cost-cost"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-general-cost-cost"
* rest[=].resource[=].searchParam[=].type = #quantity
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-plan-general-cost-groupsize"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-general-cost-groupsize"
* rest[=].resource[=].searchParam[=].type = #number
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-plan-general-cost-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-general-cost-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-plan-identifier"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-identifier"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-plan-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-plan-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-plan-specific-cost-category"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-specific-cost-category"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-plan-specific-cost-benefit-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-specific-cost-benefit-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-plan-specific-cost-benefit-cost-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-specific-cost-benefit-cost-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-plan-specific-cost-benefit-cost-value"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-specific-cost-benefit-cost-value"
* rest[=].resource[=].searchParam[=].type = #quantity
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL



//======================================================
// Location
//======================================================
* rest[=].resource[+].type = #Location
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhEx-Location"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].documentation = "Location Resource, supportedProfile, interaction, search parameter"

* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[=].documentation = "Read the current state of the resource"
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[+].code = #vread
* rest[=].resource[=].interaction[=].documentation = "Read the state of specific version of the resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-instance
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history of a particular resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history for all resources of particular type"
* rest[=].resource[=].readHistory = true
* rest[=].resource[=].referencePolicy[+] = #literal
* rest[=].resource[=].referencePolicy[+] = #local

* rest[=].resource[=].searchInclude[+] = "Location:location-endpoint"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Location:location-new-patient-from-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Location:location-organization"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Location:location-partof"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Location:location-via-intermediary"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:healthcareservice-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Location:location-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Organization:organization-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Practitioner:practitioner-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "PractitioneRrole:practitionerrole-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


* rest[=].resource[=].searchParam[+].name = "location-accessibility"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-accessibility"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-contains"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-contains"
* rest[=].resource[=].searchParam[=].type = #special
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-endpoint"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-new-patient"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-new-patient-from-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient-from-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-organization"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-partof"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-partof"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-via-intermediary"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-via-intermediary"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


//======================================================
// Organization
//======================================================
* rest[=].resource[+].type = #Organization
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Organization"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Network"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].documentation = "Organization Resource, supportedProfile, interaction, search parameter"

* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[=].documentation = "Read the current state of the resource"
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[+].code = #vread
* rest[=].resource[=].interaction[=].documentation = "Read the state of specific version of the resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-instance
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history of a particular resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history for all resources of particular type"
* rest[=].resource[=].readHistory = true
* rest[=].resource[=].referencePolicy[+] = #literal
* rest[=].resource[=].referencePolicy[+] = #local


* rest[=].resource[=].searchInclude[+] = "Organization:network-coverage-area"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Organization:organization-endpoint"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Organization:organization-identifier-assigner"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Organization:organization-partof"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Organization:organization-via-intermediary"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-identifier-assigner"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Endpoint:endpoint-identifier-assigner"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Endpoint:endpoint-organization"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:healthcareservice-organization"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "InsurancePlan:insuranceplan-administered-by"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "InsurancePlan:insuranceplan-owned-by"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Location:location-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Location:location-organization"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Organization:organization-identifier-assigner"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Organization:organization-partof"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


* rest[=].resource[=].searchParam[+].name = "organization-endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/organization-endpoint"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "network-coverage-area"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/network-coverage-area"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "organization-identifier-assigner"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/organization-identifier-assigner"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "organization-partof"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/organization-partof"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "organization-via-intermediary"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/organization-via-intermediary"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

//======================================================
// OrganizationAffiliation
//======================================================
* rest[=].resource[+].type = #OrganizationAffiliation
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhEx-OrganizationAffiliation"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].documentation = "OrganizationAffiliation Resource, supportedProfile, interaction, search parameter"

* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[=].documentation = "Read the current state of the resource"
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[+].code = #vread
* rest[=].resource[=].interaction[=].documentation = "Read the state of specific version of the resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-instance
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history of a particular resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history for all resources of particular type"
* rest[=].resource[=].readHistory = true


//======================================================
// Practitioner
//======================================================
* rest[=].resource[+].type = #Practitioner
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Practitioner"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].documentation = "Practitioner Resource, supportedProfile, interaction, search parameter"

* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[=].documentation = "Read the current state of the resource"
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[+].code = #vread
* rest[=].resource[=].interaction[=].documentation = "Read the state of specific version of the resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-instance
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history of a particular resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history for all resources of particular type"
* rest[=].resource[=].readHistory = true

* rest[=].resource[=].searchParam[+].name = "practitioner-identifier-assigner"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-identifier-assigner"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "practitioner-qualification-code"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-code"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "practitioner-qualification-issuer"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-issuer"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "practitioner-qualification-period"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-period"
* rest[=].resource[=].searchParam[=].type = #date
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "practitioner-via-intermediary"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-via-intermediary"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


//======================================================
// PractitionerRole
//======================================================
* rest[=].resource[+].type = #PractitionerRole
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhEx-PractitionerRole"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].documentation = "PractitionerRole Resource, supportedProfile, interaction, search parameter"

* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[=].documentation = "Read the current state of the resource"
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[+].code = #vread
* rest[=].resource[=].interaction[=].documentation = "Read the state of specific version of the resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-instance
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history of a particular resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history for all resources of particular type"
* rest[=].resource[=].readHistory = true

* rest[=].resource[=].searchParam[+].name = "practitionerrole-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "practitionerrole-new-patient"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "practitionerrole-new-patient-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "practitionerrole-via-intermediary"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-via-intermediary"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

//======================================================
// Restrication
//======================================================
* rest[=].resource[+].type = #Consent
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Restriction"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].documentation = "Restriction Resource, supportedProfile, interaction"

* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[=].documentation = "Read the current state of the resource"
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[+].code = #vread
* rest[=].resource[=].interaction[=].documentation = "Read the state of specific version of the resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-instance
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history of a particular resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history for all resources of particular type"
* rest[=].resource[=].readHistory = true

//======================================================
// Verification
//======================================================
* rest[=].resource[+].type = #VerificationResult
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Verification"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].documentation = "Verification Resource, supportedProfile, interaction, search parameter"

* rest[=].resource[=].interaction[+].code = #read
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[=].documentation = "Read the current state of the resource"
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].interaction[+].code = #vread
* rest[=].resource[=].interaction[=].documentation = "Read the state of specific version of the resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-instance
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history of a particular resource"
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[+].code = #history-type
* rest[=].resource[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #MAY
* rest[=].resource[=].interaction[=].documentation = "Retrieve the change history for all resources of particular type"
* rest[=].resource[=].readHistory = true

* rest[=].resource[=].searchParam[+].name = "verificationresult-attestation-communication-method"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-attestation-communication-method"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-attestation-onbehalfof"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-attestation-onbehalfof"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-attestation-who"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-attestation-who"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-primarysource-validation-date"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-validation-date"
* rest[=].resource[=].searchParam[=].type = #date
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-primarysource-validation-status"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-validation-status"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-primarysource-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-primarysource-who"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-who"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-status-date"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-status-date"
* rest[=].resource[=].searchParam[=].type = #date
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-status"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-status"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-target"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-target"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-validator-organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-validator-organization"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
