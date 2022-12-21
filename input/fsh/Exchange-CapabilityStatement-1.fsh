RuleSet:       CapabilityCommon
* jurisdiction        = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* status              = #active
* date                = "2022-11-01"
* publisher           = "HL7 International - Patient Administration Work Group"
* contact[0].telecom[0].system = #url
* contact[0].telecom[0].value  = "http://hl7.org/Special/committees/pafm"
* kind                = #requirements
* fhirVersion         = #4.0.1
* format[+]           = #xml
* format[+]           = #json
* meta.profile = "http://hl7.org/fhir/StructureDefinition/CapabilityStatement"
//* implementationGuide = "http://hl7.org/fhir/us/ndh"

Instance: capabilityNdhExchangeServer
InstanceOf: CapabilityStatement
Usage: #definition
Title: "NDH Exchange Capability Statement"

* id = "ndh-exchange-server"
* name = "NdhExchangeCapabilityStatement"
* url = "http://hl7.org/fhir/us/ndh/CapabilityStatement/ndh-exchange-server"
* description = "This Section describes the expected capabilities of the NDH Server actor which is responsible 
for providing responses to the queries submitted by the NDH Requestors. The complete list of FHIR profiles, RESTful operations, 
and search parameters supported by NDH Servers are defined. NDH Clients have the option of choosing from this list to access necessary data 
based on their local use cases and other contextual requirements."
//* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"></div>"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
   <h4>RESTful Capabilities by Resource/Profile</h4>
   <p>NDH Exchange Server<b>   SHALL</b>:</p>
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
      <li>Identify the NDH Exchange Server profiles supported as part of FHIR <code>meta.profile</code> attribute for each instance</li>
      <li>Support the searchParameters on each profile individually and in combination (forward,
         reverse chaining on all search parameters that specify the 'chain' property)</li>
   </ol>
   <p><b>Security</b></p>
   <ol>
      <li>A server <b>SHALL</b> rejects any unauthorized requests by return an <code>HTTP 401</code> unauthorized response code</li>
   </ol>
   <h5><b>Resource Type:  </b>Endpoint<b>   Conformance:  </b>SHALL</h5>
   <p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhEx-Endpoint<b>   Conformance:   </b>SHALL      <br /></p>
   <p><b>SearchIncludes: </b></p>Endpoint:endpoint-identifier-assigner, Endpoint:endpoint-organization, <br /><p><b>SearchRevIncludes: </b></p>CareTeam:careteam-endpoint, HealthcareService:healthcareservice-endpoint, HealthcareService:insuranceplan-endpoint, HealthcareService:location-endpoint, HealthcareService:organization-endpoint, HealthcareService:organizationaffiliation-endpoint, HealthcareService:practitioner-endpoint, HealthcareService:practitionerrole-endpoint, <br /><p><b>Interactions: </b></p>
   <table border=\"2\">
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
   </table><br /><p><b>SearchParameters: </b></p>
   <table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>mine-type</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-mime-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>usecase-standard</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-standard</td>
         <td>uri</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>usecase-type</td>
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
         <td>endpoint-identifier-assigner</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-identifier-assigner</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>organization</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-organization</td>
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
   <h5><b>Resource Type:  </b>CareTeam<b>   Conformance:  </b>SHOULD</h5>
   <p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-CareTeam<b>   Conformance:   </b>SHALL      <br /></p>
   <p><b>SearchIncludes: </b></p>CareTeam:careteam-endpoint, CareTeam:careteam-identifier-assigner, CareTeam:careteam-location, CareTeam:careteam-organization, CareTeam:careteam-service, CareTeam:careteam-via-intermediary, <br /><p><b>SearchRevIncludes: </b></p><br /><p><b>Interactions: </b></p>
   <table border=\"2\">
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
   </table><br /><p><b>SearchParameters: </b></p>
   <table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>careteam-endpoint</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/careteam-endpoint</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>careteam-location</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/careteam-location</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>careteam-name</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/careteam-name</td>
         <td>string</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>careteam-organization</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/careteam-organization</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>careteam-service</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/careteam-service</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>careteam-category</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/careteam-category</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>careteam-via-intermediary</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/careteam-via-intermediary</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>careteam-identifier-assigner</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/careteam-identifier-assigner</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
   </table>
   <h5><b>Resource Type:  </b>HealthcareService<b>   Conformance:  </b>SHALL</h5>
   <p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhEx-HealthcareService<b>   Conformance:   </b>SHALL      <br /></p>
   <p><b>SearchIncludes: </b></p>HealthcareService:healthcareservice-coverage-area, HealthcareService:healthcareservice-endpoint, HealthcareService:healthcareservice-location, HealthcareService:healthcareservice-new-patient-from-network, HealthcareService:healthcareservice-organization, HealthcareService:healthcareservice-via-intermediary, <br /><p><b>SearchRevIncludes: </b></p>CareTeam:careteam-service, OrganizationAffiliation:organizationaffiliation-service, PractitionerRole:practitionerrole-service, <br /><p><b>Interactions: </b></p>
   <table border=\"2\">
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
   </table><br /><p><b>SearchParameters: </b></p>
   <table border=\"2\">
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
         <td>healthcareservice-coverage-area</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-coverage-area</td>
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
         <td>healthcareservice-endpoint</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-endpoint</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>healthcareservice-location</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-location</td>
         <td>reference</td>
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
         <td>healthcareservice-organization</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-organization</td>
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
   </table>
   <h5><b>Resource Type:  </b>InsurancePlan<b>   Conformance:  </b>SHALL</h5>
   <p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-InsurancePlan<b>   Conformance:   </b>SHALL      <br /></p>
   <p><b>SearchIncludes: </b></p>InsurancePlan:insuranceplan-administered-by, InsurancePlan:insuranceplan-coverage-area, InsurancePlan:insuranceplan-coverage-network, InsurancePlan:insuranceplan-endpoint, InsurancePlan:insuranceplan-owned-by, InsurancePlan:insuranceplan-plan-coverage-area, InsurancePlan:insuranceplan-plan-network, InsurancePlan:insuranceplan-network, <br /><p><b>SearchRevIncludes: </b></p><br /><p><b>Interactions: </b></p>
   <table border=\"2\">
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
   </table><br /><p><b>SearchParameters: </b></p>
   <table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>insuranceplan--administered-by</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-area</td>
         <td>reference</td>
         <td>SHALL</td>
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
         <td>insuranceplan-endpoint</td>
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
         <td>insuranceplan-owned-by</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-network</td>
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
   </table>
   <h5><b>Resource Type:  </b>Location<b>   Conformance:  </b>SHALL</h5>
   <p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhEx-Location<b>   Conformance:   </b>SHALL      <br /></p>
   <p><b>SearchIncludes: </b></p>Location:location-endpoint, Location:location-new-patient-from-network, Location:location-organization, Location:location-partof, Location:location-via-intermediary, <br /><p><b>SearchRevIncludes: </b></p>CareTeam:careteam-via-intermediary, HealthcareService:healthcareservice-via-intermediary, Location:location-via-intermediary, Organization:organization-via-intermediary, Practitioner:practitioner-via-intermediary, PractitioneRrole:practitionerrole-via-intermediary, <br /><p><b>Interactions: </b></p>
   <table border=\"2\">
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
   </table><br /><p><b>SearchParameters: </b></p>
   <table border=\"2\">
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
         <td>location-endpoint</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/location-endpoint</td>
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
         <td>location-new-patient-from-network</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient-from-network</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>location-organization</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/location-organization</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>location-partof</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/location-partof</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>location-type</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/location-type</td>
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
   <h5><b>Resource Type:  </b>Organization<b>   Conformance:  </b>SHALL</h5>
   <p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Organization<b>   Conformance:   </b>SHALL      <br /><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Network<b>   Conformance:   </b>SHALL      <br /></p>
   <p><b>SearchIncludes: </b></p>Organization:network-coverage-area, Organization:organization-endpoint, Organization:organization-identifier-assigner, Organization:organization-partof, Organization:organization-via-intermediary, <br /><p><b>SearchRevIncludes: </b></p>CareTeam:careteam-endpoint, CareTeam:careteam-identifier-assigner, Endpoint:endpoint-identifier-assigner, Endpoint:endpoint-organization, HealthcareService:healthcareservice-organization, InsurancePlan:insuranceplan-administered-by, InsurancePlan:insuranceplan-owned-by, Location:location-endpoint, Location:location-organization, Organization:organization-identifier-assigner, Organization:organization-partof, <br /><p><b>Interactions: </b></p>
   <table border=\"2\">
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
   </table><br /><p><b>SearchParameters: </b></p>
   <table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>organization-endpoint</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/organization-endpoint</td>
         <td>reference</td>
         <td>SHALL</td>
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
         <td>organization-partof</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/organization-partof</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>organization-via-intermediary</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/organization-via-intermediary</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
   </table>
   <h5><b>Resource Type:  </b>OrganizationAffiliation<b>   Conformance:  </b>SHALL</h5>
   <p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhEx-OrganizationAffiliation<b>   Conformance:   </b>SHALL      <br /></p>
   <p><b>SearchIncludes: </b></p><br /><p><b>SearchRevIncludes: </b></p><br /><p><b>Interactions: </b></p>
   <table border=\"2\">
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
   </table><br /><p><b>SearchParameters: </b></p>
   <table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
   </table>
   <h5><b>Resource Type:  </b>Practitioner<b>   Conformance:  </b>SHALL</h5>
   <p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Practitioner<b>   Conformance:   </b>SHALL      <br /></p>
   <p><b>SearchIncludes: </b></p><br /><p><b>SearchRevIncludes: </b></p><br /><p><b>Interactions: </b></p>
   <table border=\"2\">
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
   </table><br /><p><b>SearchParameters: </b></p>
   <table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
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
   </table>
   <h5><b>Resource Type:  </b>PractitionerRole<b>   Conformance:  </b>SHALL</h5>
   <p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndhEx-PractitionerRole<b>   Conformance:   </b>SHALL      <br /></p>
   <p><b>SearchIncludes: </b></p><br /><p><b>SearchRevIncludes: </b></p><br /><p><b>Interactions: </b></p>
   <table border=\"2\">
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
   </table><br /><p><b>SearchParameters: </b></p>
   <table border=\"2\">
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
         <td>practitionerrole-new-patient-network</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient-network</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>practitionerrole-via-intermediary</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-via-intermediary</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
   </table>
   <h5><b>Resource Type:  </b>Consent<b>   Conformance:  </b>SHALL</h5>
   <p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Restriction<b>   Conformance:   </b>SHALL      <br /></p>
   <p><b>SearchIncludes: </b></p><br /><p><b>SearchRevIncludes: </b></p><br /><p><b>Interactions: </b></p>
   <table border=\"2\">
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
   </table><br /><p><b>SearchParameters: </b></p>
   <table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
   </table>
   <h5><b>Resource Type:  </b>VerificationResult<b>   Conformance:  </b>SHALL</h5>
   <p><b>Supported Profile:   </b>http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Verification<b>   Conformance:   </b>SHALL      <br /></p>
   <p><b>SearchIncludes: </b></p><br /><p><b>SearchRevIncludes: </b></p><br /><p><b>Interactions: </b></p>
   <table border=\"2\">
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
   </table><br /><p><b>SearchParameters: </b></p>
   <table border=\"2\">
      <tr>
         <th>SearchParameter Name</th>
         <th>definition</th>
         <th>type</th>
         <th>Conformance</th>
      </tr>
      <tr>
         <td>verificationresult-attestation-communication-method</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-attestation-communication-method</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>verificationresult-attestation-onbehalfof</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-attestation-onbehalfof</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>verificationresult-attestation-who</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-attestation-who</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>verificationresult-primarysource-validation-date</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-validation-date</td>
         <td>date</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>verificationresult-primarysource-validation-status</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-validation-status</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>verificationresult-primarysource-type</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-type</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>verificationresult-primarysource-who</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-who</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>verificationresult-status-date</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-status-date</td>
         <td>date</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>verificationresult-status</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-status</td>
         <td>token</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>verificationresult-target</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-target</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
      <tr>
         <td>verificationresult-validator-organization</td>
         <td>http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-validator-organization</td>
         <td>reference</td>
         <td>SHALL</td>
      </tr>
   </table>
