
Instance: capabilityWdsProviderExpandedQueryServer
InstanceOf: CapabilityStatement
Usage: #definition
Title: "Workflow Directory Server Provider Expanded Query Capability Statement"
* description = "This Section describes the expected capabilities of the Distributed Workflow Directory Server which is responsible 
for providing responses to the queries submitted by the Distributed Workflow Directory Requestors. The complete list of FHIR profiles, RESTful operations, 
and search parameters supported by Distributed Workflow Directory Servers are defined. Distributed Workflow Directory Clients have the option of choosing 
from this list to access necessary data based on their local use cases and other contextual requirements."
* id = "wds-provider-expanded-query-server"
* url = "http://hl7.org/fhir/us/ndh/CapabilityStatement/wds-provider-expanded-query-server"
* name = "WdsProviderExpandedQueryCapabilityStatement"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"></div>"
* text.status = #generated
* insert CapabilityCommon
* rest[+]
  * mode = #server
  * documentation = "Workflow Directory Provider Expanded Query Server"
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Endpoint
    * insert SupportedProfile(NdhEndpoint, #SHALL)
    * documentation = "Endporint Resource, supportedProfile, interaction, search parameter"

    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#vread, #SHALL, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned-update
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local
    
    //-include and -revinclude contains the reference in the resource, it does not have to be a defined search parameter
    * insert SearchInclude("Endpoint:organization", #SHALL)
    * insert SearchRevInclude("CareTeam:careteam-endpoint", #SHALL)
   
   //-revinclude Conformance SHALL follow the resourceself conformance and related resource conformance to the lowest level
    * insert SearchRevInclude("HealthcareService:endpoint", #MAY)
    * insert SearchRevInclude("InsurancePlan:endpoint", #MAY)
    * insert SearchRevInclude("Location:endpoint", #SHALL)
    * insert SearchRevInclude("Location:endpoint", #SHALL)
    * insert SearchRevInclude("Organization:endpoint", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:endpoint", #MAY)
    * insert SearchRevInclude("Practitioner:practitioner-endpoint", #SHALL)
    * insert SearchRevInclude("PractitionerRole:endpoint", #SHALL)

    * insert SearchParamNdh("endpoint-usecase-type", endpoint-usecase-type, #token, #SHALL,"Endpoint usecase type")
    * insert SearchParamNdh("endpoint-nonfhir-usecase-type", endpoint-nonfhir-usecase-type, #token, #SHALL,"Endpoint nonfhir usecase type")
    * insert SearchParamNdh("endpoint-trust-framework-type", endpoint-trust-framework-type, #token, #SHALL,"Endpoint trust framework type")
    * insert SearchParamNdh("endpoint-dynamic-registration-trust-profile", endpoint-dynamic-registration-trust-profile, #token, #SHALL,"Endpoint dynamic registration trust profile")
    * insert SearchParamNdh("endpoint-access-control-mechanism", endpoint-access-control-mechanism, #token, #SHALL,"Endpoint access control mechanism")
    * insert SearchParamNdh("endpoint-connection-type-version", endpoint-connection-type-version, #token, #SHALL,"Endpoint connection type version")
    * insert SearchParamNdh("endpoint-ihe-connection-type", endpoint-ihe-connection-type, #token, #SHALL,"Endpoint ihe connection type")
    * insert SearchParamNdh("endpoint-verification-status", endpoint-verification-status, #token, #SHALL,"Endpoint verification status")

    * insert SearchParam("connection-type", Endpoint-connection-type, #token, #SHALL,"Connection type")
    * insert SearchParam("identifier", Endpoint-identifier, #token, #SHALL,"Endpoint identifier")
    * insert SearchParam("organization", Endpoint-organization, #reference, #SHALL,"Organization that manages the Endpoint")
    * insert SearchParam("status", Endpoint-status, #token, #SHALL,"Endpoint status")
    * insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHALL, "Allows filtering for only records that have changed since last query.")

//======================================================
// CareTeam
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #MAY
    * type = #CareTeam
    * insert SupportedProfile(NdhCareTeam, #MAY)
    * documentation = "CareTeam Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#search-type, #MAY, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #MAY, "Read the current state of the resource")
    * insert Interaction(#vread, #MAY, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #MAY, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #MAY, "Retrieve the history of the resource type")
    * versioning = #versioned-update
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchInclude("CareTeam:careteam-location", #MAY)
    * insert SearchInclude("CareTeam:careteam-organization", #MAY)
    * insert SearchInclude("CareTeam:careteam-service", #MAY)

    * insert SearchParamNdh("careteam-location", careteam-location, #reference, #MAY,"Location of the CareTeam")
    * insert SearchParamNdh("careteam-organization", careteam-organization, #reference, #MAY,"Organization of the CareTeam")
    * insert SearchParamNdh("careteam-service", careteam-service, #reference, #MAY,"Service of the CareTeam")
    * insert SearchParamNdh("alias", careteam-alias, #string, #MAY,"Name of the CareTeam")
    * insert SearchParamNdh("careteam-verification-status", careteam-verification-status, #token, #MAY,"Verification status of the CareTeam")

    * insert SearchParam("category", CareTeam-category, #token, #MAY,"Type of team")
    //* insert SearchParam("identifier", CareTeam-identifier, #token, #MAY,"External Ids for this team")
    * insert SearchParam("participant", CareTeam-participant, #reference, #MAY,"Who is involved")
    * insert SearchParam("status", CareTeam-status, #token, #MAY,"Status of the CareTeam")
    * insert SearchParam("_id", Resource-id, #token, #MAY, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #MAY, "Allows filtering for only records that have changed since last query.")


//======================================================
// HealthcareService
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #HealthcareService
    * insert SupportedProfile(NdhHealthcareService, #SHALL)
    * documentation = "HealthcareService Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#vread, #SHALL, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned-update
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchInclude("HealthcareService:coverage-area", #SHALL)
    * insert SearchInclude("HealthcareService:endpoint", #SHALL)
    * insert SearchInclude("HealthcareService:location", #SHALL)
    * insert SearchInclude("HealthcareService:healthcareservice-new-patient-from-network", #SHALL)
    * insert SearchInclude("HealthcareService:organization", #SHALL)

    * insert SearchRevInclude("CareTeam:careteam-service", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:service", #SHALL)
    * insert SearchRevInclude("PractitionerRole:service", #SHALL)

    * insert SearchParamNdh("healthcareservice-new-patient-from-network", healthcareservice-new-patient-from-network, #reference, #SHALL,"New patient from network")
    * insert SearchParamNdh("healthcareservice-eligibility", healthcareservice-eligibility, #token, #SHALL,"Eligibility")
    * insert SearchParamNdh("healthcareservice-new-patient", healthcareservice-new-patient, #token, #SHALL,"New patient")
    * insert SearchParamNdh("healthcareservice-verification-status", healthcareservice-verification-status, #token, #SHALL,"Verification status")
    * insert SearchParam("active", HealthcareService-active, #token, #SHALL,"Whether this HealthcareService record is in active use")
    * insert SearchParam("coverage-area", HealthcareService-coverage-area, #reference, #SHALL,"Location service is inteded for/available to")
    * insert SearchParam("endpoint", HealthcareService-endpoint, #reference, #SHALL,"Technical endpoints providing access to services operated for the location")
    * insert SearchParam("identifier", HealthcareService-identifier, #token, #SHALL,"External identifiers for this item")
    * insert SearchParam("location", HealthcareService-location, #reference, #SHALL,"The location of the Healthcare Service")
    * insert SearchParam("name", HealthcareService-name, #string, #SHALL,"A portion of the Healthcare service name")
    * insert SearchParam("organization", HealthcareService-organization, #reference, #SHALL,"The organization that provides this Healthcare Service")
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
    * extension[$conf].valueCode = #SHOULD
    * type = #InsurancePlan
    * insert SupportedProfile(NdhInsurancePlan, #SHOULD)
    * documentation = "InsurancePlan Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#search-type, #SHOULD, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHOULD, "Read the current state of the resource")
    * insert Interaction(#vread, #SHOULD, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHOULD, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHOULD, "Retrieve the history of the resource type")
    * versioning = #versioned-update
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchInclude("InsurancePlan:administered-by",#SHOULD)
    * insert SearchInclude("InsurancePlan:endpoint",#SHOULD)
    * insert SearchInclude("InsurancePlan:owned-by",#SHOULD)
    * insert SearchInclude("InsurancePlan:insuranceplan-coverage-area",#SHOULD)
    * insert SearchInclude("InsurancePlan:insuranceplan-coverage-network",#SHOULD)
    * insert SearchInclude("InsurancePlan:insuranceplan-plan-coverage-area", #SHOULD)
    * insert SearchInclude("InsurancePlan:insuranceplan-plan-network", #SHOULD)
    * insert SearchInclude("InsurancePlan:insuranceplan-network", #SHOULD)
  
    * insert SearchParamNdh("insuranceplan-coverage-area", insuranceplan-coverage-area, #reference, #SHOULD, "InsurancePlan coverage area")
    * insert SearchParamNdh("insuranceplan-coverage-benefit-type", insuranceplan-coverage-benefit-type, #token, #SHOULD, "InsurancePlan coverage benefit type" )
    * insert SearchParamNdh("insuranceplan-coverage-type", insuranceplan-coverage-type, #token, #SHOULD, "InsurancePlan coverage type")
    * insert SearchParamNdh("insuranceplan-coverage-network", insuranceplan-coverage-network, #reference, #SHOULD, "InsurancePlan coverage network")
    * insert SearchParamNdh("insuranceplan-network", insuranceplan-network, #reference, #SHOULD, "InsurancePlan network")
    * insert SearchParamNdh("insuranceplan-plan-network", insuranceplan-plan-network, #reference, #SHOULD, "InsurancePlan plan network")
    * insert SearchParamNdh("insuranceplan-plan-type", insuranceplan-plan-type, #token, #SHOULD, "InsurancePlan plan type")
    * insert SearchParamNdh("insuranceplan-verification-status", insuranceplan-verification-status, #token, #SHOULD, "Verification status")

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
    * insert SearchParam("_id", Resource-id, #token, #SHOULD, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHOULD, "Allows filtering for only records that have changed since last query.")

//======================================================
// Location
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Location
    * insert SupportedProfile(NdhLocation, #SHALL)
    * documentation = "Location Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#vread, #SHALL, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned-update
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchInclude("Location:endpoint",#SHALL)
    * insert SearchInclude("Location:location-new-patient-from-network",#SHALL)
    * insert SearchInclude("Location:organization",#SHALL)
    * insert SearchInclude("Location:partof",#SHALL)

    * insert SearchRevInclude("CareTeam:careteam-location",#SHALL)
    * insert SearchRevInclude("HealthcareService:coverage-area",#SHALL)
    * insert SearchRevInclude("HealthcareService:location",#SHALL)
    * insert SearchRevInclude("InsurancePlan:insuranceplan-coverage-area", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:location",#SHALL)
    * insert SearchRevInclude("PractitionerRole:location",#SHALL)

    * insert SearchParamNdh("location-accessibility", location-accessibility, #token, #SHALL, "Location accessibility")
    * insert SearchParamNdh("location-contains", location-contains, #special, #SHALL, "Location contains")
    * insert SearchParamNdh("location-new-patient-from-network", location-new-patient-from-network, #reference, #SHALL, "Location new patient from network")
    * insert SearchParamNdh("location-new-patient", location-new-patient, #token, #SHALL, "Location new patient")

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
    * insert SupportedProfile(NdhOrganization, #SHALL)
    * insert SupportedProfile(NdhNetwork, #SHALL)
    * documentation = "Organization Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#vread, #SHALL, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned-update
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local
    
    * insert SearchInclude("Organization:endpoint",#SHALL)
    //* insert SearchInclude("Organization:organization-identifier-assigner",#SHALL)
    * insert SearchInclude("Organization:partof",#SHALL)
    //* insert SearchInclude("Organization:organization-via-intermediary",#SHALL)

    * insert SearchRevInclude("CareTeam:careteam-organization", #SHALL)
    * insert SearchRevInclude("Endpoint:organization", #SHALL)
    //* insert SearchRevInclude("Endpoint:endpoint-identifier-assigner", #SHALL)
    * insert SearchRevInclude("HealthcareService:organization", #SHALL)
    * insert SearchRevInclude("HealthcareService:healthcareservice-new-patient-from-network", #SHALL)
    //* insert SearchRevInclude("HealthcareService:healthcareservice-via-intermediary", #SHALL)
    * insert SearchRevInclude("InsurancePlan:administered-by", #SHALL)
    * insert SearchRevInclude("InsurancePlan:owned-by", #SHALL)
    * insert SearchRevInclude("InsurancePlan:insuranceplan-coverage-network",#SHALL)
    * insert SearchRevInclude("InsurancePlan:insuranceplan-plan-network",#SHALL)
    * insert SearchRevInclude("InsurancePlan:insuranceplan-network", #SHALL)
    * insert SearchRevInclude("Location:organization", #SHALL)
    //* insert SearchRevInclude("Location:location-via-intermediary", #SHALL)
    * insert SearchRevInclude("Location:location-new-patient-from-network", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:network", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:participating-organization", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:primary-organization", #SHALL)
    //* insert SearchRevInclude("OrganizationAffiliation:organizationaffiliation-via-intermediary", #SHALL)
    //* insert SearchRevInclude("Practitioner:practitioner-identifier-assigner", #SHALL)
    * insert SearchRevInclude("Practitioner:practitioner-qualification-issuer", #SHALL)
    //* insert SearchRevInclude("Practitioner:practitioner-via-intermediary", #SHALL)
    * insert SearchRevInclude("PractitionerRole:organization", #SHALL)
    * insert SearchRevInclude("PractitionerRole:practitionerrole-network", #SHALL)
    * insert SearchRevInclude("PractitionerRole:practitionerrole-new-patient-from-network", #SHALL)
    //* insert SearchRevInclude("VerificationResult:verificationresult-validator-organization", #SHALL)
    //* insert SearchRevInclude( "VerificationResult:verificationresult-attestation-who", #SHALL)

    //* insert SearchParamNdh("organization-identifier-assigner", organization-identifier-assigner, #reference, #SHALL, "Organization identifier assigner")
    //* insert SearchParamNdh("organization-via-intermediary", organization-via-intermediary, #reference, #SHALL, "Organization via intermediary")
    * insert SearchParamNdh("network-coverage-area", network-coverage-area, #reference, #SHALL, "network organization type is needed for searching network coverage area")

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
    * insert SupportedProfile(NdhOrganizationAffiliation, #SHALL)
    * documentation = "OrganizationAffiliation Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#vread, #SHALL, "Read the state of specific version of the resource")
    * versioning = #versioned-update
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchInclude("OrganizationAffiliation:network", #SHALL)
    * insert SearchInclude("OrganizationAffiliation:participating-organization", #SHALL)
    * insert SearchInclude("OrganizationAffiliation:primary-organization", #SHALL)
    //* insert SearchInclude("OrganizationAffiliation:organizationaffiliation-via-intermediary", #SHALL)

    //* insert SearchRevInclude("Endpoint:endpoint-via-intermediary", #SHALL)
    //* insert SearchRevInclude("HealthcareService:healthcareservice-via-intermediary", #SHALL)
    //* insert SearchRevInclude("Location:location-via-intermediary", #SHALL)
    //* insert SearchRevInclude("Organization:network-via-intermediary", #SHALL)
    //* insert SearchRevInclude("Organization:organization-via-intermediary", #SHALL)
    //* insert SearchRevInclude("OrganizationAffiliation:organizationaffiliation-via-intermediary",#SHALL)
    //* insert SearchRevInclude("Practitioner:practitioner-via-intermediary", #SHALL)
    //* insert SearchRevInclude("PractitionerRole:practitionerrole-via-intermediary", #SHALL)

    //* insert SearchParamNdh("organizationaffiliation-via-intermediary", organizationaffiliation-via-intermediary, #reference, #SHALL, "OrganizationAffiliation via intermediary")
    
    * insert SearchParam("endpoint",OrganizationAffiliation-endpoint, #reference, #SHALL, "OrganizationAffiliation endpoint")
    * insert SearchParam("identifier", OrganizationAffiliation-identifier, #token, #SHALL, "OrganizationAffiliation identifier")
    * insert SearchParam("location", OrganizationAffiliation-location, #reference, #SHALL, "OrganizationAffiliation location")
    * insert SearchParam("network", OrganizationAffiliation-network, #reference, #SHALL, "OrganizationAffiliation network")
    * insert SearchParam("participating-organization", OrganizationAffiliation-participating-organization, #reference, #SHALL, "OrganizationAffiliation participating-organization")
    * insert SearchParam("primary-organization", OrganizationAffiliation-primary-organization, #reference, #SHALL, "OrganizationAffiliation primary-organization")
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
    * insert SupportedProfile(NdhPractitioner, #SHALL)
    * documentation = "Practitioner Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#vread, #SHALL, "Read the state of specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned-update
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchInclude("Practitioner:practitioner-endpoint", #SHALL)
    //* insert SearchInclude("Practitioner:practitioner-identifier-assigner", #SHALL)
    * insert SearchInclude("Practitioner:practitioner-qualification-issuer", #SHALL)
    * insert SearchInclude("Practitioner:practitione-via-intermediary", #SHALL)
    * insert SearchInclude("Practitioner:verification-attestation-who", #SHALL)

    * insert SearchRevInclude("PractitionerRole:practitioner", #SHALL)

    //* insert SearchParamNdh("practitioner-endpoint", practitioner-endpoint, #reference, #SHALL, "Practitioner endpoint")
    //* insert SearchParamNdh("practitioner-identifier-assigner", practitioner-identifier-assigner, #reference, #SHALL, "Practitioner identifier assigner")
    * insert SearchParamNdh("practitioner-qualification-issuer", practitioner-qualification-issuer, #reference, #SHALL, "Practitioner qualification issuer")
    * insert SearchParamNdh("practitioner-qualification-code", practitioner-qualification-code, #token, #SHALL, "Practitioner qualification code")
    //* insert SearchParamNdh("practitioner-qualification-period", practitioner-qualification-period, #date, #SHALL, "Practitioner qualification period")
    //* insert SearchParamNdh("practitioner-qualification-wherevalid-code", practitioner-qualification-wherevalid-code, #token, #SHALL, "Practitioner qualification wherevalid code")
    //* insert SearchParamNdh("practitioner-via-intermediary", practitioner-via-intermediary, #reference, #SHALL, "Practitioner via intermediary")

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
    * insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHALL, "Allows filtering for only records that have changed since last query.")

//======================================================
// PractitionerRole
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #PractitionerRole
    * insert SupportedProfile(NdhPractitionerRole, #SHALL)
    * documentation = "PractitionerRole Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#vread, #SHALL, "Read the state of specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned-update
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    //* insert SearchInclude("PractitionerRole:endpoint", #SHALL)
    * insert SearchInclude("PractitionerRole:location", #SHALL)
    * insert SearchInclude("PractitionerRole:practitionerrole-network", #SHALL)
    * insert SearchInclude("PractitionerRole:practitionerrole-new-patient-from-network", #SHALL)
    * insert SearchInclude("PractitionerRole:organization", #SHALL)
    * insert SearchInclude("PractitionerRole:practitioner", #SHALL)
    * insert SearchInclude("PractitionerRole:service", #SHALL)
    //* insert SearchInclude("PractitionerRole:practitionerrole-via-intermediary", #SHALL)

    //* insert SearchRevInclude("Endpoint:endpoint-via-intermediary", #SHALL)
    //* insert SearchRevInclude("HealthcareService:healthcareservice-via-intermediary", #SHALL)
    //* insert SearchRevInclude("Location:location-via-intermediary", #SHALL)
    //* insert SearchRevInclude("Organization:organization-via-intermediary", #SHALL)
    //* insert SearchRevInclude("OrganizationAffiliation:organizationaffiliation-via-intermediary", #SHALL)
    //* insert SearchRevInclude("Practitioner:practitioner-via-intermediary", #SHALL)
    //* insert SearchRevInclude("PractitionerRole:practitionerrole-via-intermediary", #SHALL)

    * insert SearchParamNdh("practitionerrole-network", practitionerrole-network, #reference, #SHALL, "PractitionerRole network")
    * insert SearchParamNdh("practitionerrole-new-patient", practitionerrole-new-patient, #token, #SHALL, "PractitionerRole new-patient")
    * insert SearchParamNdh("practitionerrole-new-patient-from-network", practitionerrole-new-patient-from-network, #reference, #SHALL, "PractitionerRole new-patient from network")
    //* insert SearchParamNdh("practitionerrole-via-intermediary", practitionerrole-via-intermediary, #reference, #SHALL, "PractitionerRole via intermediary")

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
    * insert SearchParam("_id", Resource-id, #token, #SHALL, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #SHALL, "Allows filtering for only records that have changed since last query.")


//======================================================
// Restrication
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #MAY
    * type = #Consent
    * insert SupportedProfile(NdhRestriction, #MAY)
    * documentation = "Restriction Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#read, #MAY, "Read the current state of the resource")
    * insert Interaction(#search-type, #MAY, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#vread, #MAY, "Read the state of specific version of the resource")
    * insert Interaction(#history-instance, #MAY, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #MAY, "Retrieve the history of the resource type")
    * versioning = #versioned-update
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

//======================================================
// Verification
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #MAY
    * type = #VerificationResult
    * insert SupportedProfile(NdhVerification, #MAY)
    * documentation = "Verification Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#read, #MAY, "Read the current state of the resource")
    * insert Interaction(#search-type, #MAY, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#vread, #MAY, "Read the state of specific version of the resource")
    * insert Interaction(#history-instance, #MAY, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #MAY, "Retrieve the history of the resource type")
    * versioning = #versioned-update
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local
 
    * insert SearchInclude("VerificationResult:verificationresult-target", #MAY)
    * insert SearchInclude("VerificationResult:verificationresult-attestation-who", #MAY)
    //* insert SearchInclude("VerificationResult:verificationresult-attestation-onbehalfof", #MAY)
    //* insert SearchInclude("VerificationResult:verificationresult-validator-organization", #MAY)

    //* insert SearchParamNdh("verificationresult-attestation-communication-method", verificationresult-attestation-communication-method, #token, #MAY, "VerificationResult attestation communication-method")
    //* insert SearchParamNdh("verificationresult-attestation-onbehalfof", verificationresult-attestation-onbehalfof, #reference, #MAY, "VerificationResult attestation onbehalfof")
    * insert SearchParamNdh("verificationresult-attestation-who", verificationresult-attestation-who, #reference, #MAY, "VerificationResult attestation who")
    //* insert SearchParamNdh("verificationresult-primarysource-validation-date", verificationresult-primarysource-validation-date, #date, #MAY, "VerificationResult primarysource validation-date")
    * insert SearchParamNdh("verificationresult-primarysource-validation-status", verificationresult-primarysource-validation-status, #token, #MAY, "VerificationResult primarysource validation-status")
    * insert SearchParamNdh("verificationresult-primarysource-type", verificationresult-primarysource-type, #token, #MAY, "VerificationResult primarysource type")
    //* insert SearchParamNdh("verificationresult-primarysource-who", verificationresult-primarysource-who, #reference, #MAY, "VerificationResult primarysource who")
    //* insert SearchParamNdh("verificationresult-status-date", verificationresult-status-date, #date, #MAY, "VerificationResult status-date")
    * insert SearchParamNdh("verificationresult-status", verificationresult-status, #token, #MAY, "VerificationResult status")
    * insert SearchParamNdh("verificationresult-target", verificationresult-target, #reference, #MAY, "VerificationResult target")
    * insert SearchParam("_id", Resource-id, #token, #MAY, "Logical id allows to retrive more than one in a single call")
    * insert SearchParam("_lastUpdated", Resource-lastUpdated, #date, #MAY, "Allows filtering for only records that have changed since last query.")
    //* insert SearchParamNdh("verificationresult-validator-organization", verificationresult-validator-organization, #reference, #MAY, "VerificationResult validator organization")
