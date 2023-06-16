/*
header for repeat export request
Content-Type: application/ndjson
Prefer: respond-async
OutputFormat: application/fhir+ndjson

Response for the asynchronous response using 202 (Accepted):
HTTP/1.1 202 Accepted
Location: http://example.org/collection/123
RFC7231 define the 202 (Accepted) response status, little guidance is given on how and when to use the response code and the prcess for determining the 
subsequent final result of the operation is left entirely undefined. Therefore, whether and how any given server support asynchronous responses is an 
implementation specific detail the is considered to be out of the scope of the RFC 7240 (Prefer Header for HTTP)
*/

Instance: ndhexport
InstanceOf: OperationDefinition
Title: "NDH Export Operation"
Description: "NDH Qery Export Operation"
Usage: #definition
* url = "http://hl7.org/fhir/us/ndh/OperationDefinition/ndhexport"
* version = "1.0.0"
* name = "NdhExport"
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
* parameter[0].name = #_type
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].type = #string
* parameter[=].documentation = "A string of comma-delimited following resource types: CareTeam,Endpoint, HealthcareService, InsurancePlan, Location, Network,
Organization, OrganizationAffiliation, Practitioner, PractitionerRole, and Verification.  
The response SHALL be filtered to only include resources of the specified resource types(s).  
If this parameter is omitted, the NDH server SHALL return all supported resources within the scope of the client authorization"
* parameter[+].name = #_typeFilter
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].type = #string
* parameter[=].documentation = "string of comman-delimited FHIR REST search queries.  
When provided, a server with support for the parameter and requested search queries SHALL filter the data in the response to only 
include resources that meet the specified criteria"
* parameter[+].name = #_outputFormat
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The format for the requested ndhexport data file to be generated default to application/fhir+ndjson. The NDH server MAY
support additional formats, such as application/csv"
* parameter[+].name = #_startdate
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #dateTime
* parameter[=].documentation = "This parameter is used to specify the start dateTime of the export."
* parameter[+].name = #_frequency
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "daily, weekly, monthly, quarterly, yearly"
* parameter[+].name = #_account
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "This parameter is used to specify the user account. Will be used for cancel the request in the future; 
query the status of the request; and query the result of the request."
* parameter[+].name = #_cancel
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[=].documentation = "If you want to cancel the operation, set the value to true."
* parameter[+].name = #_keepFile
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[=].documentation = "This parameter is used to specify whether to keep the file on the server after the file is downloaded.
if the value is absent the server will keep the file on the server."



