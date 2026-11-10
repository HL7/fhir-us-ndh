// FHIR-59495: NDH Submission Server CapabilityStatement.

RuleSet: SubmissionResource(type, profile, conf)
* resource[+]
  * extension[$conf].valueCode = {conf}
  * type = #{type}
  * insert SupportedProfile({profile}, {conf})
  * insert Interaction(#update, {conf}, "Update an existing resource by its id or by business identifier using conditional update")
  * insert Interaction(#create, #SHOULD, "Create a new resource with a server assigned id")
  * insert Interaction(#patch, #SHOULD, "Change individual elements of an existing resource by its id or by business identifier using conditional patch")
  * insert Interaction(#read, {conf}, "Read the current state of the resource")
  * insert Interaction(#search-type, {conf}, "Search by business identifier to locate an existing resource")
  * versioning = #versioned-update
  * updateCreate = false
  * conditionalUpdate = true
  * referencePolicy[+] = #literal
  * referencePolicy[+] = #local
  * insert SearchParam("identifier", {type}-identifier, #token, {conf}, "Business identifier used to select the record for conditional update")

Instance: capabilityNdhSubmission
InstanceOf: CapabilityStatement
Usage: #definition
Title: "NDH Submission Server Capability Statement"
Description: "The NDH Submission Server CapabilityStatement defines the requirements for a server that accepts new and corrected directory data from authorized update requesters through the FHIR API. Query and retrieval of published directory data is defined by the NDH Server CapabilityStatement."
* id = "ndh-submission-server"
* url = "http://hl7.org/fhir/us/ndh/CapabilityStatement/ndh-submission-server"
* name = "NdhSubmissionCapabilityStatement"
* insert CapabilityCommon
* date = "2026-11-10"
* patchFormat[+] = #application/json-patch+json
* rest[+]
  * mode = #server
  * documentation = """
Update requesters submit resources conforming to the NDH profiles. The NDH Submission Server validates each submission and returns an OperationOutcome describing each problem when a submission is not valid. Update requesters identify the records they maintain by business identifier, using conditional update to replace a record and conditional patch (PATCH [base]/[type]?identifier=[system]|[value]) to change individual elements. The NDH Submission Server SHOULD support ETag and If-Match for collision handling. Records are deactivated rather than deleted: active set to false, period.end recorded on PractitionerRole and OrganizationAffiliation, or status set to inactive (Location), off (Endpoint), or retired (InsurancePlan). The delete interaction is not supported. VerificationResult and Provenance are populated by the directory; update requesters are not required to write them.
"""
  * security.description = """
The NDH Submission Server SHALL meet the [security conformance](conformance.html#security-conformance) requirements for NDH servers, SHALL authenticate each update requester, and SHALL authorize each write. Identity proofing, record ownership, adjudication of conflicting submissions, and publication of submitted data to the NDH Server are determined by the directory operator.
"""
  * insert Interaction(#transaction, #SHOULD, "Submit interdependent resources as one atomic transaction Bundle.")
  * insert Interaction(#batch, #MAY, "Submit independent resources as a batch Bundle.")

  * insert SubmissionResource(Endpoint, NdhEndpoint, #SHALL)
  * insert SubmissionResource(HealthcareService, NdhHealthcareService, #SHALL)
  * insert SubmissionResource(InsurancePlan, NdhInsurancePlan, #SHOULD)
  * insert SubmissionResource(Location, NdhLocation, #SHALL)
  * insert SubmissionResource(Organization, NdhOrganization, #SHALL)
  * resource[=]
    * insert SupportedProfile(NdhNetwork, #SHALL)
  * insert SubmissionResource(OrganizationAffiliation, NdhOrganizationAffiliation, #SHALL)
  * insert SubmissionResource(Practitioner, NdhPractitioner, #SHALL)
  * insert SubmissionResource(PractitionerRole, NdhPractitionerRole, #SHALL)
  * insert SubmissionResource(Group, NdhGroup, #SHOULD)
