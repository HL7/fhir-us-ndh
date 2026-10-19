// FHIR-59495: NDH Contribution Server CapabilityStatement.

RuleSet: ContributionResource(type, profile, conf)
* resource[+]
  * extension[$conf].valueCode = {conf}
  * type = #{type}
  * insert SupportedProfile({profile}, {conf})
  * insert Interaction(#update, {conf}, "Update an existing resource by its id or by business identifier using conditional update")
  * insert Interaction(#create, #SHOULD, "Create a new resource with a server assigned id")
  * insert Interaction(#read, {conf}, "Read the current state of the resource")
  * insert Interaction(#search-type, {conf}, "Search by business identifier to locate an existing resource")
  * versioning = #versioned-update
  * updateCreate = false
  * conditionalUpdate = true
  * referencePolicy[+] = #literal
  * referencePolicy[+] = #local
  * insert SearchParam("identifier", {type}-identifier, #token, {conf}, "Business identifier used to select the record for conditional update")

Instance: capabilityNdhContribution
InstanceOf: CapabilityStatement
Usage: #definition
Title: "NDH Contribution Server Capability Statement"
Description: "The NDH Contribution Server CapabilityStatement defines the requirements for a server that accepts new and corrected directory data from authorized contributors through the FHIR API. Query and retrieval of published directory data is defined by the NDH Server CapabilityStatement."
* id = "ndh-contribution-server"
* url = "http://hl7.org/fhir/us/ndh/CapabilityStatement/ndh-contribution-server"
* name = "NdhContributionCapabilityStatement"
* insert CapabilityCommon
* date = "2026-10-19"
* rest[+]
  * mode = #server
  * documentation = """
Contributors submit resources conforming to the NDH profiles. The NDH Contribution Server validates each submission and returns an OperationOutcome describing each problem when a submission is not valid. Contributors identify the records they maintain by business identifier using conditional update. The NDH Contribution Server SHOULD support ETag and If-Match for collision handling. VerificationResult and Provenance are populated by the directory; contributors are not required to write them.
"""
  * security.description = """
The NDH Contribution Server SHALL meet the [security conformance](conformance.html#security-conformance) requirements for NDH servers, SHALL authenticate each contributor, and SHALL authorize each write. Identity proofing, record ownership, adjudication of conflicting submissions, and publication of contributed data to the NDH Server are determined by the directory operator.
"""
  * insert Interaction(#transaction, #SHOULD, "Submit interdependent resources as one atomic transaction Bundle.")

  * insert ContributionResource(Endpoint, NdhEndpoint, #SHALL)
  * insert ContributionResource(HealthcareService, NdhHealthcareService, #SHALL)
  * insert ContributionResource(InsurancePlan, NdhInsurancePlan, #SHOULD)
  * insert ContributionResource(Location, NdhLocation, #SHALL)
  * insert ContributionResource(Organization, NdhOrganization, #SHALL)
  * resource[=]
    * insert SupportedProfile(NdhNetwork, #SHALL)
  * insert ContributionResource(OrganizationAffiliation, NdhOrganizationAffiliation, #SHALL)
  * insert ContributionResource(Practitioner, NdhPractitioner, #SHALL)
  * insert ContributionResource(PractitionerRole, NdhPractitionerRole, #SHALL)
  * insert ContributionResource(Group, NdhGroup, #SHOULD)