</div>"
* text.status = #generated
* insert CapabilityCommon
* rest[+].mode = #server
* rest[=].mode.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest.documentation = "NDH Exchange Server"

* rest[=].interaction[+].code = #search-system
* rest[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHOULD
* rest[=].interaction[=].documentation = "The NDH Server **SHOULD**"
* rest[=].interaction[+].code = #history-system
* rest[=].interaction[=].code.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHOULD
* rest[=].interaction[=].documentation = "The NDH Server **SHOULD**"

//=================================================
// Endpoint
//=================================================
* rest[=].resource[+].type = #Endpoint
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhEx-Endpoint"
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
* rest[=].resource[=].searchInclude[+] = "Endpoint:endpoint-organization"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:healthcareservice-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:insuranceplan-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:location-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:organization-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:organizationaffiliation-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:practitioner-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:practitionerrole-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


* rest[=].resource[=].searchParam[+].name = "mine-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-mime-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


* rest[=].resource[=].searchParam[+].name = "usecase-standard"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-standard"
* rest[=].resource[=].searchParam[=].type = #uri
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "usecase-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


* rest[=].resource[=].searchParam[+].name = "connection-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Endpoint-connection-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "identifier"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Endpoint-identifier"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "endpoint-identifier-assigner"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-identifier-assigner"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-organization"
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
// CareTeam
//======================================================
* rest[=].resource[+].type = #CareTeam
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHOULD
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-CareTeam"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].documentation = "CareTeam Resource, supportedProfile, interaction, search parameter"

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

* rest[=].resource[=].searchInclude[+] = "CareTeam:careteam-endpoint"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "CareTeam:careteam-identifier-assigner"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "CareTeam:careteam-location"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "CareTeam:careteam-organization"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "CareTeam:careteam-service"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "CareTeam:careteam-via-intermediary"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


* rest[=].resource[=].searchParam[+].name = "careteam-endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-endpoint"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "careteam-location"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-location"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "careteam-name"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-name"
* rest[=].resource[=].searchParam[=].type = #string
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "careteam-organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-organization"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "careteam-service"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-service"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "careteam-category"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-category"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "careteam-via-intermediary"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-via-intermediary"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "careteam-identifier-assigner"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-identifier-assigner"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


//======================================================
// HealthcareService
//======================================================
* rest[=].resource[+].type = #HealthcareService
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhEx-HealthcareService"
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

* rest[=].resource[=].searchInclude[+] = "HealthcareService:healthcareservice-coverage-area"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "HealthcareService:healthcareservice-endpoint"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "HealthcareService:healthcareservice-location"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "HealthcareService:healthcareservice-new-patient-from-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "HealthcareService:healthcareservice-organization"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchInclude[+] = "HealthcareService:healthcareservice-via-intermediary"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-service"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "OrganizationAffiliation:organizationaffiliation-service"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "PractitionerRole:practitionerrole-service"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-category"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-category"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-coverage-area"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-coverage-area"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-eligibility"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-eligibility"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-endpoint"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-location"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-location"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-new-patient"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-new-patient-from-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient-from-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "healthcareservice-organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-organization"
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

//======================================================
// InsurancePlan
//======================================================
* rest[=].resource[+].type = #InsurancePlan
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-InsurancePlan"
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

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-administered-by"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-coverage-area"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-coverage-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-endpoint"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-owned-by"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-plan-coverage-area"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-plan-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "InsurancePlan:insuranceplan-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan--administered-by"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-area"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

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

* rest[=].resource[=].searchParam[+].name = "insuranceplan-endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "insuranceplan-owned-by"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-network"
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



//======================================================
// Location
//======================================================
* rest[=].resource[+].type = #Location
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhEx-Location"
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

* rest[=].resource[=].searchInclude[+] = "Location:location-endpoint"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Location:location-new-patient-from-network"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Location:location-organization"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Location:location-partof"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Location:location-via-intermediary"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:healthcareservice-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Location:location-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Organization:organization-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Practitioner:practitioner-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "PractitioneRrole:practitionerrole-via-intermediary"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


* rest[=].resource[=].searchParam[+].name = "location-accessibility"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-accessibility"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-contains"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-contains"
* rest[=].resource[=].searchParam[=].type = #special
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-endpoint"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-new-patient"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-new-patient-from-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-new-patient-from-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-organization"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-partof"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-partof"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "location-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/location-type"
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
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Organization"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Network"
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


* rest[=].resource[=].searchInclude[+] = "Organization:network-coverage-area"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Organization:organization-endpoint"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Organization:organization-identifier-assigner"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Organization:organization-partof"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchInclude[+] = "Organization:organization-via-intermediary"
* rest[=].resource[=].searchInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "CareTeam:careteam-identifier-assigner"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Endpoint:endpoint-identifier-assigner"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Endpoint:endpoint-organization"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "HealthcareService:healthcareservice-organization"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "InsurancePlan:insuranceplan-administered-by"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "InsurancePlan:insuranceplan-owned-by"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Location:location-endpoint"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Location:location-organization"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Organization:organization-identifier-assigner"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].searchRevInclude[+] = "Organization:organization-partof"
* rest[=].resource[=].searchRevInclude[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL


* rest[=].resource[=].searchParam[+].name = "organization-endpoint"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/organization-endpoint"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "network-coverage-area"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/network-coverage-area"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "organization-identifier-assigner"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/organization-identifier-assigner"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "organization-partof"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/organization-partof"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "organization-via-intermediary"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/organization-via-intermediary"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

//======================================================
// OrganizationAffiliation
//======================================================
* rest[=].resource[+].type = #OrganizationAffiliation
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhEx-OrganizationAffiliation"
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


//======================================================
// Practitioner
//======================================================
* rest[=].resource[+].type = #Practitioner
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Practitioner"
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


//======================================================
// PractitionerRole
//======================================================
* rest[=].resource[+].type = #PractitionerRole
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndhEx-PractitionerRole"
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

* rest[=].resource[=].searchParam[+].name = "practitionerrole-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "practitionerrole-new-patient"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "practitionerrole-new-patient-network"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient-network"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "practitionerrole-via-intermediary"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-via-intermediary"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

//======================================================
// Restrication
//======================================================
* rest[=].resource[+].type = #Consent
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Restriction"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].documentation = "Restriction Resource, supportedProfile, interaction"

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

//======================================================
// Verification
//======================================================
* rest[=].resource[+].type = #VerificationResult
* rest[=].resource[=].type.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].supportedProfile[+] = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Verification"
* rest[=].resource[=].supportedProfile[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[=].resource[=].documentation = "Verification Resource, supportedProfile, interaction, search parameter"

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

* rest[=].resource[=].searchParam[+].name = "verificationresult-attestation-communication-method"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-attestation-communication-method"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-attestation-onbehalfof"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-attestation-onbehalfof"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-attestation-who"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-attestation-who"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-primarysource-validation-date"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-validation-date"
* rest[=].resource[=].searchParam[=].type = #date
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-primarysource-validation-status"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-validation-status"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-primarysource-type"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-type"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-primarysource-who"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-who"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-status-date"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-status-date"
* rest[=].resource[=].searchParam[=].type = #date
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-status"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-status"
* rest[=].resource[=].searchParam[=].type = #token
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-target"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-target"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* rest[=].resource[=].searchParam[+].name = "verificationresult-validator-organization"
* rest[=].resource[=].searchParam[=].definition = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-validator-organization"
* rest[=].resource[=].searchParam[=].type = #reference
* rest[=].resource[=].searchParam[=].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
