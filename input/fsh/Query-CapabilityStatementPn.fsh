/*
Instance: capabilityWdsPayerProviderNetworkQueryServer
InstanceOf: CapabilityStatement
Usage: #definition
Title: "Workflow Directory Server Payer Provider Network Query Capability Statement"

* id = "wds-payer-provider-network-query-server"
* name = "WdsPayerProviderNetworkQueryCapabilityStatement"
* url = "http://hl7.org/fhir/us/ndh/CapabilityStatement/wds-payer-provider-network-query-server"
* description = "This Section describes the expected capabilities of the Distributed Workflow Directory Server which is responsible 
for providing responses to the queries submitted by the Distributed Workflow Directory Requestors. The complete list of FHIR profiles, RESTful operations, 
and search parameters supported by Distributed Workflow Directory Servers are defined. Distributed Workflow Directory Clients have the option of choosing from this list to access necessary data 
based on their local use cases and other contextual requirements."
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"></div>"
* text.status = #generated
* insert CapabilityCommon
* rest[+]
  * mode = #server
  * documentation = "Workflow Directory Payer Provider Network Query Server"
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Endpoint
    * insert SupportedProfile(NdhPnLdApiEndpoint, #SHALL)
    * documentation = "Endporint Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#search-type, #SHOULD, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#vread, #SHALL, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local
    
    * insert SearchInclude("Endpoint:organization", #SHALL)
   
    * insert SearchRevInclude("HealthcareService:endpoint", #SHALL)
    * insert SearchRevInclude("Location:endpoint", #SHALL)
    * insert SearchRevInclude("Organization:endpoint", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:endpoint", #SHALL)
    * insert SearchRevInclude("Practitioner:practitioner-endpoint", #SHALL)
    * insert SearchRevInclude("PractitionerRole:endpoint", #SHALL)

    * insert SearchParamNdh("usecase-type", endpoint-usecase-type, #token, #SHALL,"Endpoint usecase type")
    * insert SearchParamNdh("nonfhir-usecase-type", endpoint-nonfhir-usecase-type, #token, #SHALL,"Endpoint nonfhir usecase type")
    * insert SearchParamNdh("trust-framework-type", endpoint-trust-framework-type, #token, #SHALL,"Endpoint trust framework type")
    * insert SearchParamNdh("dynamic-registration-trust-profile", endpoint-dynamic-registration-trust-profile, #token, #SHALL,"Endpoint dynamic registration trust profile")
    * insert SearchParamNdh("access-control-mechanism", endpoint-access-control-mechanism, #token, #SHALL,"Endpoint access control mechanism")
    * insert SearchParamNdh("connection-type-version", endpoint-connection-type-version, #token, #SHALL,"Endpoint connection type version")
    * insert SearchParamNdh("ihe-connection-type", endpoint-ihe-connection-type, #token, #SHALL,"Endpoint ihe connection type")
    * insert SearchParamNdh("verification-status", endpoint-verification-status, #token, #SHALL,"Endpoint verification status")
    * insert SearchParam("connection-type", Endpoint-connection-type, #token, #SHALL,"Connection type")
    * insert SearchParam("identifier", Endpoint-identifier, #token, #SHALL,"Endpoint identifier")
    * insert SearchParam("organization", Endpoint-organization, #reference, #SHALL,"Organization that manages the Endpoint")
    * insert SearchParam("status", Endpoint-status, #token, #SHALL,"Endpoint status")
    * insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHALL, "Allows filtering for only records that have changed since last query.")

//======================================================
// HealthcareService
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #HealthcareService
    * insert SupportedProfile(NdhPnLdApiHealthcareService, #SHALL)
    * documentation = "HealthcareService Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#vread, #SHALL, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned
    //* readHistory = #true
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchInclude("HealthcareService:coverage-area", #SHALL)
    * insert SearchInclude("HealthcareService:endpoint", #SHALL)
    * insert SearchInclude("HealthcareService:location", #SHALL)
    * insert SearchInclude("HealthcareService:new-patient-from-network", #SHALL)
    * insert SearchInclude("HealthcareService:organization", #SHALL)

    * insert SearchRevInclude("CareTeam:service", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:service", #SHALL)
    * insert SearchRevInclude("PractitionerRole:service", #SHALL)

    * insert SearchParamNdh("new-patient-from-network", healthcareservice-new-patient-from-network, #reference, #SHALL,"New patient from network")
    * insert SearchParamNdh("eligibility", healthcareservice-eligibility, #token, #SHALL,"Eligibility")
    * insert SearchParamNdh("new-patient", healthcareservice-new-patient, #token, #SHALL,"New patient")
    * insert SearchParamNdh("verification-status", healthcareservice-verification-status, #token, #SHALL,"Verification status")
    * insert SearchParamNdh("location", healthcareservice-location, #reference, #SHALL,"The location of the Healthcare Service")
    * insert SearchParamNdh("organization", healthcareservice-organization, #reference, #SHALL,"The organization that provides this Healthcare Service")

    * insert SearchParam("active", HealthcareService-active, #token, #SHALL,"Whether this HealthcareService record is in active use")
    * insert SearchParam("coverage-area", HealthcareService-coverage-area, #reference, #SHALL,"Location service is inteded for/available to")
    * insert SearchParam("endpoint", HealthcareService-endpoint, #reference, #SHALL,"Technical endpoints providing access to services operated for the location")
    * insert SearchParam("identifier", HealthcareService-identifier, #token, #SHALL,"External identifiers for this item")
    //* insert SearchParam("location", HealthcareService-location, #reference, #SHALL,"The location of the Healthcare Service")
    * insert SearchParam("name", HealthcareService-name, #string, #SHALL,"A portion of the Healthcare service name")
    //* insert SearchParam("organization", HealthcareService-organization, #reference, #SHALL,"The organization that provides this Healthcare Service")
    * insert SearchParam("program", HealthcareService-program, #token, #SHALL,"One of the Program Names that categorize the service")
    * insert SearchParam("service-category", HealthcareService-service-category, #token, #SHALL,"Service Category of the Healthcare Service")
    * insert SearchParam("service-type", HealthcareService-service-type, #token, #SHALL,"The type of service provided by this healthcare service")
    * insert SearchParam("specialty", HealthcareService-specialty, #token, #SHALL,"Specialties handled by the HealthcareService")
    * insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHALL, "Allows filtering for only records that have changed since last query.")
    
//======================================================
// InsurancePlan
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #InsurancePlan
    * insert SupportedProfile(NdhPnLdApiInsurancePlan, #SHALL)
    * documentation = "InsurancePlan Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#vread, #SHALL, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local
    * insert SearchInclude("InsurancePlan:administered-by",#SHALL)
    * insert SearchInclude("InsurancePlan:endpoint",#SHALL)
    * insert SearchInclude("InsurancePlan:owned-by",#SHALL)
    * insert SearchInclude("InsurancePlan:coverage-area",#SHALL)
    * insert SearchInclude("InsurancePlan:coverage-network",#SHALL)
    //* insert SearchInclude("InsurancePlan:plan-coverage-area", #SHALL)
    * insert SearchInclude("InsurancePlan:plan-network", #SHALL)
    * insert SearchInclude("InsurancePlan:network", #SHALL)
  
    * insert SearchParamNdh("coverage-area", insuranceplan-coverage-area, #reference, #SHALL, "InsurancePlan coverage area")
    * insert SearchParamNdh("coverage-benefit-type", insuranceplan-coverage-benefit-type, #token, #SHALL, "InsurancePlan coverage benefit type" )
    * insert SearchParamNdh("coverage-type", insuranceplan-coverage-type, #token, #SHALL, "InsurancePlan coverage type")
    * insert SearchParamNdh("coverage-network", insuranceplan-coverage-network, #reference, #SHALL, "InsurancePlan coverage network")
    * insert SearchParamNdh("network", insuranceplan-network, #reference, #SHALL, "InsurancePlan network")
    * insert SearchParamNdh("plan-network", insuranceplan-plan-network, #reference, #SHALL, "InsurancePlan plan network")
    * insert SearchParamNdh("plan-type", insuranceplan-plan-type, #token, #SHALL, "InsurancePlan plan type")
    * insert SearchParamNdh("verification-status", insuranceplan-verification-status, #token, #SHALL, "Verification status")

    * insert SearchParam("address", InsurancePlan-address, #string, #SHALL, "InsurancePlan contact address")
    * insert SearchParam("address-city", InsurancePlan-address-city, #string, #SHALL, "InsurancePlan contact address-city")
    * insert SearchParam("address-country", InsurancePlan-address-country, #string, #SHALL, "InsurancePlan contact address-country")
    * insert SearchParam("address-postalcode", InsurancePlan-address-postalcode, #string, #SHALL, "InsurancePlan contact address-postalcode")
    * insert SearchParam("address-state", InsurancePlan-address-state, #string, #SHALL, "InsurancePlan contact address-state")
    * insert SearchParam("administered-by", InsurancePlan-administered-by, #reference, #SHALL, "InsurancePlan administered by")
    * insert SearchParam("endpoint", InsurancePlan-endpoint, #reference, #SHALL, "InsurancePlan endpoint")
    * insert SearchParam("identifier", InsurancePlan-identifier, #token, #SHALL, "InsurancePlan identifier")
    * insert SearchParam("name", InsurancePlan-name, #string, #SHALL, "InsurancePlan name")
    * insert SearchParam("owned-by", InsurancePlan-owned-by, #reference, #SHALL, "InsurancePlan owned by")
    * insert SearchParam("status", InsurancePlan-status, #token, #SHALL, "InsurancePlan status")
    * insert SearchParam("type", InsurancePlan-type, #token, #SHALL, "InsurancePlan type")
    * insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHALL, "Allows filtering for only records that have changed since last query.")

//======================================================
// Location
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Location
    * insert SupportedProfile(NdhPnLdApiLocation, #SHALL)
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

    * insert SearchRevInclude("CareTeam:location",#SHALL)
    * insert SearchRevInclude("HealthcareService:coverage-area",#SHALL)
    * insert SearchRevInclude("HealthcareService:location",#SHALL)
    * insert SearchRevInclude("InsurancePlan:coverage-area", #SHALL)
    * insert SearchRevInclude("Location:partof",#SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:location",#SHALL)
    * insert SearchRevInclude("PractitionerRole:location",#SHALL)

    * insert SearchParamNdh("accessibility", location-accessibility, #token, #SHALL, "Location accessibility")
    * insert SearchParamNdh("contains", location-contains, #special, #SHALL, "Location contains")
    * insert SearchParamNdh("new-patient-from-network", location-new-patient-from-network, #reference, #SHALL, "Location new patient from network")
    * insert SearchParamNdh("new-patient", location-new-patient, #token, #SHALL, "Location new patient")
    * insert SearchParamNdh("verification-status", location-verification-status, #token, #SHALL, "Verification status")

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
    * insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHALL, "Allows filtering for only records that have changed since last query.")

//======================================================
// Organization
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Organization
    * insert SupportedProfile(NdhPnLdApiOrganization, #SHALL)
    * insert SupportedProfile(NdhPnLdApiNetwork, #SHALL)
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

    * insert SearchRevInclude("CareTeam:organization", #SHALL)
    * insert SearchRevInclude("Endpoint:organization", #SHALL)
    //* insert SearchRevInclude("Endpoint:endpoint-identifier-assigner", #SHALL)
    * insert SearchRevInclude("HealthcareService:organization", #SHALL)
    * insert SearchRevInclude("HealthcareService:new-patient-from-network", #SHALL)
    //* insert SearchRevInclude("HealthcareService:via-intermediary", #SHALL)
    * insert SearchRevInclude("InsurancePlan:administered-by", #SHALL)
    * insert SearchRevInclude("InsurancePlan:owned-by", #SHALL)
    * insert SearchRevInclude("InsurancePlan:coverage-network",#SHALL)
    * insert SearchRevInclude("InsurancePlan:plan-network",#SHALL)
    * insert SearchRevInclude("InsurancePlan:network", #SHALL)
    * insert SearchRevInclude("Location:organization", #SHALL)
    //* insert SearchRevInclude("Location:via-intermediary", #SHALL)
    * insert SearchRevInclude("Location:new-patient-from-network", #SHALL)
    //* insert SearchRevInclude("Organization:identifier-assigner", #SHALL)
    //* insert SearchRevInclude("Organization:via-intermediary", #SHALL)
    * insert SearchRevInclude("Organization:partof", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:network", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:participating-organization", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:primary-organization", #SHALL)
    //* insert SearchRevInclude("OrganizationAffiliation:via-intermediary", #SHALL)
    //* insert SearchRevInclude("Practitioner:practitioner-identifier-assigner", #SHALL)
    * insert SearchRevInclude("Practitioner:qualification-issuer", #SHALL)
    //* insert SearchRevInclude("Practitioner:via-intermediary", #SHALL)
    * insert SearchRevInclude("PractitionerRole:organization", #SHALL)
    * insert SearchRevInclude("PractitionerRole:network", #SHALL)
    * insert SearchRevInclude("PractitionerRole:new-patient-from-network", #SHALL)
    * insert SearchRevInclude("VerificationResult:validator-organization", #SHALL)
    * insert SearchRevInclude( "VerificationResult:attestation-who", #SHALL)

    //* insert SearchParamNdh("identifier-assigner", organization-identifier-assigner, #reference, #SHALL, "Organization identifier assigner")
    //* insert SearchParamNdh("via-intermediary", organization-via-intermediary, #reference, #SHALL, "Organization via intermediary")
    * insert SearchParamNdh("coverage-area", network-coverage-area, #reference, #SHALL, "network organization type is needed for searching network coverage area")
    * insert SearchParamNdh("verification-status", organization-verification-status, #token, #SHALL, "Verification status")

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
    * insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHALL, "Allows filtering for only records that have changed since last query.")
  
//======================================================
// OrganizationAffiliation
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #OrganizationAffiliation
    * insert SupportedProfile(NdhPnLdApiOrganizationAffiliation, #SHALL)
    * documentation = "OrganizationAffiliation Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#vread, #SHALL, "Read the state of specific version of the resource")
    * versioning = #versioned
    //The server supports and populates Literal references (i.e. using Reference.reference) where they are known 
    //(this code does not guarantee that all references are literal; see 'enforced').
    * referencePolicy[+] = #literal
    //The server does not support references that point to other servers.
    * referencePolicy[+] = #local

    * insert SearchInclude("OrganizationAffiliation:network", #SHALL)
    * insert SearchInclude("OrganizationAffiliation:participating-organization", #SHALL)
    * insert SearchInclude("OrganizationAffiliation:primary-organization", #SHALL)
    //* insert SearchInclude("OrganizationAffiliation:via-intermediary", #SHALL)

    //* insert SearchRevInclude("Endpoint:via-intermediary", #SHALL)
    //* insert SearchRevInclude("HealthcareService:via-intermediary", #SHALL)
    //* insert SearchRevInclude("Location:via-intermediary", #SHALL)
    //* insert SearchRevInclude("Organization:via-intermediary", #SHALL)
    //* insert SearchRevInclude("Organization:via-intermediary", #SHALL)
    //* insert SearchRevInclude("OrganizationAffiliation:via-intermediary",#SHALL)
    //* insert SearchRevInclude("Practitioner:via-intermediary", #SHALL)
    //* insert SearchRevInclude("PractitionerRole:via-intermediary", #SHALL)

    //* insert SearchParamNdh("via-intermediary", organizationaffiliation-via-intermediary, #reference, #SHALL, "OrganizationAffiliation via intermediary")
    * insert SearchParamNdh("location", organizationaffiliation-location, #reference, #SHALL, "OrganizationAffiliation location")
    * insert SearchParamNdh("participating-organization", organizationaffiliation-participating-organization, #reference, #SHALL, "OrganizationAffiliation participating-organization")
    * insert SearchParamNdh("primary-organization", organizationaffiliation-primary-organization, #reference, #SHALL, "OrganizationAffiliation primary-organization")
    * insert SearchParamNdh("verification-status", organizationaffiliation-verification-status, #token, #SHALL, "Verification status")
    
    * insert SearchParam("endpoint",OrganizationAffiliation-endpoint, #reference, #SHALL, "OrganizationAffiliation endpoint")
    * insert SearchParam("identifier", OrganizationAffiliation-identifier, #token, #SHALL, "OrganizationAffiliation identifier")
    //* insert SearchParam("location", OrganizationAffiliation-location, #reference, #SHALL, "OrganizationAffiliation location")
    * insert SearchParam("network", OrganizationAffiliation-network, #reference, #SHALL, "OrganizationAffiliation network")
    //* insert SearchParam("participating-organization", OrganizationAffiliation-participating-organization, #reference, #SHALL, "OrganizationAffiliation participating-organization")
    //* insert SearchParam("primary-organization", OrganizationAffiliation-primary-organization, #reference, #SHALL, "OrganizationAffiliation primary-organization")
    * insert SearchParam("role", OrganizationAffiliation-role, #token, #SHALL, "OrganizationAffiliation role")
    * insert SearchParam("service", OrganizationAffiliation-service, #reference, #SHALL, "OrganizationAffiliation service")
    * insert SearchParam("specialty", OrganizationAffiliation-specialty, #token, #SHALL, "OrganizationAffiliation specialty")
    * insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHALL, "Allows filtering for only records that have changed since last query.")

//======================================================
// Practitioner
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Practitioner
    * insert SupportedProfile(NdhPnLdApiPractitioner, #SHALL)
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
    //* insert SearchInclude("Practitioner:identifier-assigner", #SHALL)
    * insert SearchInclude("Practitioner:qualification-issuer", #SHALL)
    //* insert SearchInclude("Practitioner:via-intermediary", #SHALL)
    //* insert SearchInclude("Practitioner:verification-attestation-who", #SHALL)

    * insert SearchRevInclude("PractitionerRole:practitioner", #SHALL)

    * insert SearchParamNdh("endpoint", practitioner-endpoint, #reference, #SHALL, "Practitioner endpoint")
    //* insert SearchParamNdh("identifier-assigner", practitioner-identifier-assigner, #reference, #SHALL, "Practitioner identifier assigner")
    * insert SearchParamNdh("qualification-issuer", practitioner-qualification-issuer, #reference, #SHALL, "Practitioner qualification issuer")
    * insert SearchParamNdh("qualification-code", practitioner-qualification-code, #token, #SHALL, "Practitioner qualification code")
    * insert SearchParamNdh("verification-status", practitioner-verification-status, #token, #SHALL, "Verification status")
    //* insert SearchParamNdh("qualification-period", practitioner-qualification-period, #date, #SHALL, "Practitioner qualification period")
    //* insert SearchParamNdh("qualification-wherevalid-code", practitioner-qualification-wherevalid-code, #token, #SHALL, "Practitioner qualification wherevalid code")
    //* insert SearchParamNdh("via-intermediary", practitioner-via-intermediary, #reference, #SHALL, "Practitioner via intermediary")

    * insert SearchParam("active", Practitioner-active, #token, #SHALL, "Whether this practitioner's record is in active use")
    //* insert SearchParam("address", Practitioner-address, #string, #SHALL, "An address in any kind of address/part")
    //* insert SearchParam("address-city", Practitioner-address-city, #string, #SHALL, "A city specified in an address")
    //* insert SearchParam("address-country", Practitioner-address-country, #string, #SHALL, "A country specified in an address")
    //* insert SearchParam("address-postalcode", Practitioner-address-postalcode, #string, #SHALL, "A postalCode specified in an address")
    //* insert SearchParam("address-state", Practitioner-address-state, #string, #SHALL, "A state specified in an address")
    //* insert SearchParam("address-use", Practitioner-address-use, #token, #SHALL, "A use code specified in an address")
    * insert SearchParam("name", Practitioner-name, #string, #SHALL, "A portion of either family or given name of the practitioner")
    //* insert SearchParam("family", Practitioner-family, #string, #SHALL, "A portion of the family name")
    //* insert SearchParam("given", Practitioner-given, #string, #SHALL, "A portion of the given name")
    //* insert SearchParam("gender", Practitioner-individual-gender, #string, #SHALL, "Practitioner gender")
    * insert SearchParam("identifier", Practitioner-identifier, #token, #SHALL, "A practitioner's Identifier")
    * insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHALL, "Allows filtering for only records that have changed since last query.")

//======================================================
// PractitionerRole
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #PractitionerRole
    * insert SupportedProfile(NdhPnLdApiPractitionerRole, #SHALL)
    * documentation = "PractitionerRole Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#vread, #SHALL, "Read the state of specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchInclude("PractitionerRole:endpoint", #SHALL)
    * insert SearchInclude("PractitionerRole:location", #SHALL)
    * insert SearchInclude("PractitionerRole:network", #SHALL)
    * insert SearchInclude("PractitionerRole:new-patient-from-network", #SHALL)
    * insert SearchInclude("PractitionerRole:organization", #SHALL)
    * insert SearchInclude("PractitionerRole:practitioner", #SHALL)
    * insert SearchInclude("PractitionerRole:service", #SHALL)
    //* insert SearchInclude("PractitionerRole:via-intermediary", #SHALL)

    //* insert SearchRevInclude("Endpoint:via-intermediary", #SHALL)
    //* insert SearchRevInclude("HealthcareService:via-intermediary", #SHALL)
    //* insert SearchRevInclude("Location:via-intermediary", #SHALL)
    //* insert SearchRevInclude("Organization:via-intermediary", #SHALL)
    //* insert SearchRevInclude("OrganizationAffiliation:via-intermediary", #SHALL)
    //* insert SearchRevInclude("Practitioner:via-intermediary", #SHALL)
    //* insert SearchRevInclude("PractitionerRole:via-intermediary", #SHALL)

    * insert SearchParamNdh("network", practitionerrole-network, #reference, #SHALL, "PractitionerRole network")
    * insert SearchParamNdh("new-patient", practitionerrole-new-patient, #token, #SHALL, "PractitionerRole new-patient")
    * insert SearchParamNdh("new-patient-from-network", practitionerrole-new-patient-from-network, #reference, #SHALL, "PractitionerRole new-patient from network")
    * insert SearchParamNdh("location", practitionerrole-location, #reference, #SHALL, "One of the locations at which this practitioner provides care")
    * insert SearchParamNdh("organization", practitionerrole-organization, #reference, #SHALL, "The identity of the organization the practitioner represents / acts on behalf of")
    * insert SearchParamNdh("verification-status", practitionerrole-verification-status, #token, #SHALL, "Verification status")

    //* insert SearchParamNdh("via-intermediary", practitionerrole-via-intermediary, #reference, #SHALL, "PractitionerRole via intermediary")

    * insert SearchParam("active", PractitionerRole-active, #token, #SHALL, "Whether this practitioner's record is in active use")
    //* insert SearchParam("date", PractitionerRole-date, #date, #SHALL, "The period during which the practitioner is authorized to perform in these role")
    //* insert SearchParam("email", PractitionerRole-email, #token, #SHALL, "A value in an email contact")
    * insert SearchParam("endpoint", PractitionerRole-endpoint, #reference, #SHALL, "Technical endpoints providing access to services operated for the practitioner with this role")
    * insert SearchParam("identifier", PractitionerRole-identifier, #token, #SHALL, "A practitioner's Identifier")
    //* insert SearchParam("location", PractitionerRole-location, #reference, #SHALL, "One of the locations at which this practitioner provides care")
    //* insert SearchParam("organization", PractitionerRole-organization, #reference, #SHALL, "The identity of the organization the practitioner represents / acts on behalf of")
    //* insert SearchParam("phone", PractitionerRole-phone, #token, #SHALL, "A value in a phone contact")
    * insert SearchParam("practitioner", PractitionerRole-practitioner, #reference, #SHALL, "Practitioner that is able to provide the defined services for the organization")
    * insert SearchParam("role", PractitionerRole-role, #token, #SHALL, "The practitioner can perform this role at for the organization")
    * insert SearchParam("service", PractitionerRole-service, #reference, #SHALL, "The list of healthcare services that this worker provides for this role's Organization/Location")
    * insert SearchParam("specialty", PractitionerRole-specialty, #token, #SHALL, "The practitioner has this specialty at an organization")
    * insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHALL, "Allows filtering for only records that have changed since last query.")

*/