
Instance: capabilityNdhExchangeBaseServer
InstanceOf: CapabilityStatement
Usage: #definition
Title: "National Directory API Base Server Capability Statement"
* description = "This Section describes the expected capabilities of the NDH Server actor which is responsible 
for providing responses to the queries submitted by the NDH Requestors. The complete list of FHIR profiles, RESTful operations, 
and search parameters supported by NDH Servers are defined. NDH Clients have the option of choosing from this list to access necessary data 
based on their local use cases and other contextual requirements."
* id = "national-directory-api-base-server"
* url = "http://hl7.org/fhir/us/ndh/CapabilityStatement/national-directory-api-base-server"
* name = "NationalDirectoryApiBaseServerCapabilityStatement"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"></div>"
* text.status = #generated
* insert CapabilityCommon
* rest[+]
  * mode = #server
  * documentation = "National Directory API Base Server"

  * insert Operation(ndhschExport, http://hl7.org/fhir/us/ndh/OperationDefinition/ndhschexport, #SHOULD)
  * insert Operation(export, http://hl7.org/fhir/uv/bulkdata/OperationDefinition/export, #SHOULD)

  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Endpoint
    * insert SupportedProfile(NdhNdApiEndpoint, #SHALL)
    * documentation = "Endporint Resource, supportedProfile, interaction, search parameter"

    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#vread, #SHALL, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local
    
    //-include and -revinclude contains the reference in the resource, it does not have to be a defined search parameter
    * insert SearchInclude("Endpoint:organization", #SHALL)
    * insert SearchRevInclude("CareTeam:endpoint", #SHOULD)
   
   //-revinclude Conformance should follow the resourceself conformance and related resource conformance to the lowest level
    * insert SearchRevInclude("HealthcareService:endpoint", #SHOULD)
    * insert SearchRevInclude("InsurancePlan:endpoint", #SHOULD)
    * insert SearchRevInclude("Location:endpoint", #SHALL)
    * insert SearchRevInclude("Organization:endpoint", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:endpoint", #SHOULD)
    * insert SearchRevInclude("Practitioner:endpoint", #SHALL)
    * insert SearchRevInclude("PractitionerRole:endpoint", #SHALL)

    * insert SearchParamNdh("usecase-type", endpoint-usecase-type, #token, #SHALL,"Endpoint usecase type")
    * insert SearchParamNdh("nonfhir-usecase-type", endpoint-nonfhir-usecase-type, #token, #SHALL,"Endpoint nonfhir usecase type")
    * insert SearchParamNdh("trust-framework-type", endpoint-trust-framework-type, #token, #SHALL,"Endpoint trust framework type")
    * insert SearchParamNdh("dynamic-registration-trust-profile", endpoint-dynamic-registration-trust-profile, #token, #SHALL,"Endpoint dynamic registration trust profile")
    * insert SearchParamNdh("access-control-mechanism", endpoint-access-control-mechanism, #token, #SHALL,"Endpoint access control mechanism")
    * insert SearchParamNdh("connection-type-version", endpoint-connection-type-version, #token, #SHALL,"Endpoint connection type version")
    * insert SearchParamNdh("ihe-connection-type", endpoint-ihe-connection-type, #token, #SHALL,"Endpoint ihe connection type")
    * insert SearchParamNdh("verification-status", endpoint-verification-status, #token, #SHALL,"Endpoint verification status")

    //* insert SearchParam("_query", Resource-query, #token, #SHALL, "Query search parameter which supports a more sophisticated grammar for searching.")
    * insert SearchParam("_filter", Resource-filter, #special, #SHALL, "supports a more sophisticated grammar for searching")
    * insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHALL, "Allows filtering for only records that have changed since last query.")
    * insert SearchParam("connection-type", Endpoint-connection-type, #token, #SHALL,"Connection type")
    * insert SearchParam("identifier", Endpoint-identifier, #token, #SHALL,"Endpoint identifier")
    * insert SearchParam("organization", Endpoint-organization, #reference, #SHALL,"Organization that manages the Endpoint")
    * insert SearchParam("status", Endpoint-status, #token, #SHALL,"Endpoint status")

//======================================================
// CareTeam
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHOULD
    * type = #CareTeam
    * insert SupportedProfile(NdhNdApiCareTeam, #SHOULD)
    * documentation = "CareTeam Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#search-type, #SHOULD, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHOULD, "Read the current state of the resource")
    * insert Interaction(#vread, #SHOULD, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHOULD, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHOULD, "Retrieve the history of the resource type")
    * versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchInclude("CareTeam:location", #SHOULD)
    * insert SearchInclude("CareTeam:organization", #SHOULD)
    * insert SearchInclude("CareTeam:service", #SHOULD)

    * insert SearchParamNdh("endpoint", careteam-endpoint, #reference, #SHOULD,"Endpoint of the CareTeam")
    * insert SearchParamNdh("location", careteam-location, #reference, #SHOULD,"Location of the CareTeam")
    * insert SearchParamNdh("organization", careteam-organization, #reference, #SHOULD,"Organization of the CareTeam")
    * insert SearchParamNdh("service", careteam-service, #reference, #SHOULD,"Service of the CareTeam")
    * insert SearchParamNdh("name", careteam-name, #string, #SHOULD,"Name of the CareTeam")
    * insert SearchParamNdh("verification-status", careteam-verification-status, #token, #SHOULD,"Verification status of the CareTeam")
    
    //* insert SearchParam("_query", Resource-query, #token, #SHOULD, "Query search parameter which supports a more sophisticated grammar for searching.")
    * insert SearchParam("_filter", Resource-filter, #special, #SHOULD, "supports a more sophisticated grammar for searching")
    * insert SearchParam("_id", Resource-id, #token, #SHOULD, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHOULD, "Allows filtering for only records that have changed since last query.")
    * insert SearchParam("category", CareTeam-category, #token, #SHOULD,"Type of team")
    //* insert SearchParam("identifier", CareTeam-identifier, #token, #SHALL,"External Ids for this team")
    * insert SearchParam("participant", CareTeam-participant, #reference, #SHOULD,"Who is involved")
    * insert SearchParam("status", CareTeam-status, #token, #SHOULD,"Status of the CareTeam")


//======================================================
// HealthcareService
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHOULD
    * type = #HealthcareService
    * insert SupportedProfile(NdhNdApiHealthcareService, #SHOULD)
    * documentation = "HealthcareService Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#search-type, #SHOULD, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHOULD, "Read the current state of the resource")
    * insert Interaction(#vread, #SHOULD, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHOULD, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHOULD, "Retrieve the history of the resource type")
    * versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchInclude("HealthcareService:coverage-area", #SHOULD)
    * insert SearchInclude("HealthcareService:endpoint", #SHOULD)
    * insert SearchInclude("HealthcareService:location", #SHOULD)
    * insert SearchInclude("HealthcareService:new-patient-from-network", #SHOULD)
    * insert SearchInclude("HealthcareService:organization", #SHOULD)

    * insert SearchRevInclude("CareTeam:careteam-service", #SHOULD)
    * insert SearchRevInclude("OrganizationAffiliation:service", #SHOULD)
    * insert SearchRevInclude("PractitionerRole:service", #SHOULD)

    * insert SearchParamNdh("new-patient-from-network", healthcareservice-new-patient-from-network, #reference, #SHOULD,"New patient from network")
    * insert SearchParamNdh("eligibility", healthcareservice-eligibility, #token, #SHOULD,"Eligibility")
    * insert SearchParamNdh("new-patient", healthcareservice-new-patient, #token, #SHOULD,"New patient")
    * insert SearchParamNdh("verification-status", healthcareservice-verification-status, #token, #SHOULD,"Verification status")
    * insert SearchParamNdh("network", healthcareservice-network, #reference, #SHOULD,"Network")
    * insert SearchParamNdh("program-requirement-age-group", healthcareservice-program-requirement-age-group, #token, #SHOULD,"Program requirement age group")
    * insert SearchParamNdh("program-requirement-birthsex", healthcareservice-program-requirement-birthsex, #token, #SHOULD,"Program requirement birthsex")
    * insert SearchParamNdh("program-requirement-gender-identity", healthcareservice-program-requirement-gender-identity, #token, #SHOULD, "Program requirement gender identity")
    * insert SearchParamNdh("program-requirement-employment-status", healthcareservice-program-requirement-employment-status, #token, #SHOULD,"Program requirement employment status")
    * insert SearchParamNdh("program-requirement-insurance-status", healthcareservice-program-requirement-insurance-status, #token, #SHOULD,"Program requirement insurance status")
    * insert SearchParamNdh("program-requirement-va-status", healthcareservice-program-requirement-va-status, #token, #SHOULD,"Program requirement va status")
    * insert SearchParamNdh("program-requirement-preferred-language", healthcareservice-program-requirement-preferred-language, #token, #SHOULD,"Program requirement preferred language")
    * insert SearchParamNdh("social-service-age-group", healthcareservice-social-service-age-group, #token, #SHOULD,"Social service requirement age group")
    * insert SearchParamNdh("social-service-birthsex", healthcareservice-social-service-birthsex, #token, #SHOULD,"Social service requirement birthsex")
    * insert SearchParamNdh("social-service-gender-identity", healthcareservice-social-service-gender-identity, #token, #SHOULD, "Social service requirement gender identity")
    * insert SearchParamNdh("social-service-employment-status", healthcareservice-social-service-employment-status, #token, #SHOULD,"Social service requirement employment status")
    * insert SearchParamNdh("social-service-insurance-status", healthcareservice-social-service-insurance-status, #token, #SHOULD,"Social service requirement insurance status")
    * insert SearchParamNdh("social-service-va-status", healthcareservice-social-service-va-status, #token, #SHOULD,"Social service requirement va status")
    * insert SearchParamNdh("social-service-preferred-language", healthcareservice-social-service-preferred-language, #token, #SHOULD,"Social service requirement preferred language")
    * insert SearchParamNdh("location", healthcareservice-location, #reference, #SHOULD,"The location of the Healthcare Service")
    * insert SearchParamNdh("organization", healthcareservice-organization, #reference, #SHOULD,"The organization that provides this Healthcare Service")

    //* insert SearchParam("_query", Resource-query, #token, #SHOULD, "Query search parameter which supports a more sophisticated grammar for searching.")
    * insert SearchParam("_filter", Resource-filter, #special, #SHOULD, "supports a more sophisticated grammar for searching")
    * insert SearchParam("_id", Resource-id, #token, #SHOULD, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHOULD, "Allows filtering for only records that have changed since last query.")
    * insert SearchParam("active", HealthcareService-active, #token, #SHOULD,"Whether this HealthcareService record is in active use")
    * insert SearchParam("coverage-area", HealthcareService-coverage-area, #reference, #SHOULD,"Location service is inteded for/available to")
    * insert SearchParam("endpoint", HealthcareService-endpoint, #reference, #SHOULD,"Technical endpoints providing access to services operated for the location")
    * insert SearchParam("identifier", HealthcareService-identifier, #token, #SHOULD,"External identifiers for this item")
    //* insert SearchParam("location", HealthcareService-location, #reference, #SHOULD,"The location of the Healthcare Service")
    * insert SearchParam("name", HealthcareService-name, #string, #SHOULD,"A portion of the Healthcare service name")
    //* insert SearchParam("organization", HealthcareService-organization, #reference, #SHOULD,"The organization that provides this Healthcare Service")
    * insert SearchParam("program", HealthcareService-program, #token, #SHOULD,"One of the Program Names that categorize the service")
    * insert SearchParam("service-category", HealthcareService-service-category, #token, #SHOULD,"Service Category of the Healthcare Service")
    * insert SearchParam("service-type", HealthcareService-service-type, #token, #SHOULD,"The type of service provided by this healthcare service")
    * insert SearchParam("specialty", HealthcareService-specialty, #token, #SHOULD,"Specialties handled by the HealthcareService")

//======================================================
// InsurancePlan
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHOULD
    * type = #InsurancePlan
    * insert SupportedProfile(NdhNdApiInsurancePlan, #SHOULD)
    * documentation = "InsurancePlan Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#search-type, #SHOULD, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHOULD, "Read the current state of the resource")
    * insert Interaction(#vread, #SHOULD, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHOULD, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHOULD, "Retrieve the history of the resource type")
    * versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchInclude("InsurancePlan:administered-by",#SHOULD)
    * insert SearchInclude("InsurancePlan:endpoint",#SHOULD)
    * insert SearchInclude("InsurancePlan:owned-by",#SHOULD)
    * insert SearchInclude("InsurancePlan:coverage-area",#SHOULD)
    * insert SearchInclude("InsurancePlan:coverage-network",#SHOULD)
    * insert SearchInclude("InsurancePlan:plan-coverage-area", #SHOULD)
    * insert SearchInclude("InsurancePlan:plan-network", #SHOULD)
    * insert SearchInclude("InsurancePlan:network", #SHOULD)
  
    * insert SearchParamNdh("coverage-area", insuranceplan-coverage-area, #reference, #SHOULD, "InsurancePlan coverage area")
    * insert SearchParamNdh("coverage-benefit-type", insuranceplan-coverage-benefit-type, #token, #SHOULD, "InsurancePlan coverage benefit type" )
    * insert SearchParamNdh("coverage-type", insuranceplan-coverage-type, #token, #SHOULD, "InsurancePlan coverage type")
    * insert SearchParamNdh("coverage-network", insuranceplan-coverage-network, #reference, #SHOULD, "InsurancePlan coverage network")
    * insert SearchParamNdh("network", insuranceplan-network, #reference, #SHOULD, "InsurancePlan network")
    * insert SearchParamNdh("plan-network", insuranceplan-plan-network, #reference, #SHOULD, "InsurancePlan plan network")
    * insert SearchParamNdh("plan-type", insuranceplan-plan-type, #token, #SHOULD, "InsurancePlan plan type")
    * insert SearchParamNdh("verification-status", insuranceplan-verification-status, #token, #SHOULD, "Verification status")
    
    //* insert SearchParam("_query", Resource-query, #token, #SHOULD, "Query search parameter which supports a more sophisticated grammar for searching.")
    * insert SearchParam("_filter", Resource-filter, #special, #SHOULD, "supports a more sophisticated grammar for searching")
    * insert SearchParam("_id", Resource-id, #token, #SHOULD, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHOULD, "Allows filtering for only records that have changed since last query.")
    * insert SearchParam("address", InsurancePlan-address, #string, #SHOULD, "InsurancePlan contact address")
    * insert SearchParam("address-city", InsurancePlan-address-city, #string, #SHOULD, "InsurancePlan contact address-city")
    * insert SearchParam("address-country", InsurancePlan-address-country, #string, #SHOULD, "InsurancePlan contact address-country")
    * insert SearchParam("address-postalcode", InsurancePlan-address-postalcode, #string, #SHOULD, "InsurancePlan contact address-postalcode")
    * insert SearchParam("address-state", InsurancePlan-address-state, #string, #SHOULD, "InsurancePlan contact address-state")
    * insert SearchParam("administered-by", InsurancePlan-administered-by, #reference, #SHOULD, "InsurancePlan administered by")
    * insert SearchParam("endpoint", InsurancePlan-endpoint, #reference, #SHOULD, "InsurancePlan endpoint")
    * insert SearchParam("identifier", InsurancePlan-identifier, #token, #SHOULD, "InsurancePlan identifier")
    * insert SearchParam("name", InsurancePlan-name, #string, #SHOULD, "InsurancePlan name")
    * insert SearchParam("owned-by", InsurancePlan-owned-by, #reference, #SHOULD, "InsurancePlan owned by")
    * insert SearchParam("status", InsurancePlan-status, #token, #SHOULD, "InsurancePlan status")
    * insert SearchParam("type", InsurancePlan-type, #token, #SHOULD, "InsurancePlan type")

//======================================================
// Location
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Location
    * insert SupportedProfile(NdhNdApiLocation, #SHALL)
    * documentation = "Location Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#vread, #SHALL, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchInclude("Location:endpoint",#SHALL)
    * insert SearchInclude("Location:new-patient-from-network",#SHALL)
    * insert SearchInclude("Location:organization",#SHALL)
    * insert SearchInclude("Location:partof",#SHALL)

    * insert SearchRevInclude("CareTeam:location",#SHOULD)
    * insert SearchRevInclude("HealthcareService:coverage-area",#SHOULD)
    * insert SearchRevInclude("HealthcareService:location",#SHOULD)
    * insert SearchRevInclude("InsurancePlan:coverage-area", #SHOULD)
    * insert SearchRevInclude("OrganizationAffiliation:location",#SHOULD)
    * insert SearchRevInclude("PractitionerRole:location",#SHALL)

    * insert SearchParamNdh("accessibility", location-accessibility, #token, #SHALL, "Location accessibility")
    * insert SearchParamNdh("contains", location-contains, #special, #SHALL, "Location contains")
    * insert SearchParamNdh("new-patient-from-network", location-new-patient-from-network, #reference, #SHALL, "Location new patient from network")
    * insert SearchParamNdh("new-patient", location-new-patient, #token, #SHALL, "Location new patient")
    
    //* insert SearchParam("_query", Resource-query, #token, #SHALL, "Query search parameter which supports a more sophisticated grammar for searching.")
    * insert SearchParam("_filter", Resource-filter, #special, #SHALL, "supports a more sophisticated grammar for searching")
    * insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHALL, "Allows filtering for only records that have changed since last query.")
    * insert SearchParam("address", Location-address, #string, #SHALL, "Location address")
    * insert SearchParam("address-city", Location-address-city, #string, #SHALL, "Location address-city")
    * insert SearchParam("address-country", Location-address-country, #string, #SHALL, "Location address-country")
    * insert SearchParam("address-postalcode", Location-address-postalcode, #string, #SHALL, "Location address-postalcode")
    * insert SearchParam("address-state", Location-address-state, #string, #SHALL, "Location address-state")
    * insert SearchParam("address-use", Location-address-use, #token, #SHALL, "Location address-use")

    
    * insert SearchParam("endpoint", Location-endpoint, #reference, #SHALL, "Location endpoint")
    * insert SearchParam("identifier", Location-identifier, #token, #SHALL, "Location identifier")
    * insert SearchParam("name", Location-name, #string, #SHALL, "Location name")
    * insert SearchParam("near", Location-near, #special, #SHALL, "Location position")
    * insert SearchParam("partof", Location-partof, #reference, #SHALL, "Location partof")
    
    * insert SearchParam("organization", Location-organization, #reference, #SHALL, "Location organization")
    * insert SearchParam("type", Location-type, #token, #SHALL, "Location type")

//======================================================
// Organization
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Organization
    * insert SupportedProfile(NdhNdApiOrganization, #SHALL)
    * insert SupportedProfile(NdhNdApiNetwork, #SHALL)
    * documentation = "Organization Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#vread, #SHALL, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local
    
    * insert SearchInclude("Organization:endpoint",#SHALL)
    //* insert SearchInclude("Organization:identifier-assigner",#SHALL)
    * insert SearchInclude("Organization:partof",#SHALL)
    //* insert SearchInclude("Organization:via-intermediary",#SHALL)

    * insert SearchRevInclude("CareTeam:organization", #SHOULD)

    * insert SearchRevInclude("Endpoint:organization", #SHALL)
    * insert SearchRevInclude("Endpoint:identifier-assigner", #SHALL)

    * insert SearchRevInclude("HealthcareService:organization", #SHOULD)
    * insert SearchRevInclude("HealthcareService:new-patient-from-network", #SHOULD)
    //* insert SearchRevInclude("HealthcareService:network", #SHOULD)
    //* insert SearchRevInclude("HealthcareService:via-intermediary", #SHOULD)

    * insert SearchRevInclude("InsurancePlan:administered-by", #SHOULD)
    * insert SearchRevInclude("InsurancePlan:owned-by", #SHOULD)
    * insert SearchRevInclude("InsurancePlan:coverage-network",#SHOULD)
    * insert SearchRevInclude("InsurancePlan:plan-network",#SHOULD)
    * insert SearchRevInclude("InsurancePlan:network", #SHOULD)

    * insert SearchRevInclude("Location:organization", #SHALL)
    * insert SearchRevInclude("Location:new-patient-from-network", #SHALL)
   //* insert SearchRevInclude("Location:via-intermediary", #SHALL)

    * insert SearchRevInclude("OrganizationAffiliation:network", #SHOULD)
    * insert SearchRevInclude("OrganizationAffiliation:participating-organization", #SHOULD)
    * insert SearchRevInclude("OrganizationAffiliation:primary-organization", #SHOULD)
    //* insert SearchRevInclude("OrganizationAffiliation:via-intermediary", #SHOULD)

    //* insert SearchRevInclude("Practitioner:identifier-assigner", #SHALL)
    * insert SearchRevInclude("Practitioner:qualification-issuer", #SHALL)
    //* insert SearchRevInclude("Practitioner:via-intermediary", #SHALL)
    
    * insert SearchRevInclude("PractitionerRole:organization", #SHALL)
    * insert SearchRevInclude("PractitionerRole:network", #SHALL)
    * insert SearchRevInclude("PractitionerRole:new-patient-from-network", #SHALL)
    //* insert SearchRevInclude("VerificationResult:validator-organization", #SHALL)
    //* insert SearchRevInclude( "VerificationResult:attestation-who", #SHALL)

    //* insert SearchParamNdh("identifier-assigner", organization-identifier-assigner, #reference, #SHALL, "Organization identifier assigner")
    //* insert SearchParamNdh("via-intermediary", organization-via-intermediary, #reference, #SHALL, "Organization via intermediary")
    * insert SearchParamNdh("coverage-area", network-coverage-area, #reference, #SHALL, "network organization type is needed for searching network coverage area")
    
    //* insert SearchParam("_query", Resource-query, #token, #SHALL, "Query search parameter which supports a more sophisticated grammar for searching.")
    * insert SearchParam("_filter", Resource-filter, #special, #SHALL, "supports a more sophisticated grammar for searching")
    * insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHALL, "Allows filtering for only records that have changed since last query.")
    * insert SearchParam("active", Organization-active, #token, #SHALL, "Organization active")
    * insert SearchParam("address", Organization-address, #string, #SHALL, "Organization address")
    * insert SearchParam("address-city", Organization-address-city, #string, #SHALL, "Organization address-city")
    * insert SearchParam("address-country", Organization-address-country, #string, #SHALL, "Organization address-country")
    * insert SearchParam("address-postalcode", Organization-address-postalcode, #string, #SHALL, "Organization address-postalcode")
    * insert SearchParam("address-state", Organization-address-state, #string, #SHALL, "Organization address-state")
    * insert SearchParam("address-use", Organization-address-use, #token, #SHALL, "Organization address-use")
    * insert SearchParam("endpoint", Organization-endpoint, #reference, #SHALL, "Organization endpoint")
    * insert SearchParam("identifier", Organization-identifier, #token, #SHALL, "Organization identifier")
    * insert SearchParam("name", Organization-name, #string, #SHALL, "Organization name")
    * insert SearchParam("partof", Organization-partof, #reference, #SHALL, "Organization partof")
    * insert SearchParam("type", Organization-type, #token, #SHALL, "Organization type")
  

//======================================================
// OrganizationAffiliation
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHOULD
    * type = #OrganizationAffiliation
    * insert SupportedProfile(NdhNdApiOrganizationAffiliation, #SHOULD)
    * documentation = "OrganizationAffiliation Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#history-instance, #SHOULD, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHOULD, "Retrieve the history of the resource type")
    * insert Interaction(#read, #SHOULD, "Read the current state of the resource")
    * insert Interaction(#search-type, #SHOULD, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#vread, #SHOULD, "Read the state of specific version of the resource")
    * versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchInclude("OrganizationAffiliation:network", #SHOULD)
    * insert SearchInclude("OrganizationAffiliation:participating-organization", #SHOULD)
    * insert SearchInclude("OrganizationAffiliation:primary-organization", #SHOULD)
    //* insert SearchInclude("OrganizationAffiliation:via-intermediary", #SHALL)

    //* insert SearchRevInclude("Endpoint:via-intermediary", #SHALL)
    //* insert SearchRevInclude("HealthcareService:via-intermediary", #SHOULD)
    //* insert SearchRevInclude("Location:via-intermediary", #SHALL)
    //* insert SearchRevInclude("Organization:via-intermediary", #SHALL)
    //* insert SearchRevInclude("Organization:via-intermediary", #SHALL)
    //* insert SearchRevInclude("OrganizationAffiliation:via-intermediary",#SHOULD)
    //* insert SearchRevInclude("Practitioner:via-intermediary", #SHALL)
    //* insert SearchRevInclude("PractitionerRole:via-intermediary", #SHALL)

    //* insert SearchParamNdh("via-intermediary", organizationaffiliation-via-intermediary, #reference, #SHALL, "OrganizationAffiliation via intermediary")
    * insert SearchParamNdh("location", organizationaffiliation-location, #reference, #SHOULD, "OrganizationAffiliation location")
    * insert SearchParamNdh("participating-organization", organizationaffiliation-participating-organization, #reference, #SHOULD, "OrganizationAffiliation participating-organization")
    * insert SearchParamNdh("primary-organization", organizationaffiliation-primary-organization, #reference, #SHOULD, "OrganizationAffiliation primary-organization")
    
    //* insert SearchParam("_query", Resource-query, #token, #SHOULD, "Query search parameter which supports a more sophisticated grammar for searching.")
    * insert SearchParam("_filter", Resource-filter, #special, #SHOULD, "supports a more sophisticated grammar for searching")
    * insert SearchParam("_id", Resource-id, #token, #SHOULD, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHOULD, "Allows filtering for only records that have changed since last query.")
    * insert SearchParam("endpoint",OrganizationAffiliation-endpoint, #reference, #SHOULD, "OrganizationAffiliation endpoint")
    * insert SearchParam("identifier", OrganizationAffiliation-identifier, #token, #SHOULD, "OrganizationAffiliation identifier")
    //* insert SearchParam("location", OrganizationAffiliation-location, #reference, #SHOULD, "OrganizationAffiliation location")
    * insert SearchParam("network", OrganizationAffiliation-network, #reference, #SHOULD, "OrganizationAffiliation network")
    //* insert SearchParam("participating-organization", OrganizationAffiliation-participating-organization, #reference, #SHOULD, "OrganizationAffiliation participating-organization")
    //* insert SearchParam("primary-organization", OrganizationAffiliation-primary-organization, #reference, #SHOULD, "OrganizationAffiliation primary-organization")
    * insert SearchParam("role", OrganizationAffiliation-role, #token, #SHOULD, "OrganizationAffiliation role")
    * insert SearchParam("service", OrganizationAffiliation-service, #reference, #SHOULD, "OrganizationAffiliation service")
    * insert SearchParam("specialty", OrganizationAffiliation-specialty, #token, #SHOULD, "OrganizationAffiliation specialty")

//======================================================
// Practitioner
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Practitioner
    * insert SupportedProfile(NdhNdApiPractitioner, #SHALL)
    * documentation = "Practitioner Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#vread, #SHALL, "Read the state of specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchInclude("Practitioner:endpoint", #SHALL)
    // insert SearchInclude("Practitioner:identifier-assigner", #SHALL)
    * insert SearchInclude("Practitioner:qualification-issuer", #SHALL)
    //* insert SearchInclude("Practitioner:via-intermediary", #SHALL)
    //* insert SearchInclude("Practitioner:verification-attestation-who", #SHALL)

    * insert SearchRevInclude("PractitionerRole:practitioner", #SHALL)

    * insert SearchParamNdh("endpoint", practitioner-endpoint, #reference, #SHALL, "Practitioner endpoint")
    //* insert SearchParamNdh("identifier-assigner", practitioner-identifier-assigner, #reference, #SHALL, "Practitioner identifier assigner")
    * insert SearchParamNdh("qualification-issuer", practitioner-qualification-issuer, #reference, #SHALL, "Practitioner qualification issuer")
    * insert SearchParamNdh("qualification-code", practitioner-qualification-code, #token, #SHALL, "Practitioner qualification code")
    //* insert SearchParamNdh("qualification-period", practitioner-qualification-period, #date, #SHALL, "Practitioner qualification period")
    //* insert SearchParamNdh("qualification-wherevalid-code", practitioner-qualification-wherevalid-code, #token, #SHALL, "Practitioner qualification wherevalid code")
    //* insert SearchParamNdh("via-intermediary", practitioner-via-intermediary, #reference, #SHALL, "Practitioner via intermediary")
    
    //* insert SearchParam("_query", Resource-query, #token, #SHALL, "Query search parameter which supports a more sophisticated grammar for searching.")
    * insert SearchParam("_filter", Resource-filter, #special, #SHALL, "supports a more sophisticated grammar for searching")
    * insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHALL, "Allows filtering for only records that have changed since last query.")
    * insert SearchParam("active", Practitioner-active, #token, #SHALL, "Whether this practitioner's record is in active use")
    //* insert SearchParam("address", individual-address, #string, #SHALL, "An address in any kind of address/part")
    //* insert SearchParam("address-city", individual-address-city, #string, #SHALL, "A city specified in an address")
    //* insert SearchParam("address-country", individual-address-country, #string, #SHALL, "A country specified in an address")
    //* insert SearchParam("address-postalcode", individual-address-postalcode, #string, #SHALL, "A postalCode specified in an address")
    //* insert SearchParam("address-state", individual-address-state, #string, #SHALL, "A state specified in an address")
    //* insert SearchParam("address-use", individual-address-use, #token, #SHALL, "A use code specified in an address")
    * insert SearchParam("name", Practitioner-name, #string, #SHALL, "A portion of either family or given name of the practitioner")
    //* insert SearchParam("family", individual-family, #string, #SHALL, "A portion of the family name")
    //* insert SearchParam("given", individual-given, #string, #SHALL, "A portion of the given name")
    * insert SearchParam("gender", individual-gender, #token, #SHALL, "Practitioner gender")
    * insert SearchParam("identifier", Practitioner-identifier, #token, #SHALL, "A practitioner's Identifier")

//======================================================
// PractitionerRole
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #PractitionerRole
    * insert SupportedProfile(NdhNdApiPractitionerRole, #SHALL)
    * documentation = "PractitionerRole Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#vread, #SHALL, "Read the state of specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    //* insert SearchInclude("PractitionerRole:endpoint", #SHALL)
    * insert SearchInclude("PractitionerRole:location", #SHALL)
    * insert SearchInclude("PractitionerRole:network", #SHALL)
    * insert SearchInclude("PractitionerRole:new-patient-from-network", #SHALL)
    * insert SearchInclude("PractitionerRole:organization", #SHALL)
    * insert SearchInclude("PractitionerRole:practitioner", #SHALL)
    * insert SearchInclude("PractitionerRole:service", #SHALL)
    //* insert SearchInclude("PractitionerRole:via-intermediary", #SHALL)

    //* insert SearchRevInclude("Endpoint:via-intermediary", #SHALL)
    //* insert SearchRevInclude("HealthcareService:via-intermediary", #SHOULD)
    //* insert SearchRevInclude("Location:via-intermediary", #SHALL)
    //* insert SearchRevInclude("Organization:via-intermediary", #SHALL)
    //* insert SearchRevInclude("OrganizationAffiliation:via-intermediary", #SHOULD)
    //* insert SearchRevInclude("Practitioner:via-intermediary", #SHALL)
    //* insert SearchRevInclude("PractitionerRole:via-intermediary", #SHALL)

    * insert SearchParamNdh("network", practitionerrole-network, #reference, #SHALL, "PractitionerRole network")
    * insert SearchParamNdh("new-patient", practitionerrole-new-patient, #token, #SHALL, "PractitionerRole new-patient")
    * insert SearchParamNdh("new-patient-from-network", practitionerrole-new-patient-from-network, #reference, #SHALL, "PractitionerRole new-patient from network")
    //* insert SearchParamNdh("via-intermediary", practitionerrole-via-intermediary, #reference, #SHALL, "PractitionerRole via intermediary")

    //* insert SearchParam("_query", Resource-query, #token, #SHALL, "Query search parameter which supports a more sophisticated grammar for searching.")
    * insert SearchParam("_filter", Resource-filter, #special, #SHALL, "supports a more sophisticated grammar for searching")
    * insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHALL, "Allows filtering for only records that have changed since last query.")
    * insert SearchParam("active", PractitionerRole-active, #token, #SHALL, "Whether this practitioner's record is in active use")
    //* insert SearchParam("date", PractitionerRole-date, #date, #SHALL, "The period during which the practitioner is authorized to perform in these role")
    //* insert SearchParam("email", PractitionerRole-email, #token, #SHALL, "A value in an email contact")
    //* insert SearchParam("endpoint", PractitionerRole-endpoint, #reference, #SHALL, "Technical endpoints providing access to services operated for the practitioner with this role")
    * insert SearchParam("identifier", PractitionerRole-identifier, #token, #SHALL, "A practitioner's Identifier")
    * insert SearchParam("location", PractitionerRole-location, #reference, #SHALL, "One of the locations at which this practitioner provides care")
    * insert SearchParam("organization", PractitionerRole-organization, #reference, #SHALL, "The identity of the organization the practitioner represents / acts on behalf of")
    //* insert SearchParam("phone", PractitionerRole-phone, #token, #SHALL, "A value in a phone contact")
    * insert SearchParam("practitioner", PractitionerRole-practitioner, #reference, #SHALL, "Practitioner that is able to provide the defined services for the organization")
    * insert SearchParam("role", PractitionerRole-role, #token, #SHALL, "The practitioner can perform this role at for the organization")
    * insert SearchParam("service", PractitionerRole-service, #reference, #SHALL, "The list of healthcare services that this worker provides for this role's Organization/Location")
    * insert SearchParam("specialty", PractitionerRole-specialty, #token, #SHALL, "The practitioner has this specialty at an organization")


//======================================================
// Restrication
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHOULD
    * type = #Consent
    * insert SupportedProfile(NdhRestriction, #SHOULD)
    * documentation = "Restriction Resource, supportedProfile"
    //* insert Interaction(#read, #SHOULD, "Read the current state of the resource")
    //* insert Interaction(#search-type, #SHOULD, "Search all resources of the specified type based on some filter criteria.")
    //* insert Interaction(#vread, #SHOULD, "Read the state of specific version of the resource")
    //* insert Interaction(#history-instance, #SHOULD, "Retrieve the history of the resource")
    //* insert Interaction(#history-type, #SHOULD, "Retrieve the history of the resource type")
    //* versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchParam("action", Consent-action, #token, #SHOULD, "Actions controlled by this rule")
    * insert SearchParam("actor", Consent-actor, #reference, #SHOULD, "Resource for the actor or group - by role")
    * insert SearchParam("category", Consent-category, #token, #SHOULD, "Classification of the consent statement - for indexing/retrieval")
    * insert SearchParam("purpose", Consent-purpose, #token, #SHOULD, "Context of activities covered by this rule")
    * insert SearchParam("security-label", Consent-security-label, #token, #SHOULD, "Security Labels that define affected resources")
    * insert SearchParam("scope", Consent-scope, #token, #SHOULD, "Which of the four areas this resource covers -  extensible")
    * insert SearchParam("status", Consent-status, #token, #SHOULD, "draft;  proposed active rejected inactive or entered-in-error")

//======================================================
// Verification
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHOULD
    * type = #VerificationResult
    * insert SupportedProfile(NdhVerification, #SHOULD)
    * documentation = "Verification Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#read, #SHOULD, "Read the current state of the resource")
    * insert Interaction(#search-type, #SHOULD, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#vread, #SHOULD, "Read the state of specific version of the resource")
    * insert Interaction(#history-instance, #SHOULD, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHOULD, "Retrieve the history of the resource type")
    * versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local
 
    * insert SearchInclude("VerificationResult:target", #SHOULD)
    * insert SearchInclude("VerificationResult:attestation-who", #SHOULD)
    //* insert SearchInclude("VerificationResult:attestation-onbehalfof", #SHALL)
    //* insert SearchInclude("VerificationResult:validator-organization", #SHALL)

    //* insert SearchParamNdh("attestation-communication-method", verificationresult-attestation-communication-method, #token, #SHALL, "VerificationResult attestation communication-method")
    //* insert SearchParamNdh("attestation-onbehalfof", verificationresult-attestation-onbehalfof, #reference, #SHALL, "VerificationResult attestation onbehalfof")
    * insert SearchParamNdh("attestation-who", verificationresult-attestation-who, #reference, #SHOULD, "VerificationResult attestation who")
    //* insert SearchParamNdh("primarysource-validation-date", verificationresult-primarysource-validation-date, #date, #SHALL, "VerificationResult primarysource validation-date")
    * insert SearchParamNdh("primarysource-validation-status", verificationresult-primarysource-validation-status, #token, #SHOULD, "VerificationResult primarysource validation-status")
    * insert SearchParamNdh("primarysource-type", verificationresult-primarysource-type, #token, #SHOULD, "VerificationResult primarysource type")
    //* insert SearchParamNdh("primarysource-who", verificationresult-primarysource-who, #reference, #SHALL, "VerificationResult primarysource who")
    //* insert SearchParamNdh("status-date", verificationresult-status-date, #date, #SHALL, "VerificationResult status-date")
    * insert SearchParamNdh("status", verificationresult-status, #token, #SHOULD, "VerificationResult status")
    * insert SearchParamNdh("target", verificationresult-target, #reference, #SHOULD, "VerificationResult target")
    //* insert SearchParamNdh("validator-organization", verificationresult-validator-organization, #reference, #SHALL, "VerificationResult validator organization")
    
    //* insert SearchParam("_query", Resource-query, #token, #SHOULD, "Query search parameter which supports a more sophisticated grammar for searching.")
    * insert SearchParam("_filter", Resource-filter, #special, #SHOULD, "supports a more sophisticated grammar for searching")
    * insert SearchParam("_id", Resource-id, #token, #SHOULD, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHOULD, "Allows filtering for only records that have changed since last query.")