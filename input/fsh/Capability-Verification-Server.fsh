
Instance: capabilityNdhVerificationServer
InstanceOf: CapabilityStatement
Usage: #definition
Title: "NDH Verification Server Capability Statement"
* description = "This Section describes the expected capabilities of the NDH Verification Server which is responsible 
for receiving information from primary source. The complete list of FHIR profiles, RESTful operations, 
and search parameters supported by NDH Verification Servers are defined."
* id = "ndh-verification-server"
* url = "http://hl7.org/fhir/us/ndh/CapabilityStatement/ndh-verification-server"
* name = "NdhVerificationCapabilityStatement"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"></div>"
* text.status = #generated
* insert CapabilityCommon
* rest[+]
  * mode = #server
  * documentation = "NDH Verification Server"

  //* insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
  //* insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHOULD, "Allows filtering for only records that have changed since last query.")

  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Endpoint
    * insert SupportedProfile(NdhNdApiEndpoint, #SHALL)
    * documentation = "Endporint Resource, supportedProfile, interaction, search parameter"

    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#create, #SHALL, "Create a new resource with a server assigned id")
    * insert Interaction(#update, #SHALL, "Update an existing resource by its id or create it if it is new")
    * insert Interaction(#vread, #SHALL, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local
    
    //-include and -revinclude contains the reference in the resource, it does not have to be a defined search parameter
    * insert SearchInclude("Endpoint:organization", #SHALL)
    //* insert SearchRevInclude("CareTeam:endpoint", #SHALL)
   
   //-revinclude Conformance should follow the resourceself conformance and related resource conformance to the lowest level
    //* insert SearchRevInclude("HealthcareService:endpoint", #SHALL)
    //* insert SearchRevInclude("InsurancePlan:endpoint", #SHALL)
    * insert SearchRevInclude("Location:endpoint", #SHOULD)
    * insert SearchRevInclude("Location:endpoint", #SHOULD)
    * insert SearchRevInclude("Organization:endpoint", #SHALL)
    //* insert SearchRevInclude("OrganizationAffiliation:endpoint", #SHALL)
    * insert SearchRevInclude("Practitioner:practitioner-endpoint", #SHALL)
    * insert SearchRevInclude("PractitionerRole:endpoint", #SHOULD)

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
// Location
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHOULD
    * type = #Location
    * insert SupportedProfile(NdhNdApiLocation, #SHOULD)
    * documentation = "Location Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#create, #SHOULD, "Create a new resource with a server assigned id")
    * insert Interaction(#update, #SHOULD, "Update an existing resource by its id or create it if it is new")
    * insert Interaction(#search-type, #SHOULD, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHOULD, "Read the current state of the resource")
    * insert Interaction(#vread, #SHOULD, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHOULD, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHOULD, "Retrieve the history of the resource type")
    * versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchInclude("Location:endpoint",#SHOULD)
    * insert SearchInclude("Location:new-patient-from-network",#SHOULD)
    * insert SearchInclude("Location:organization",#SHOULD)
    * insert SearchInclude("Location:partof",#SHOULD)

    //* insert SearchRevInclude("CareTeam:location",#SHOULD)
    //* insert SearchRevInclude("HealthcareService:coverage-area",#SHOULD)
    //* insert SearchRevInclude("HealthcareService:location",#SHOULD)
    //* insert SearchRevInclude("InsurancePlan:coverage-area", #SHOULD)
    //* insert SearchRevInclude("OrganizationAffiliation:location",#SHOULD)
    * insert SearchRevInclude("PractitionerRole:location",#SHOULD)

    * insert SearchParamNdh("accessibility", location-accessibility, #token, #SHOULD, "Location accessibility")
    * insert SearchParamNdh("contains", location-contains, #special, #SHOULD, "Location contains")
    * insert SearchParamNdh("new-patient-from-network", location-new-patient-from-network, #reference, #SHOULD, "Location new patient from network")
    * insert SearchParamNdh("new-patient", location-new-patient, #token, #SHOULD, "Location new patient")

    //* insert SearchParam("_query", Resource-query, #token, #SHOULD, "Query search parameter which supports a more sophisticated grammar for searching.")
    * insert SearchParam("_filter", Resource-filter, #special, #SHOULD, "supports a more sophisticated grammar for searching")
    * insert SearchParam("_id", Resource-id, #token, #SHOULD, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHOULD, "Allows filtering for only records that have changed since last query.")
    * insert SearchParam("address", Location-address, #string, #SHOULD, "Location address")
    * insert SearchParam("address-city", Location-address-city, #string, #SHOULD, "Location address-city")
    * insert SearchParam("address-country", Location-address-country, #string, #SHOULD, "Location address-country")
    * insert SearchParam("address-postalcode", Location-address-postalcode, #string, #SHOULD, "Location address-postalcode")
    * insert SearchParam("address-state", Location-address-state, #string, #SHOULD, "Location address-state")
    * insert SearchParam("address-use", Location-address-use, #token, #SHOULD, "Location address-use")

    
    * insert SearchParam("endpoint", Location-endpoint, #reference, #SHALL, "Location endpoint")
    * insert SearchParam("identifier", Location-identifier, #token, #SHALL, "Location identifier")
    * insert SearchParam("name", Location-name, #string, #SHALL, "Location name")
    * insert SearchParam("near", Location-near, #special, #SHALL, "Location position")
    * insert SearchParam("partof", Location-partof, #reference, #SHALL, "Location partof")
    
    * insert SearchParam("organization", Location-organization, #reference, #SHOULD, "Location organization")
    * insert SearchParam("type", Location-type, #token, #SHOULD, "Location type")

//======================================================
// Organization
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Organization
    * insert SupportedProfile(NdhNdApiOrganization, #SHALL)
    * insert SupportedProfile(NdhNdApiNetwork, #SHALL)
    * documentation = "Organization Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#create, #SHALL, "Create a new resource with a server assigned id")
    * insert Interaction(#update, #SHALL, "Update an existing resource by its id or create it if it is new")
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

    //* insert SearchRevInclude("CareTeam:organization", #SHALL)

    * insert SearchRevInclude("Endpoint:organization", #SHALL)
    //* insert SearchRevInclude("Endpoint:identifier-assigner", #SHALL)

    //* insert SearchRevInclude("HealthcareService:organization", #SHALL)
    //* insert SearchRevInclude("HealthcareService:new-patient-from-network", #SHALL)
    //* insert SearchRevInclude("HealthcareService:network", #SHALL)
    //* insert SearchRevInclude("HealthcareService:via-intermediary", #SHALL)

    //* insert SearchRevInclude("InsurancePlan:administered-by", #SHALL)
    //* insert SearchRevInclude("InsurancePlan:owned-by", #SHALL)
    //* insert SearchRevInclude("InsurancePlan:coverage-network",#SHALL)
    //* insert SearchRevInclude("InsurancePlan:plan-network",#SHALL)
    //* insert SearchRevInclude("InsurancePlan:network", #SHALL)

    * insert SearchRevInclude("Location:organization", #SHALL)
    * insert SearchRevInclude("Location:new-patient-from-network", #SHOULD)
   //* insert SearchRevInclude("Location:via-intermediary", #SHALL)

    //* insert SearchRevInclude("OrganizationAffiliation:network", #SHALL)
    //* insert SearchRevInclude("OrganizationAffiliation:participating-organization", #SHALL)
    //* insert SearchRevInclude("OrganizationAffiliation:primary-organization", #SHALL)
    //* insert SearchRevInclude("OrganizationAffiliation:via-intermediary", #SHALL)

    //* insert SearchRevInclude("Practitioner:identifier-assigner", #SHALL)
    * insert SearchRevInclude("Practitioner:qualification-issuer", #SHALL)
    //* insert SearchRevInclude("Practitioner:via-intermediary", #SHALL)
    
    * insert SearchRevInclude("PractitionerRole:organization", #SHOULD)
    * insert SearchRevInclude("PractitionerRole:network", #SHOULD)
    * insert SearchRevInclude("PractitionerRole:new-patient-from-network", #SHOULD)
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
// Practitioner
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Practitioner
    * insert SupportedProfile(NdhNdApiPractitioner, #SHALL)
    * documentation = "Practitioner Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#create, #SHALL, "Create a new resource with a server assigned id")
    * insert Interaction(#update, #SHALL, "Update an existing resource by its id or create it if it is new")
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

    * insert SearchRevInclude("PractitionerRole:practitioner", #SHOULD)

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
    * extension[$conf].valueCode = #SHOULD
    * type = #PractitionerRole
    * insert SupportedProfile(NdhNdApiPractitionerRole, #SHOULD)
    * documentation = "PractitionerRole Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#create, #SHOULD, "Create a new resource with a server assigned id")
    * insert Interaction(#update, #SHOULD, "Update an existing resource by its id or create it if it is new")
    * insert Interaction(#read, #SHOULD, "Read the current state of the resource")
    * insert Interaction(#search-type, #SHOULD, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#vread, #SHOULD, "Read the state of specific version of the resource")
    * insert Interaction(#history-instance, #SHOULD, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHOULD, "Retrieve the history of the resource type")
    * versioning = #versioned
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    //* insert SearchInclude("PractitionerRole:endpoint", #SHOULD)
    * insert SearchInclude("PractitionerRole:location", #SHOULD)
    * insert SearchInclude("PractitionerRole:network", #SHOULD)
    * insert SearchInclude("PractitionerRole:new-patient-from-network", #SHOULD)
    * insert SearchInclude("PractitionerRole:organization", #SHOULD)
    * insert SearchInclude("PractitionerRole:practitioner", #SHOULD)
    * insert SearchInclude("PractitionerRole:service", #SHOULD)
    //* insert SearchInclude("PractitionerRole:via-intermediary", #SHOULD)

    //* insert SearchRevInclude("Endpoint:via-intermediary", #SHOULD)
    //* insert SearchRevInclude("HealthcareService:via-intermediary", #SHOULD)
    //* insert SearchRevInclude("Location:via-intermediary", #SHOULD)
    //* insert SearchRevInclude("Organization:via-intermediary", #SHOULD)
    //* insert SearchRevInclude("OrganizationAffiliation:via-intermediary", #SHOULD)
    //* insert SearchRevInclude("Practitioner:via-intermediary", #SHOULD)
    //* insert SearchRevInclude("PractitionerRole:via-intermediary", #SHOULD)

    * insert SearchParamNdh("network", practitionerrole-network, #reference, #SHOULD, "PractitionerRole network")
    * insert SearchParamNdh("new-patient", practitionerrole-new-patient, #token, #SHOULD, "PractitionerRole new-patient")
    * insert SearchParamNdh("new-patient-from-network", practitionerrole-new-patient-from-network, #reference, #SHOULD, "PractitionerRole new-patient from network")
    * insert SearchParamNdh("location", practitionerrole-location, #reference, #SHOULD, "One of the locations at which this practitioner provides care")
    * insert SearchParamNdh("organization", practitionerrole-organization, #reference, #SHOULD, "The identity of the organization the practitioner represents / acts on behalf of")
    //* insert SearchParamNdh("via-intermediary", practitionerrole-via-intermediary, #reference, #SHOULD, "PractitionerRole via intermediary")

    //* insert SearchParam("_query", Resource-query, #token, #SHOULD, "Query search parameter which supports a more sophisticated grammar for searching.")
    * insert SearchParam("_filter", Resource-filter, #special, #SHOULD, "supports a more sophisticated grammar for searching")
    * insert SearchParam("_id", Resource-id, #token, #SHOULD, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHOULD, "Allows filtering for only records that have changed since last query.")
    * insert SearchParam("active", PractitionerRole-active, #token, #SHOULD, "Whether this practitioner's record is in active use")
    //* insert SearchParam("date", PractitionerRole-date, #date, #SHOULD, "The period during which the practitioner is authorized to perform in these role")
    //* insert SearchParam("email", PractitionerRole-email, #token, #SHOULD, "A value in an email contact")
    //* insert SearchParam("endpoint", PractitionerRole-endpoint, #reference, #SHOULD, "Technical endpoints providing access to services operated for the practitioner with this role")
    * insert SearchParam("identifier", PractitionerRole-identifier, #token, #SHOULD, "A practitioner's Identifier")
    //* insert SearchParam("location", PractitionerRole-location, #reference, #SHOULD, "One of the locations at which this practitioner provides care")
    //* insert SearchParam("organization", PractitionerRole-organization, #reference, #SHOULD, "The identity of the organization the practitioner represents / acts on behalf of")
    //* insert SearchParam("phone", PractitionerRole-phone, #token, #SHOULD, "A value in a phone contact")
    * insert SearchParam("practitioner", PractitionerRole-practitioner, #reference, #SHOULD, "Practitioner that is able to provide the defined services for the organization")
    * insert SearchParam("role", PractitionerRole-role, #token, #SHOULD, "The practitioner can perform this role at for the organization")
    * insert SearchParam("service", PractitionerRole-service, #reference, #SHOULD, "The list of healthcare services that this worker provides for this role's Organization/Location")
    * insert SearchParam("specialty", PractitionerRole-specialty, #token, #SHOULD, "The practitioner has this specialty at an organization")
