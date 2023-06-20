
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
//* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"></div>"
* text.div = "
<div xmlns=\"http://www.w3.org/1999/xhtml\">
   <h3>RESTful Capabilities by Resource/Profile</h3>
   <p>Workflow Directory Payer Provider Network Query Server<b>   SHALL</b>:</p>
   <ol>
      <li>Support all profile defined in this Implementation Guild</li>
      <li>Implement the RESTful behavior according to the FHIR specification</li>
      <li>Return the following response classes:</li>
      <ol>
         <li>(Status 400): invalid parameter</li>
         <li>(Status 401/4xx): unauthorized request</li>
         <li>(Status 403): insufficient scope</li>
         <li>(Status 404): unknown resource</li>
         <li>(Status 410): deleted resource</li>
      </ol>
      <li>Support json or xml formats</li>
      <li>Identify the Workflow Directory Payer Provider Network Query Server profiles supported as part of FHIR <code>meta.profile</code> attribute for each instance</li>
      <li>Support the searchParameters on each profile individually and in combination (forward,
         reverse chaining on all search parameters that specify the 'chain' property)</li>
   </ol>
   <p><b>Security</b></p>
   <ol>
      <li>A server <b>SHALL</b> rejects any unauthorized requests by return an <code>HTTP 401</code> unauthorized response code</li>
   </ol>
   <h3><b>Endpoint</b> Resource</h3>
   Conformance:  <b>SHALL</b><p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-Endpoint<b>   Conformance:   </b>SHALL</p><b>Interactions: </b><table border=\"2\">
      <tr>
         <th>Interaction</th>
         <th>Conformance</th>
         <th>Documentation</th>
      </tr>
      <tr>
         <td>search-type</td>
         <td>SHOULD</td>
         <td>Search all resources of the specified type based on some filter criteria.</td>
      </tr>
      <tr>
         <td>read</td>
         <td>SHALL</td>
         <td>Read the current state of the resource</td>
      </tr>
      <tr>
         <td>vread</td>
         <td>SHALL</td>
         <td>Read the state of a specific version of the resource</td>
      </tr>
      <tr>
         <td>history-instance</td>
         <td>SHALL</td>
         <td>Retrieve the history of the resource</td>
      </tr>
      <tr>
         <td>history-type</td>
         <td>SHALL</td>
         <td>Retrieve the history of the resource type</td>
      </tr>
   </table><br /><b>SearchIncludes:  </b>Endpoint:organization, CareTeam:careteam-endpoint, HealthcareService:endpoint, InsurancePlan:endpoint, Location:endpoint, Organization:endpoint, OrganizationAffiliation:endpoint, Practitioner:practitioner-endpoint, PractitionerRole:endpoint, 
   <p></p><b>SearchRevIncludes:  </b>HealthcareService:endpoint, Location:endpoint, Organization:endpoint, OrganizationAffiliation:endpoint, Practitioner:practitioner-endpoint, PractitionerRole:endpoint, 
   <p></p><b>SearchParameters: </b><table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>endpoint-usecase-type</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>endpoint-nonfhir-usecase-type</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-nonfhir-usecase-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>endpoint-trust-framework-type</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-trust-framework-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>endpoint-dynamic-registration-trust-profile</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-dynamic-registration-trust-profile</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>endpoint-access-control-mechanism</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-access-control-mechanism</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>endpoint-connection-type-version</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-connection-type-version</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>endpoint-ihe-connection-type</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-ihe-connection-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>endpoint-verification-status</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-verification-status</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>connection-type</td>
         <td>http://hl7.org/fhir/SearchParameter/Endpoint-connection-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>identifier</td>
         <td>http://hl7.org/fhir/SearchParameter/Endpoint-identifier</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>organization</td>
         <td>http://hl7.org/fhir/SearchParameter/Endpoint-organization</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>status</td>
         <td>http://hl7.org/fhir/SearchParameter/Endpoint-status</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
   </table>
   <p></p>
   <h3><b>HealthcareService</b> Resource</h3>
   Conformance:  <b>SHALL</b><p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-HealthcareService<b>   Conformance:   </b>SHALL</p><b>Interactions: </b><table border=\"2\">
      <tr>
         <th>Interaction</th>
         <th>Conformance</th>
         <th>Documentation</th>
      </tr>
      <tr>
         <td>search-type</td>
         <td>SHALL</td>
         <td>Search all resources of the specified type based on some filter criteria.</td>
      </tr>
      <tr>
         <td>read</td>
         <td>SHALL</td>
         <td>Read the current state of the resource</td>
      </tr>
      <tr>
         <td>vread</td>
         <td>SHALL</td>
         <td>Read the state of a specific version of the resource</td>
      </tr>
      <tr>
         <td>history-instance</td>
         <td>SHALL</td>
         <td>Retrieve the history of the resource</td>
      </tr>
      <tr>
         <td>history-type</td>
         <td>SHALL</td>
         <td>Retrieve the history of the resource type</td>
      </tr>
   </table><br /><b>SearchIncludes:  </b>HealthcareService:coverage-area, HealthcareService:endpoint, HealthcareService:location, HealthcareService:healthcareservice-new-patient-from-network, HealthcareService:organization, 
   <p></p><b>SearchRevIncludes:  </b>CareTeam:careteam-service, OrganizationAffiliation:service, PractitionerRole:service, 
   <p></p><b>SearchParameters: </b><table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>healthcareservice-new-patient-from-network</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient-from-network</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>healthcareservice-eligibility</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-eligibility</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>healthcareservice-new-patient</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>healthcareservice-verification-status</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-verification-status</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>active</td>
         <td>http://hl7.org/fhir/SearchParameter/HealthcareService-active</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>coverage-area</td>
         <td>http://hl7.org/fhir/SearchParameter/HealthcareService-coverage-area</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>endpoint</td>
         <td>http://hl7.org/fhir/SearchParameter/HealthcareService-endpoint</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>identifier</td>
         <td>http://hl7.org/fhir/SearchParameter/HealthcareService-identifier</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>location</td>
         <td>http://hl7.org/fhir/SearchParameter/HealthcareService-location</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>name</td>
         <td>http://hl7.org/fhir/SearchParameter/HealthcareService-name</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>organization</td>
         <td>http://hl7.org/fhir/SearchParameter/HealthcareService-organization</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>program</td>
         <td>http://hl7.org/fhir/SearchParameter/HealthcareService-program</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>service-category</td>
         <td>http://hl7.org/fhir/SearchParameter/HealthcareService-service-category</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>service-type</td>
         <td>http://hl7.org/fhir/SearchParameter/HealthcareService-service-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>specialty</td>
         <td>http://hl7.org/fhir/SearchParameter/HealthcareService-specialty</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
   </table>
   <p></p>
   <h3><b>InsurancePlan</b> Resource</h3>
   Conformance:  <b>SHALL</b><p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-InsurancePlan<b>   Conformance:   </b>SHALL</p><b>Interactions: </b><table border=\"2\">
      <tr>
         <th>Interaction</th>
         <th>Conformance</th>
         <th>Documentation</th>
      </tr>
      <tr>
         <td>search-type</td>
         <td>SHALL</td>
         <td>Search all resources of the specified type based on some filter criteria.</td>
      </tr>
      <tr>
         <td>read</td>
         <td>SHALL</td>
         <td>Read the current state of the resource</td>
      </tr>
      <tr>
         <td>vread</td>
         <td>SHALL</td>
         <td>Read the state of a specific version of the resource</td>
      </tr>
      <tr>
         <td>history-instance</td>
         <td>SHALL</td>
         <td>Retrieve the history of the resource</td>
      </tr>
      <tr>
         <td>history-type</td>
         <td>SHALL</td>
         <td>Retrieve the history of the resource type</td>
      </tr>
   </table><br /><b>SearchIncludes:  </b>InsurancePlan:administered-by, InsurancePlan:endpoint, InsurancePlan:owned-by, InsurancePlan:insuranceplan-coverage-area, InsurancePlan:insuranceplan-coverage-network, InsurancePlan:insuranceplan-plan-network, InsurancePlan:network, 
   <p></p><b>SearchRevIncludes:  </b><p></p><b>SearchParameters: </b><table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>insuranceplan-coverage-area</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-area</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>insuranceplan-coverage-benefit-type</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-benefit-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>insuranceplan-coverage-type</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>insuranceplan-coverage-network</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-network</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>insuranceplan-network</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-network</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>insuranceplan-plan-network</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-network</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>insuranceplan-plan-type</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>insuranceplan-verification-status</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-verification-status</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address</td>
         <td>http://hl7.org/fhir/SearchParameter/InsurancePlan-address</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address-city</td>
         <td>http://hl7.org/fhir/SearchParameter/InsurancePlan-address-city</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address-country</td>
         <td>http://hl7.org/fhir/SearchParameter/InsurancePlan-address-country</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address-postalcode</td>
         <td>http://hl7.org/fhir/SearchParameter/InsurancePlan-address-postalcode</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address-state</td>
         <td>http://hl7.org/fhir/SearchParameter/InsurancePlan-address-state</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>administered-by</td>
         <td>http://hl7.org/fhir/SearchParameter/InsurancePlan-administered-by</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>endpoint</td>
         <td>http://hl7.org/fhir/SearchParameter/InsurancePlan-endpoint</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>identifier</td>
         <td>http://hl7.org/fhir/SearchParameter/InsurancePlan-identifier</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>name</td>
         <td>http://hl7.org/fhir/SearchParameter/InsurancePlan-name</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>owned-by</td>
         <td>http://hl7.org/fhir/SearchParameter/InsurancePlan-owned-by</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>status</td>
         <td>http://hl7.org/fhir/SearchParameter/InsurancePlan-status</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>type</td>
         <td>http://hl7.org/fhir/SearchParameter/InsurancePlan-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
   </table>
   <p></p>
   <h3><b>Location</b> Resource</h3>
   Conformance:  <b>SHALL</b><p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-Location<b>   Conformance:   </b>SHALL</p><b>Interactions: </b><table border=\"2\">
      <tr>
         <th>Interaction</th>
         <th>Conformance</th>
         <th>Documentation</th>
      </tr>
      <tr>
         <td>search-type</td>
         <td>SHALL</td>
         <td>Search all resources of the specified type based on some filter criteria.</td>
      </tr>
      <tr>
         <td>read</td>
         <td>SHALL</td>
         <td>Read the current state of the resource</td>
      </tr>
      <tr>
         <td>vread</td>
         <td>SHALL</td>
         <td>Read the state of a specific version of the resource</td>
      </tr>
      <tr>
         <td>history-instance</td>
         <td>SHALL</td>
         <td>Retrieve the history of the resource</td>
      </tr>
      <tr>
         <td>history-type</td>
         <td>SHALL</td>
         <td>Retrieve the history of the resource type</td>
      </tr>
   </table><br /><b>SearchIncludes:  </b>Location:endpoint, Location:location-new-patient-from-network, Location:organization, Location:partof, 
   <p></p><b>SearchRevIncludes:  </b>CareTeam:careteam-location, HealthcareService:coverage-area, HealthcareService:location, InsurancePlan:insuranceplan-coverage-area, Location:partof, OrganizationAffiliation:location, PractitionerRole:location, 
   <p></p><b>SearchParameters: </b><table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>location-accessibility</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/location-accessibility</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>location-contains</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/location-contains</td>
         <td>special</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>location-new-patient-from-network</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient-from-network</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>location-new-patient</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address</td>
         <td>http://hl7.org/fhir/SearchParameter/Location-address</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address-city</td>
         <td>http://hl7.org/fhir/SearchParameter/Location-address-city</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address-country</td>
         <td>http://hl7.org/fhir/SearchParameter/Location-address-country</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address-postalcode</td>
         <td>http://hl7.org/fhir/SearchParameter/Location-address-postalcode</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address-state</td>
         <td>http://hl7.org/fhir/SearchParameter/Location-address-state</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address-use</td>
         <td>http://hl7.org/fhir/SearchParameter/Location-address-use</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>organization</td>
         <td>http://hl7.org/fhir/SearchParameter/Location-organization</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>type</td>
         <td>http://hl7.org/fhir/SearchParameter/Location-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
   </table>
   <p></p>
   <h3><b>Organization</b> Resource</h3>
   Conformance:  <b>SHALL</b><p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-Organization<b>   Conformance:   </b>SHALL</p><b>Interactions: </b><table border=\"2\">
      <tr>
         <th>Interaction</th>
         <th>Conformance</th>
         <th>Documentation</th>
      </tr>
      <tr>
         <td>search-type</td>
         <td>SHALL</td>
         <td>Search all resources of the specified type based on some filter criteria.</td>
      </tr>
      <tr>
         <td>read</td>
         <td>SHALL</td>
         <td>Read the current state of the resource</td>
      </tr>
      <tr>
         <td>vread</td>
         <td>SHALL</td>
         <td>Read the state of a specific version of the resource</td>
      </tr>
      <tr>
         <td>history-instance</td>
         <td>SHALL</td>
         <td>Retrieve the history of the resource</td>
      </tr>
      <tr>
         <td>history-type</td>
         <td>SHALL</td>
         <td>Retrieve the history of the resource type</td>
      </tr>
   </table><br /><b>SearchIncludes:  </b>Organization:endpoint, Organization:organization-identifier-assigner, Organization:partof, Organization:organization-via-intermediary, 
   <p></p><b>SearchRevIncludes:  </b>CareTeam:careteam-organization, Endpoint:organization, Endpoint:endpoint-identifier-assigner, HealthcareService:organization, HealthcareService:healthcareservice-new-patient-from-network, HealthcareService:healthcareservice-via-intermediary, InsurancePlan:administered-by, InsurancePlan:owned-by, InsurancePlan:insuranceplan-coverage-network, InsurancePlan:insuranceplan-plan-network, InsurancePlan:insuranceplan-network, Location:organization, Location:location-via-intermediary, Location:location-new-patient-from-network, Organization:organization-identifier-assigner, Organization:organization-via-intermediary, Organization:partof, OrganizationAffiliation:network, OrganizationAffiliation:participating-organization, OrganizationAffiliation:primary-organization, OrganizationAffiliation:organizationaffiliation-via-intermediary, Practitioner:practitioner-identifier-assigner, Practitioner:practitioner-qualification-issuer, Practitioner:practitioner-via-intermediary, PractitionerRole:organization, PractitionerRole:practitionerrole-network, PractitionerRole:practitionerrole-new-patient-from-network, VerificationResult:verificationresult-validator-organization, VerificationResult:verificationresult-attestation-who, 
   <p></p><b>SearchParameters: </b><table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>network-coverage-area</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/network-coverage-area</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>active</td>
         <td>http://hl7.org/fhir/SearchParameter/Organization-active</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address</td>
         <td>http://hl7.org/fhir/SearchParameter/Organization-address</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address-city</td>
         <td>http://hl7.org/fhir/SearchParameter/Organization-address-city</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address-country</td>
         <td>http://hl7.org/fhir/SearchParameter/Organization-address-country</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address-postalcode</td>
         <td>http://hl7.org/fhir/SearchParameter/Organization-address-postalcode</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address-state</td>
         <td>http://hl7.org/fhir/SearchParameter/Organization-address-state</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>address-use</td>
         <td>http://hl7.org/fhir/SearchParameter/Organization-address-use</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>endpoint</td>
         <td>http://hl7.org/fhir/SearchParameter/Organization-endpoint</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>identifier</td>
         <td>http://hl7.org/fhir/SearchParameter/Organization-identifier</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>name</td>
         <td>http://hl7.org/fhir/SearchParameter/Organization-name</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>partof</td>
         <td>http://hl7.org/fhir/SearchParameter/Organization-partof</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>type</td>
         <td>http://hl7.org/fhir/SearchParameter/Organization-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
   </table>
   <p></p>
   <h3><b>OrganizationAffiliation</b> Resource</h3>
   Conformance:  <b>SHALL</b><p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-OrganizationAffiliation<b>   Conformance:   </b>SHALL</p><b>Interactions: </b><table border=\"2\">
      <tr>
         <th>Interaction</th>
         <th>Conformance</th>
         <th>Documentation</th>
      </tr>
      <tr>
         <td>history-instance</td>
         <td>SHALL</td>
         <td>Retrieve the history of the resource</td>
      </tr>
      <tr>
         <td>history-type</td>
         <td>SHALL</td>
         <td>Retrieve the history of the resource type</td>
      </tr>
      <tr>
         <td>read</td>
         <td>SHALL</td>
         <td>Read the current state of the resource</td>
      </tr>
      <tr>
         <td>search-type</td>
         <td>SHALL</td>
         <td>Search all resources of the specified type based on some filter criteria.</td>
      </tr>
      <tr>
         <td>vread</td>
         <td>SHALL</td>
         <td>Read the state of specific version of the resource</td>
      </tr>
   </table><br /><b>SearchIncludes:  </b>OrganizationAffiliation:network, OrganizationAffiliation:participating-organization, OrganizationAffiliation:primary-organization, OrganizationAffiliation:organizationaffiliation-via-intermediary, 
   <p></p><b>SearchRevIncludes:  </b>Endpoint:endpoint-via-intermediary, HealthcareService:healthcareservice-via-intermediary, Location:location-via-intermediary, Organization:network-via-intermediary, Organization:organization-via-intermediary, OrganizationAffiliation:organizationaffiliation-via-intermediary, Practitioner:practitioner-via-intermediary, PractitionerRole:practitionerrole-via-intermediary, 
   <p></p><b>SearchParameters: </b><table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>organizationaffiliation-via-intermediary</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/organizationaffiliation-via-intermediary</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>endpoint</td>
         <td>http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-endpoint</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>identifier</td>
         <td>http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-identifier</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>location</td>
         <td>http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-location</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>network</td>
         <td>http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-network</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>participating-organization</td>
         <td>http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-participating-organization</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>primary-organization</td>
         <td>http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-primary-organization</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>role</td>
         <td>http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-role</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>service</td>
         <td>http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-service</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>specialty</td>
         <td>http://hl7.org/fhir/SearchParameter/OrganizationAffiliation-specialty</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
   </table>
   <p></p>
   <h3><b>Practitioner</b> Resource</h3>
   Conformance:  <b>SHALL</b><p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-Practitioner<b>   Conformance:   </b>SHALL</p><b>Interactions: </b><table border=\"2\">
      <tr>
         <th>Interaction</th>
         <th>Conformance</th>
         <th>Documentation</th>
      </tr>
      <tr>
         <td>read</td>
         <td>SHALL</td>
         <td>Read the current state of the resource</td>
      </tr>
      <tr>
         <td>search-type</td>
         <td>SHALL</td>
         <td>Search all resources of the specified type based on some filter criteria.</td>
      </tr>
      <tr>
         <td>vread</td>
         <td>SHALL</td>
         <td>Read the state of specific version of the resource</td>
      </tr>
      <tr>
         <td>history-instance</td>
         <td>SHALL</td>
         <td>Retrieve the history of the resource</td>
      </tr>
      <tr>
         <td>history-type</td>
         <td>SHALL</td>
         <td>Retrieve the history of the resource type</td>
      </tr>
   </table><br /><b>SearchIncludes:  </b>Practitioner:practitioner-endpoint, Practitioner:practitioner-identifier-assigner, Practitioner:practitioner-qualification-issuer, Practitioner:practitione-via-intermediary, Practitioner:verification-attestation-who, 
   <p></p><b>SearchRevIncludes:  </b>PractitionerRole:practitioner, 
   <p></p><b>SearchParameters: </b><table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>practitioner-qualification-issuer</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-issuer</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>practitioner-qualification-code</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-code</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>active</td>
         <td>http://hl7.org/fhir/SearchParameter/Practitioner-active</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>name</td>
         <td>http://hl7.org/fhir/SearchParameter/Practitioner-name</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>identifier</td>
         <td>http://hl7.org/fhir/SearchParameter/Practitioner-identifier</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
   </table>
   <p></p>
   <h3><b>PractitionerRole</b> Resource</h3>
   Conformance:  <b>SHALL</b><p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-PractitionerRole<b>   Conformance:   </b>SHALL</p><b>Interactions: </b><table border=\"2\">
      <tr>
         <th>Interaction</th>
         <th>Conformance</th>
         <th>Documentation</th>
      </tr>
      <tr>
         <td>read</td>
         <td>SHALL</td>
         <td>Read the current state of the resource</td>
      </tr>
      <tr>
         <td>search-type</td>
         <td>SHALL</td>
         <td>Search all resources of the specified type based on some filter criteria.</td>
      </tr>
      <tr>
         <td>vread</td>
         <td>SHALL</td>
         <td>Read the state of specific version of the resource</td>
      </tr>
      <tr>
         <td>history-instance</td>
         <td>SHALL</td>
         <td>Retrieve the history of the resource</td>
      </tr>
      <tr>
         <td>history-type</td>
         <td>SHALL</td>
         <td>Retrieve the history of the resource type</td>
      </tr>
   </table><br /><b>SearchIncludes:  </b>PractitionerRole:endpoint, PractitionerRole:location, PractitionerRole:practitionerrole-network, PractitionerRole:practitionerrole-new-patient-from-network, PractitionerRole:organization, PractitionerRole:practitioner, PractitionerRole:service, PractitionerRole:practitionerrole-via-intermediary, 
   <p></p><b>SearchRevIncludes:  </b>Endpoint:endpoint-via-intermediary, HealthcareService:healthcareservice-via-intermediary, Location:location-via-intermediary, Organization:organization-via-intermediary, OrganizationAffiliation:organizationaffiliation-via-intermediary, Practitioner:practitioner-via-intermediary, PractitionerRole:practitionerrole-via-intermediary, 
   <p></p><b>SearchParameters: </b><table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>practitionerrole-network</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-network</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>practitionerrole-new-patient</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>practitionerrole-new-patient-from-network</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient-from-network</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>active</td>
         <td>http://hl7.org/fhir/SearchParameter/PractitionerRole-active</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>endpoint</td>
         <td>http://hl7.org/fhir/SearchParameter/PractitionerRole-endpoint</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>identifier</td>
         <td>http://hl7.org/fhir/SearchParameter/PractitionerRole-identifier</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>location</td>
         <td>http://hl7.org/fhir/SearchParameter/PractitionerRole-location</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>organization</td>
         <td>http://hl7.org/fhir/SearchParameter/PractitionerRole-organization</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>practitioner</td>
         <td>http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>role</td>
         <td>http://hl7.org/fhir/SearchParameter/PractitionerRole-role</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>service</td>
         <td>http://hl7.org/fhir/SearchParameter/PractitionerRole-service</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>specialty</td>
         <td>http://hl7.org/fhir/SearchParameter/PractitionerRole-specialty</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
   </table>
   <p></p>
</div>"
* text.status = #generated
* insert CapabilityCommon
* rest[+]
  * mode = #server
  * documentation = "Workflow Directory Payer Provider Network Query Server"
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Endpoint
    * insert SupportedProfile(NdhPnQryEndpoint, #SHALL)
    * documentation = "Endporint Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#search-type, #SHOULD, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#vread, #SHALL, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned-update
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local
    
    * insert SearchInclude("Endpoint:organization", #SHALL)
    * insert SearchInclude("CareTeam:careteam-endpoint", #SHALL)
    * insert SearchInclude("HealthcareService:endpoint", #SHALL)
    * insert SearchInclude("InsurancePlan:endpoint", #SHALL)
    * insert SearchInclude("Location:endpoint", #SHALL)  
    * insert SearchInclude("Organization:endpoint", #SHALL)
    * insert SearchInclude("OrganizationAffiliation:endpoint", #SHALL)
    * insert SearchInclude("Practitioner:practitioner-endpoint", #SHALL)
    * insert SearchInclude("PractitionerRole:endpoint", #SHALL)

    * insert SearchRevInclude("HealthcareService:endpoint", #SHALL)
    * insert SearchRevInclude("Location:endpoint", #SHALL)
    * insert SearchRevInclude("Organization:endpoint", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:endpoint", #SHALL)
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

//======================================================
// HealthcareService
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #HealthcareService
    * insert SupportedProfile(NdhPnQryHealthcareService, #SHALL)
    * documentation = "HealthcareService Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#vread, #SHALL, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned-update
    //* readHistory = #true
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
    
//======================================================
// InsurancePlan
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #InsurancePlan
    * insert SupportedProfile(NdhPnQryInsurancePlan, #SHALL)
    * documentation = "InsurancePlan Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#vread, #SHALL, "Read the state of a specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned-update
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local
    * insert SearchInclude("InsurancePlan:administered-by",#SHALL)
    * insert SearchInclude("InsurancePlan:endpoint",#SHALL)
    * insert SearchInclude("InsurancePlan:owned-by",#SHALL)
    * insert SearchInclude("InsurancePlan:insuranceplan-coverage-area",#SHALL)
    * insert SearchInclude("InsurancePlan:insuranceplan-coverage-network",#SHALL)
    //* insert SearchInclude("InsurancePlan:insuranceplan-plan-coverage-area", #SHALL)
    * insert SearchInclude("InsurancePlan:insuranceplan-plan-network", #SHALL)
    * insert SearchInclude("InsurancePlan:network", #SHALL)
  
    * insert SearchParamNdh("insuranceplan-coverage-area", insuranceplan-coverage-area, #reference, #SHALL, "InsurancePlan coverage area")
    * insert SearchParamNdh("insuranceplan-coverage-benefit-type", insuranceplan-coverage-benefit-type, #token, #SHALL, "InsurancePlan coverage benefit type" )
    * insert SearchParamNdh("insuranceplan-coverage-type", insuranceplan-coverage-type, #token, #SHALL, "InsurancePlan coverage type")
    * insert SearchParamNdh("insuranceplan-coverage-network", insuranceplan-coverage-network, #reference, #SHALL, "InsurancePlan coverage network")
    * insert SearchParamNdh("insuranceplan-network", insuranceplan-network, #reference, #SHALL, "InsurancePlan network")
    * insert SearchParamNdh("insuranceplan-plan-network", insuranceplan-plan-network, #reference, #SHALL, "InsurancePlan plan network")
    * insert SearchParamNdh("insuranceplan-plan-type", insuranceplan-plan-type, #token, #SHALL, "InsurancePlan plan type")
    * insert SearchParamNdh("insuranceplan-verification-status", insuranceplan-verification-status, #token, #SHALL, "Verification status")

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

//======================================================
// Location
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Location
    * insert SupportedProfile(NdhPnQryLocation, #SHALL)
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
    * insert SearchRevInclude("Location:partof",#SHALL)
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
    * insert SearchParam("organization", Location-organization, #reference, #SHALL, "Location organization")
    * insert SearchParam("type", Location-type, #token, #SHALL, "Location type")

//======================================================
// Organization
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Organization
    * insert SupportedProfile(NdhPnQryOrganization, #SHALL)
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
    * insert SearchInclude("Organization:organization-identifier-assigner",#SHALL)
    * insert SearchInclude("Organization:partof",#SHALL)
    * insert SearchInclude("Organization:organization-via-intermediary",#SHALL)

    * insert SearchRevInclude("CareTeam:careteam-organization", #SHALL)
    * insert SearchRevInclude("Endpoint:organization", #SHALL)
    * insert SearchRevInclude("Endpoint:endpoint-identifier-assigner", #SHALL)
    * insert SearchRevInclude("HealthcareService:organization", #SHALL)
    * insert SearchRevInclude("HealthcareService:healthcareservice-new-patient-from-network", #SHALL)
    * insert SearchRevInclude("HealthcareService:healthcareservice-via-intermediary", #SHALL)
    * insert SearchRevInclude("InsurancePlan:administered-by", #SHALL)
    * insert SearchRevInclude("InsurancePlan:owned-by", #SHALL)
    * insert SearchRevInclude("InsurancePlan:insuranceplan-coverage-network",#SHALL)
    * insert SearchRevInclude("InsurancePlan:insuranceplan-plan-network",#SHALL)
    * insert SearchRevInclude("InsurancePlan:insuranceplan-network", #SHALL)
    * insert SearchRevInclude("Location:organization", #SHALL)
    * insert SearchRevInclude("Location:location-via-intermediary", #SHALL)
    * insert SearchRevInclude("Location:location-new-patient-from-network", #SHALL)
    * insert SearchRevInclude("Organization:organization-identifier-assigner", #SHALL)
    * insert SearchRevInclude("Organization:organization-via-intermediary", #SHALL)
    * insert SearchRevInclude("Organization:partof", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:network", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:participating-organization", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:primary-organization", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:organizationaffiliation-via-intermediary", #SHALL)
    * insert SearchRevInclude("Practitioner:practitioner-identifier-assigner", #SHALL)
    * insert SearchRevInclude("Practitioner:practitioner-qualification-issuer", #SHALL)
    * insert SearchRevInclude("Practitioner:practitioner-via-intermediary", #SHALL)
    * insert SearchRevInclude("PractitionerRole:organization", #SHALL)
    * insert SearchRevInclude("PractitionerRole:practitionerrole-network", #SHALL)
    * insert SearchRevInclude("PractitionerRole:practitionerrole-new-patient-from-network", #SHALL)
    * insert SearchRevInclude("VerificationResult:verificationresult-validator-organization", #SHALL)
    * insert SearchRevInclude( "VerificationResult:verificationresult-attestation-who", #SHALL)

    //* insert SearchParamNdh("organization-identifier-assigner", organization-identifier-assigner, #reference, #SHALL, "Organization identifier assigner")
    //* insert SearchParamNdh("organization-via-intermediary", organization-via-intermediary, #reference, #SHALL, "Organization via intermediary")
    * insert SearchParamNdh("network-coverage-area", network-coverage-area, #reference, #SHALL, "Network coverage area")

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
    * extension[$conf].valueCode = #SHALL
    * type = #OrganizationAffiliation
    * insert SupportedProfile(NdhPnQryOrganizationAffiliation, #SHALL)
    * documentation = "OrganizationAffiliation Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#vread, #SHALL, "Read the state of specific version of the resource")
    * versioning = #versioned-update
    //The server supports and populates Literal references (i.e. using Reference.reference) where they are known 
    //(this code does not guarantee that all references are literal; see 'enforced').
    * referencePolicy[+] = #literal
    //The server does not support references that point to other servers.
    * referencePolicy[+] = #local

    * insert SearchInclude("OrganizationAffiliation:network", #SHALL)
    * insert SearchInclude("OrganizationAffiliation:participating-organization", #SHALL)
    * insert SearchInclude("OrganizationAffiliation:primary-organization", #SHALL)
    * insert SearchInclude("OrganizationAffiliation:organizationaffiliation-via-intermediary", #SHALL)

    * insert SearchRevInclude("Endpoint:endpoint-via-intermediary", #SHALL)
    * insert SearchRevInclude("HealthcareService:healthcareservice-via-intermediary", #SHALL)
    * insert SearchRevInclude("Location:location-via-intermediary", #SHALL)
    * insert SearchRevInclude("Organization:network-via-intermediary", #SHALL)
    * insert SearchRevInclude("Organization:organization-via-intermediary", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:organizationaffiliation-via-intermediary",#SHALL)
    * insert SearchRevInclude("Practitioner:practitioner-via-intermediary", #SHALL)
    * insert SearchRevInclude("PractitionerRole:practitionerrole-via-intermediary", #SHALL)

    * insert SearchParamNdh("organizationaffiliation-via-intermediary", organizationaffiliation-via-intermediary, #reference, #SHALL, "OrganizationAffiliation via intermediary")
    
    * insert SearchParam("endpoint",OrganizationAffiliation-endpoint, #reference, #SHALL, "OrganizationAffiliation endpoint")
    * insert SearchParam("identifier", OrganizationAffiliation-identifier, #token, #SHALL, "OrganizationAffiliation identifier")
    * insert SearchParam("location", OrganizationAffiliation-location, #reference, #SHALL, "OrganizationAffiliation location")
    * insert SearchParam("network", OrganizationAffiliation-network, #reference, #SHALL, "OrganizationAffiliation network")
    * insert SearchParam("participating-organization", OrganizationAffiliation-participating-organization, #reference, #SHALL, "OrganizationAffiliation participating-organization")
    * insert SearchParam("primary-organization", OrganizationAffiliation-primary-organization, #reference, #SHALL, "OrganizationAffiliation primary-organization")
    * insert SearchParam("role", OrganizationAffiliation-role, #token, #SHALL, "OrganizationAffiliation role")
    * insert SearchParam("service", OrganizationAffiliation-service, #reference, #SHALL, "OrganizationAffiliation service")
    * insert SearchParam("specialty", OrganizationAffiliation-specialty, #token, #SHALL, "OrganizationAffiliation specialty")

//======================================================
// Practitioner
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #Practitioner
    * insert SupportedProfile(NdhPnQryPractitioner, #SHALL)
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
    * insert SearchInclude("Practitioner:practitioner-identifier-assigner", #SHALL)
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

//======================================================
// PractitionerRole
//======================================================
  * resource[+]
    * extension[$conf].valueCode = #SHALL
    * type = #PractitionerRole
    * insert SupportedProfile(NdhPnQryPractitionerRole, #SHALL)
    * documentation = "PractitionerRole Resource, supportedProfile, interaction, search parameter"
    * insert Interaction(#read, #SHALL, "Read the current state of the resource")
    * insert Interaction(#search-type, #SHALL, "Search all resources of the specified type based on some filter criteria.")
    * insert Interaction(#vread, #SHALL, "Read the state of specific version of the resource")
    * insert Interaction(#history-instance, #SHALL, "Retrieve the history of the resource")
    * insert Interaction(#history-type, #SHALL, "Retrieve the history of the resource type")
    * versioning = #versioned-update
    * referencePolicy[+] = #literal
    * referencePolicy[+] = #local

    * insert SearchInclude("PractitionerRole:endpoint", #SHALL)
    * insert SearchInclude("PractitionerRole:location", #SHALL)
    * insert SearchInclude("PractitionerRole:practitionerrole-network", #SHALL)
    * insert SearchInclude("PractitionerRole:practitionerrole-new-patient-from-network", #SHALL)
    * insert SearchInclude("PractitionerRole:organization", #SHALL)
    * insert SearchInclude("PractitionerRole:practitioner", #SHALL)
    * insert SearchInclude("PractitionerRole:service", #SHALL)
    * insert SearchInclude("PractitionerRole:practitionerrole-via-intermediary", #SHALL)

    * insert SearchRevInclude("Endpoint:endpoint-via-intermediary", #SHALL)
    * insert SearchRevInclude("HealthcareService:healthcareservice-via-intermediary", #SHALL)
    * insert SearchRevInclude("Location:location-via-intermediary", #SHALL)
    * insert SearchRevInclude("Organization:organization-via-intermediary", #SHALL)
    * insert SearchRevInclude("OrganizationAffiliation:organizationaffiliation-via-intermediary", #SHALL)
    * insert SearchRevInclude("Practitioner:practitioner-via-intermediary", #SHALL)
    * insert SearchRevInclude("PractitionerRole:practitionerrole-via-intermediary", #SHALL)

    * insert SearchParamNdh("practitionerrole-network", practitionerrole-network, #reference, #SHALL, "PractitionerRole network")
    * insert SearchParamNdh("practitionerrole-new-patient", practitionerrole-new-patient, #token, #SHALL, "PractitionerRole new-patient")
    * insert SearchParamNdh("practitionerrole-new-patient-from-network", practitionerrole-new-patient-from-network, #reference, #SHALL, "PractitionerRole new-patient from network")
    //* insert SearchParamNdh("practitionerrole-via-intermediary", practitionerrole-via-intermediary, #reference, #SHALL, "PractitionerRole via intermediary")

    * insert SearchParam("active", PractitionerRole-active, #token, #SHALL, "Whether this practitioner's record is in active use")
    //* insert SearchParam("date", PractitionerRole-date, #date, #SHALL, "The period during which the practitioner is authorized to perform in these role")
    //* insert SearchParam("email", PractitionerRole-email, #token, #SHALL, "A value in an email contact")
    * insert SearchParam("endpoint", PractitionerRole-endpoint, #reference, #SHALL, "Technical endpoints providing access to services operated for the practitioner with this role")
    * insert SearchParam("identifier", PractitionerRole-identifier, #token, #SHALL, "A practitioner's Identifier")
    * insert SearchParam("location", PractitionerRole-location, #reference, #SHALL, "One of the locations at which this practitioner provides care")
    * insert SearchParam("organization", PractitionerRole-organization, #reference, #SHALL, "The identity of the organization the practitioner represents / acts on behalf of")
    //* insert SearchParam("phone", PractitionerRole-phone, #token, #SHALL, "A value in a phone contact")
    * insert SearchParam("practitioner", PractitionerRole-practitioner, #reference, #SHALL, "Practitioner that is able to provide the defined services for the organization")
    * insert SearchParam("role", PractitionerRole-role, #token, #SHALL, "The practitioner can perform this role at for the organization")
    * insert SearchParam("service", PractitionerRole-service, #reference, #SHALL, "The list of healthcare services that this worker provides for this role's Organization/Location")
    * insert SearchParam("specialty", PractitionerRole-specialty, #token, #SHALL, "The practitioner has this specialty at an organization")

