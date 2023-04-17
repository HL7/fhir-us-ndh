
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
//* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"></div>"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
   <h3>RESTful Capabilities by Resource/Profile</h3>
   <p>Workflow Directory Plan Net Query Server<b>   SHALL</b>:</p>
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
      <li>Identify the Workflow Directory Plan Net Query Server profiles supported as part of FHIR <code>meta.profile</code> attribute for each instance</li>
      <li>Support the searchParameters on each profile individually and in combination (forward,
         reverse chaining on all search parameters that specify the 'chain' property)</li>
   </ol>
   <p><b>Security</b></p>
   <ol>
      <li>A server <b>SHALL</b> rejects any unauthorized requests by return an <code>HTTP 401</code> unauthorized response code</li>
   </ol>
   <h4><b>Endpoint</b> Resource</h4>
   Conformance:  <b>SHALL</b><p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-Endpoint<b>   Conformance:   </b>SHALL</p><b>Interactions: </b><table border=\"2\">
      <tr>
         <th>Interaction</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>read</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>search-type</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>vread</td>
         <td>MAY</td>
      </tr>
      <tr>
         <td>history-instance</td>
         <td>MAY</td>
      </tr>
      <tr>
         <td>history-type</td>
         <td>MAY</td>
      </tr>
   </table><br /><b>SearchIncludes:  </b>Endpoint:endpoint-identifier-assigner, Endpoint:organization, 
   <p></p><b>SearchRevIncludes:  </b>CareTeam:careteam-endpoint, HealthcareService:endpoint, InsurancePlan:endpoint, Location:endpoint, Organization:endpoint, Organizationaffiliation:endpoint, Practitioner:practitioner-endpoint, Practitionerrole:endpoint, 
   <p></p><b>SearchParameters: </b><table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>endpoint-identifier-assigner</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-identifier-assigner</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>endpoint-mine-type</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-mime-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>endpoint-usecase-standard</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-standard</td>
         <td>uri</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>endpoint-usecase-type</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-type</td>
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
         <td>payload-type</td>
         <td>http://hl7.org/fhir/SearchParameter/Endpoint-payload-type</td>
         <td>token</td>
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
   <h4><b>HealthcareService</b> Resource</h4>
   Conformance:  <b>SHALL</b><p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-HealthcareService<b>   Conformance:   </b>SHALL</p><b>Interactions: </b><table border=\"2\">
      <tr>
         <th>Interaction</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>read</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>search-type</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>vread</td>
         <td>MAY</td>
      </tr>
      <tr>
         <td>history-instance</td>
         <td>MAY</td>
      </tr>
      <tr>
         <td>history-type</td>
         <td>MAY</td>
      </tr>
   </table><br /><b>SearchIncludes:  </b>HealthcareService:coverage-area, HealthcareService:endpoint, HealthcareService:location, HealthcareService:healthcareservice-new-patient-from-network, HealthcareService:organization, HealthcareService:healthcareservice-via-intermediary, 
   <p></p><b>SearchRevIncludes:  </b>CareTeam:careteam-service, OrganizationAffiliation:service, PractitionerRole:service, 
   <p></p><b>SearchParameters: </b><table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>healthcareservice-category</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-category</td>
         <td>token</td>
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
         <td>healthcareservice-new-patient-from-network</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient-from-network</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>healthcareservice-type</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>healthcareservice-via-intermediary</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-via-intermediary</td>
         <td>reference</td>
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
         <td>organization</td>
         <td>http://hl7.org/fhir/SearchParameter/HealthcareService-organization</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
   </table>
   <p></p>
   <h4><b>InsurancePlan</b> Resource</h4>
   Conformance:  <b>SHALL</b><p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-InsurancePlan<b>   Conformance:   </b>SHALL</p><b>Interactions: </b><table border=\"2\">
      <tr>
         <th>Interaction</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>read</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>search-type</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>vread</td>
         <td>MAY</td>
      </tr>
      <tr>
         <td>history-instance</td>
         <td>MAY</td>
      </tr>
      <tr>
         <td>history-type</td>
         <td>MAY</td>
      </tr>
   </table><br /><b>SearchIncludes:  </b>InsurancePlan:administered-by, InsurancePlan:endpoint, InsurancePlan:owned-by, InsurancePlan:insuranceplan-coverage-area, InsurancePlan:insuranceplan-coverage-network, InsurancePlan:insuranceplan-plan-coverage-area, InsurancePlan:insuranceplan-plan-network, InsurancePlan:insuranceplan-network, 
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
         <td>insuranceplan-coverage-benefit-limit-value</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-benefit-limit-value</td>
         <td>quantity</td>
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
         <td>insuranceplan-plan-coverage-area</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-coverage-area</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>insuranceplan-plan-general-cost-cost</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-general-cost-cost</td>
         <td>quantity</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>insuranceplan-plan-general-cost-groupsize</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-general-cost-groupsize</td>
         <td>number</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>insuranceplan-plan-general-cost-type</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-general-cost-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>insuranceplan-plan-identifier</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-identifier</td>
         <td>token</td>
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
         <td>insuranceplan-plan-specific-cost-category</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-specific-cost-category</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>insuranceplan-plan-specific-cost-benefit-type</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-specific-cost-benefit-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>insuranceplan-plan-specific-cost-benefit-cost-type</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-specific-cost-benefit-cost-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>insuranceplan-plan-specific-cost-benefit-cost-value</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-specific-cost-benefit-cost-value</td>
         <td>quantity</td>
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
         <td>owned-by</td>
         <td>http://hl7.org/fhir/SearchParameter/InsurancePlan-owned-by</td>
         <td>reference</td>
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
   <h4><b>Location</b> Resource</h4>
   Conformance:  <b>SHALL</b><p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-Location<b>   Conformance:   </b>SHALL</p><b>Interactions: </b><table border=\"2\">
      <tr>
         <th>Interaction</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>read</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>search-type</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>vread</td>
         <td>MAY</td>
      </tr>
      <tr>
         <td>history-instance</td>
         <td>MAY</td>
      </tr>
      <tr>
         <td>history-type</td>
         <td>MAY</td>
      </tr>
   </table><br /><b>SearchIncludes:  </b>Location:endpoint, Location:location-new-patient-from-network, Location:organization, Location:partof, Location:location-via-intermediary, 
   <p></p><b>SearchRevIncludes:  </b>CareTeam:careteam-location, CareTeam:careteam-via-intermediary, HealthcareService:coverage-area, HealthcareService:location, HealthcareService:healthcareservice-via-intermediary, InsurancePlan:insuranceplan-plan-coverage-area, InsurancePlan:insuranceplan-coverage-area, Location:partof, Location:location-via-intermediary, Organization:organization-via-intermediary, OrganizationAffiliation:location, OrganizationAffiliation:organizationaffiliation-via-intermediary, Practitioner:practitioner-via-intermediary, PractitionerRole:location, PractitioneRrole:practitionerrole-via-intermediary, 
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
         <td>location-new-patient</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>location-new-patient-from-network</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient-from-network</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>endpoint</td>
         <td>http://hl7.org/fhir/SearchParameter/Location-endpoint</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>organization</td>
         <td>http://hl7.org/fhir/SearchParameter/Location-organization</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>partof</td>
         <td>http://hl7.org/fhir/SearchParameter/Location-partof</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>type</td>
         <td>http://hl7.org/fhir/SearchParameter/Location-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>location-via-intermediary</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/location-via-intermediary</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
   </table>
   <p></p>
   <h4><b>Organization</b> Resource</h4>
   Conformance:  <b>SHALL</b><p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-Organization<b>   Conformance:   </b>SHALL<b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-Network<b>   Conformance:   </b>SHALL</p><b>Interactions: </b><table border=\"2\">
      <tr>
         <th>Interaction</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>read</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>search-type</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>vread</td>
         <td>MAY</td>
      </tr>
      <tr>
         <td>history-instance</td>
         <td>MAY</td>
      </tr>
      <tr>
         <td>history-type</td>
         <td>MAY</td>
      </tr>
   </table><br /><b>SearchIncludes:  </b>Organization:endpoint, Organization:organization-identifier-assigner, Organization:partof, Organization:organization-via-intermediary, 
   <p></p><b>SearchRevIncludes:  </b>CareTeam:careteam-organization, CareTeam:careteam-identifier-assigner, CareTeam:careteam-via-intermediary, Endpoint:endpoint-identifier-assigner, Endpoint:organization, HealthcareService:organization, HealthcareService:healthcareservice-new-patient-from-network, HealthcareService:healthcareservice-via-intermediary, InsurancePlan:administered-by, InsurancePlan:owned-by, InsurancePlan:insuranceplan-coverage-network, InsurancePlan:insuranceplan-plan-network, InsurancePlan:insuranceplan-network, Location:location-via-intermediary, Location:location-new-patient-from-network, Location:organization, Organization:organization-identifier-assigner, Organization:organization-via-intermediary, Organization:partof, OrganizationAffiliation:network, OrganizationAffiliation:participating-organization, OrganizationAffiliation:primary-organization, OrganizationAffiliation:organizationaffiliation-via-intermediary, Practitioner:practitioner-identifier-assigner, Practitioner:practitioner-qualification-issuer, Practitioner:practitioner-via-intermediary, PractitionerRole:organization, PractitionerRole:practitionerrole-network, PractitionerRole:practitionerrole-new-patient-from-network, VerificationResult:verificationresult-validator-organization, Practitioner:practitioner-qualification-issuer, VerificationResult:verificationresult-attestation-who, 
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
         <td>organization-identifier-assigner</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/organization-identifier-assigner</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>organization-via-intermediary</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/organization-via-intermediary</td>
         <td>reference</td>
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
   <h4><b>OrganizationAffiliation</b> Resource</h4>
   Conformance:  <b>SHALL</b><p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-OrganizationAffiliation<b>   Conformance:   </b>SHALL</p><b>Interactions: </b><table border=\"2\">
      <tr>
         <th>Interaction</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>read</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>search-type</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>vread</td>
         <td>MAY</td>
      </tr>
      <tr>
         <td>history-instance</td>
         <td>MAY</td>
      </tr>
      <tr>
         <td>history-type</td>
         <td>MAY</td>
      </tr>
   </table><br /><b>SearchIncludes:  </b>OrganizationAffiliation:network, OrganizationAffiliation:participating-organization, OrganizationAffiliation:primary-organization, OrganizationAffiliation:organizationaffiliation-via-intermediary, 
   <p></p><b>SearchRevIncludes:  </b>CareTeam:careteam-via-intermediary, Endpoint:endpoint-via-intermediary, HealthcareService:healthcareservice-via-intermediary, Location:location-via-intermediary, Organization:network-via-intermediary, Organization:organization-via-intermediary, OrganizationAffiliation:organizationaffiliation-via-intermediary, Practitioner:practitioner-via-intermediary, PractitionerRole:practitionerrole-via-intermediary, 
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
   <h4><b>Practitioner</b> Resource</h4>
   Conformance:  <b>SHALL</b><p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-Practitioner<b>   Conformance:   </b>SHALL</p><b>Interactions: </b><table border=\"2\">
      <tr>
         <th>Interaction</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>read</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>search-type</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>vread</td>
         <td>MAY</td>
      </tr>
      <tr>
         <td>history-instance</td>
         <td>MAY</td>
      </tr>
      <tr>
         <td>history-type</td>
         <td>MAY</td>
      </tr>
   </table><br /><b>SearchIncludes:  </b>Practitioner:practitioner-endpoint, Practitioner:practitioner-identifier-assigner, Practitioner:practitioner-qualification-issuer, Practitioner:practitioner-via-intermediary, 
   <p></p><b>SearchRevIncludes:  </b>VerificationResult:verificationresult-attestation-who, PractitionerRole:practitioner, 
   <p></p><b>SearchParameters: </b><table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>practitioner-endpoint</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-endpoint</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>practitioner-identifier-assigner</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-identifier-assigner</td>
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
         <td>practitioner-qualification-issuer</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-issuer</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>practitioner-qualification-period</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-period</td>
         <td>date</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>practitioner-via-intermediary</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-via-intermediary</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>practitioner-qualification-wherevalid-code</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-wherevalid-code</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>family</td>
         <td>http://hl7.org/fhir/SearchParameter/individual-family</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>gender</td>
         <td>http://hl7.org/fhir/SearchParameter/individual-gender</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>given</td>
         <td>http://hl7.org/fhir/SearchParameter/individual-given</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>phonetic</td>
         <td>http://hl7.org/fhir/SearchParameter/individual-phonetic</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>identifier</td>
         <td>http://hl7.org/fhir/SearchParameter/Practitioner-identifier</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>name</td>
         <td>http://hl7.org/fhir/SearchParameter/Practitioner-name</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
   </table>
   <p></p>
   <h4><b>PractitionerRole</b> Resource</h4>
   Conformance:  <b>SHALL</b><p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhPnQry-PractitionerRole<b>   Conformance:   </b>SHALL</p><b>Interactions: </b><table border=\"2\">
      <tr>
         <th>Interaction</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>read</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>search-type</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>vread</td>
         <td>MAY</td>
      </tr>
      <tr>
         <td>history-instance</td>
         <td>MAY</td>
      </tr>
      <tr>
         <td>history-type</td>
         <td>MAY</td>
      </tr>
   </table><br /><b>SearchIncludes:  </b>PractitionerRole:endpoint, PractitionerRole:location, PractitionerRole:practitionerrole-network, PractitionerRole:practitionerrole-new-patient-from-network, PractitionerRole:organization, PractitionerRole:practitioner, PractitionerRole:service, PractitionerRole:practitionerrole-via-intermediary, 
   <p></p><b>SearchRevIncludes:  </b>CareTeam:careteam-via-intermediary, Endpoint:endpoint-via-intermediary, HealthcareService:healthcareservice-via-intermediary, Location:location-via-intermediary, Organization:organization-via-intermediary, OrganizationAffiliation:organizationaffiliation-via-intermediary, Practitioner:practitioner-via-intermediary, PractitionerRole:practitionerrole-via-intermediary, 
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
         <td>practitionerrole-via-intermediary</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-via-intermediary</td>
         <td>reference</td>
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