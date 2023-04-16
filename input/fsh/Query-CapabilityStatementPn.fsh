
Instance: capabilityWdsPlanNetQueryServer
InstanceOf: CapabilityStatement
Usage: #definition
Title: "Workflow Directory Server Plan Net Query Capability Statement"

* id = "wds-plan-net-query-server"
* name = "WdsPlanNetQueryCapabilityStatement"
* url = "http://hl7.org/fhir/us/ndh/CapabilityStatement/wds-plan-net-query-server"
* description = "This Section describes the expected capabilities of the Distributed Workflow Directory Server which is responsible 
for providing responses to the queries submitted by the Distributed Workflow Directory Requestors. The complete list of FHIR profiles, RESTful operations, 
and search parameters supported by Distributed Workflow Directory Servers are defined. Distributed Workflow Directory Clients have the option of choosing from this list to access necessary data 
based on their local use cases and other contextual requirements."
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"></div>"
//* text.div = " "
* text.status = #generated
* insert CapabilityCommon
* rest[+].mode = #server
* rest[=].mode.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest.documentation = "Workflow Directory Plan Net Query Server"

* rest[=].interaction[+].code = #search-system
* rest[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHOULD
* rest[=].interaction[=].documentation = "The Distributed Workflow Directory Server **SHOULD**"
* rest[=].interaction[+].code = #history-system
* rest[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHOULD
* rest[=].interaction[=].documentation = "The Distributed Workflow Directory Server **SHOULD**"

//=================================================
// Endpoint
//=================================================
* rest[=].resource[+].type = #Endpoint
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-Endpoint"
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
* rest[=].resource[=].searchInclude[+] = "Endpoint:organization"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "InsurancePlan:endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Location:endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Organization:endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Organizationaffiliation:endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Practitioner:practitioner-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Practitionerrole:endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

// NDH Endpoint searchparameter
* rest[=].resource[=].searchParam[+].name = "endpoint-identifier-assigner"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-identifier-assigner"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "endpoint-mine-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-mime-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "endpoint-usecase-standard"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-standard"
* rest[=].resource[=].searchParam[=].type = #uri
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "endpoint-usecase-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

// Endpoint base searchParameter
* rest[=].resource[=].searchParam[+].name = "connection-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Endpoint-connection-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "identifier"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Endpoint-identifier"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Endpoint-organization"
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
// HealthcareService
//======================================================
* rest[=].resource[+].type = #HealthcareService
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-HealthcareService"
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

* rest[=].resource[=].searchInclude[+] = "HealthcareService:coverage-area"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "HealthcareService:endpoint"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "HealthcareService:location"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "HealthcareService:healthcareservice-new-patient-from-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "HealthcareService:organization"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "HealthcareService:healthcareservice-via-intermediary"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-service"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "OrganizationAffiliation:service"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "PractitionerRole:service"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

//NDH HealthcareService SearchParameter
* rest[=].resource[=].searchParam[+].name = "healthcareservice-category"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-category"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-eligibility"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-eligibility"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-new-patient"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-new-patient-from-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient-from-network"
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

// HealthcareService Base Resource SearchParameter
* rest[=].resource[=].searchParam[+].name = "coverage-area"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-coverage-area"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-endpoint"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "identifier"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-identifier"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-location"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-organization"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


//======================================================
// InsurancePlan
//======================================================
* rest[=].resource[+].type = #InsurancePlan
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-InsurancePlan"
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

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:administered-by"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:endpoint"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:owned-by"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-coverage-area"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-coverage-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-plan-coverage-area"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-plan-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

//NDH InsurancePlan SearchParameter
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

* rest[=].resource[=].searchParam[+].name = "insuranceplan-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-network"
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

//InsurancePlan Base SearchParameter
* rest[=].resource[=].searchParam[+].name = "administered-by"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/InsurancePlan-administered-by"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/InsurancePlan-endpoint"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "owned-by"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/InsurancePlan-owned-by"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/InsurancePlan-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


//======================================================
// Location
//======================================================
* rest[=].resource[+].type = #Location
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-Location"
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

* rest[=].resource[=].searchInclude[+] = "Location:endpoint"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Location:location-new-patient-from-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Location:organization"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Location:partof"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Location:location-via-intermediary"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-location"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:coverage-area"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:location"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:healthcareservice-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "InsurancePlan:insuranceplan-plan-coverage-area"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "InsurancePlan:insuranceplan-coverage-area"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "Location:partof"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Location:location-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


* rest[=].resource[=].searchRevInclude[+] = "Organization:organization-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "OrganizationAffiliation:location"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "OrganizationAffiliation:organizationaffiliation-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


* rest[=].resource[=].searchRevInclude[+] = "Practitioner:practitioner-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "PractitionerRole:location"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "PractitioneRrole:practitionerrole-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

//NDH Location SearchParameter
* rest[=].resource[=].searchParam[+].name = "location-accessibility"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-accessibility"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-contains"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-contains"
* rest[=].resource[=].searchParam[=].type = #special
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-new-patient"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-new-patient-from-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient-from-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

//Location Base Resource SerarchParameter
* rest[=].resource[=].searchParam[+].name = "endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-endpoint"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-organization"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "partof"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-partof"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-type"
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
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-Organization"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-Network"
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

* rest[=].resource[=].searchInclude[+] = "Organization:endpoint"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Organization:organization-identifier-assigner"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Organization:partof"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Organization:organization-via-intermediary"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-organization"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-identifier-assigner"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


* rest[=].resource[=].searchRevInclude[+] = "Endpoint:endpoint-identifier-assigner"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Endpoint:organization"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:organization"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:healthcareservice-new-patient-from-network"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:healthcareservice-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "InsurancePlan:administered-by"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "InsurancePlan:owned-by"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "InsurancePlan:insuranceplan-coverage-network"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "InsurancePlan:insuranceplan-plan-network"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "InsurancePlan:insuranceplan-network"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "Location:location-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Location:location-new-patient-from-network"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Location:organization"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "Organization:organization-identifier-assigner"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Organization:organization-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Organization:partof"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "OrganizationAffiliation:network"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "OrganizationAffiliation:participating-organization"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "OrganizationAffiliation:primary-organization"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "OrganizationAffiliation:organizationaffiliation-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "Practitioner:practitioner-identifier-assigner"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "Practitioner:practitioner-qualification-issuer"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "Practitioner:practitioner-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "PractitionerRole:organization"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "PractitionerRole:practitionerrole-network"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "PractitionerRole:practitionerrole-new-patient-from-network"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "VerificationResult:verificationresult-validator-organization"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "Practitioner:practitioner-qualification-issuer"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "VerificationResult:verificationresult-attestation-who"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


//NDH Organization (Network) SearchParameter
* rest[=].resource[=].searchParam[+].name = "network-coverage-area"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/network-coverage-area"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "organization-identifier-assigner"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/organization-identifier-assigner"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "organization-via-intermediary"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/organization-via-intermediary"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

//Organization Base Resource SearchParameter
* rest[=].resource[=].searchParam[+].name = "address"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-address"
* rest[=].resource[=].searchParam[=].type = #string
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "address-city"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-address-city"
* rest[=].resource[=].searchParam[=].type = #string
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "address-country"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-address-country"
* rest[=].resource[=].searchParam[=].type = #string
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "address-postalcode"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-address-postalcode"
* rest[=].resource[=].searchParam[=].type = #string
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "address-state"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-address-state"
* rest[=].resource[=].searchParam[=].type = #string
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-endpoint"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "identifier"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-identifier"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "name"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-name"
* rest[=].resource[=].searchParam[=].type = #string
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "partof"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-partof"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


//======================================================
// OrganizationAffiliation
//======================================================
* rest[=].resource[+].type = #OrganizationAffiliation
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-OrganizationAffiliation"
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
* rest[=].resource[=].referencePolicy[+] = #literal
* rest[=].resource[=].referencePolicy[+] = #local


* rest[=].resource[=].searchInclude[+] = "OrganizationAffiliation:network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "OrganizationAffiliation:participating-organization"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "OrganizationAffiliation:primary-organization"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "OrganizationAffiliation:organizationaffiliation-via-intermediary"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "Endpoint:endpoint-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:healthcareservice-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "Location:location-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "Organization:network-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "Organization:organization-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "OrganizationAffiliation:organizationaffiliation-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "Practitioner:practitioner-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "PractitionerRole:practitionerrole-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


//NDH OrganizationAffiliation SearchParameter
* rest[=].resource[=].searchParam[+].name = "organizationaffiliation-via-intermediary"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/organizationaffiliation-via-intermediary"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

//OrganizationAffiliation Base Resource SearchParameter
* rest[=].resource[=].searchParam[+].name = "endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-endpoint"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "identifier"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-identifier"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-location"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "participating-organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-participating-organization"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "primary-organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-primary-organization"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "role"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-role"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "service"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-service"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "specialty"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-specialty"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


//======================================================
// Practitioner
//======================================================
* rest[=].resource[+].type = #Practitioner
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-Practitioner"
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
* rest[=].resource[=].referencePolicy[+] = #literal
* rest[=].resource[=].referencePolicy[+] = #local


* rest[=].resource[=].searchInclude[+] = "Practitioner:practitioner-endpoint"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Practitioner:practitioner-identifier-assigner"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Practitioner:practitioner-qualification-issuer"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Practitioner:practitioner-via-intermediary"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "VerificationResult:verificationresult-attestation-who"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "PractitionerRole:practitioner"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


//NDH Practitioner SearchParameter
* rest[=].resource[=].searchParam[+].name = "practitioner-endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-endpoint"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

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

* rest[=].resource[=].searchParam[+].name = "practitioner-qualification-wherevalid-code"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-wherevalid-code"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

//Practitioner Base Resource SearchParameter
* rest[=].resource[=].searchParam[+].name = "family"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-family"
* rest[=].resource[=].searchParam[=].type = #string
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "gender"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-gender"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "given"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-given"
* rest[=].resource[=].searchParam[=].type = #string
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "phonetic"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-phonetic"
* rest[=].resource[=].searchParam[=].type = #string
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "identifier"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-identifier"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "name"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-name"
* rest[=].resource[=].searchParam[=].type = #string
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


//======================================================
// PractitionerRole
//======================================================
* rest[=].resource[+].type = #PractitionerRole
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-PractitionerRole"
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
* rest[=].resource[=].referencePolicy[+] = #literal
* rest[=].resource[=].referencePolicy[+] = #local


* rest[=].resource[=].searchInclude[+] = "PractitionerRole:endpoint"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "PractitionerRole:location"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "PractitionerRole:practitionerrole-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "PractitionerRole:practitionerrole-new-patient-from-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "PractitionerRole:organization"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "PractitionerRole:practitioner"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "PractitionerRole:service"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "PractitionerRole:practitionerrole-via-intermediary"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "Endpoint:endpoint-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:healthcareservice-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "Location:location-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "Organization:organization-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "OrganizationAffiliation:organizationaffiliation-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "Practitioner:practitioner-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "PractitionerRole:practitionerrole-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

//NDH PractitionerRole SearchParameter
* rest[=].resource[=].searchParam[+].name = "practitionerrole-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "practitionerrole-new-patient"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "practitionerrole-new-patient-from-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient-from-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "practitionerrole-via-intermediary"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-via-intermediary"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

//PractitionerRole Base Resource SearchParameter
* rest[=].resource[=].searchParam[+].name = "endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-endpoint"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "identifier"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-identifier"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-location"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-organization"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "practitioner"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "role"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-role"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "service"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-service"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "specialty"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-specialty"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL