### Support discovery of electronic service information to enable the electronic exchange of information. 
Electronic Service Information can be discovered by using any combination of data elements in a NDH entry using a fully qualified query to discover zero or more resulting records.  These data elements in a query can include demographic data, geographic data, individual provider data, specialty data, National Provider Identity (NPI), organization, Tax Identification Number (TIN), etc.  The results may include no records, one record, or multiple records

#### Use Case Actors
This diagram illustrates the interactions of various actors with the National Directory for Healthcare (NDH).

<figure>
    {% include Ndh-usecase-actor.svg %}
    <figcaption></figcaption>
</figure>
<br />

#### Information Flow
This diagram shows the information flow for this Use Case including the major senders and receivers (Actors) involved and the type(s) of information shared.

<figure>
    {% include Query-Information-flow.svg %}
    <figcaption></figcaption>
</figure>
<br />

An Actor seeking Electronic Service Information sends a fully qualified query to the NDH. The query may include any combination of data elements, and may also include relative constructs such as “within 20 miles.” Queries may include partial values and may include inexact matches. The NDH processes the query and returns zero or more results to the Actor that sent the query. The results returned can include all or part of the record. The NDH should support queries including in the table below, but not necessarily limited to:

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| Query | Query Name | Query Description | Examples |
| 1     | Find Individual | Request a list of individuals by specifying one or more individual attributes | Find a practitioner by Name <br /> ```GET [base]/Practitioner?name=Hans Solo``` |
| 2     | Find Unique Individual | Request a specific individual by specifying an individual unique reference ID | Find a practitioner by NPI <br />```GET [base]/Practitioner?identifier=http://hl7.org/fhir/sid/use-npi|1003357849```|
| 3     | Find Organization | Request a list of organizations and relationships to other organizations by specifying one or more organization attributes | ```GET [base]/Organization?identifier=http://hl7.org/fhir/sid/use-npi|1518575422&_revinclude=OrganizationAffiliation:participating-organization```|
| 4     | Find Unique Organization | Request a specific organization and relationships to other organizations by specifying an organization unique reference ID | ```GET [base]/OrganizationAffiliation?primary-organization.identifier=http://hl7.org/fhir/sid/use-npi|1518575422&_include=OrganizationAffiliation:primary-organization&include=OrganizationAffiliation:participating-organization```|
| 5     | Find Organizations for Unique Individual | Request a specific individual and related organizations by specifying an individual unique reference ID and one or more attributes of organizations; organizations and relationships to the specified individual are returned when the organization matches the organization attributes and has a relationship to the individual specified;  attributes on the relationship between the individual and organization can also be specified in this query and further constrain which organizations and relationships are returned | 1. Since a practitioner could provide the service to multiple organizations. Those organizations are not limited to one hospital system. <br /> ```GET [base]/Practitioner/?identifier=http://hl7.org/fhir/sid/us-npi|1003357849&_revinclude=PractitionerRole:practitioner``` <br /><br /> 2. A practitioner in the city of Boston related to multiple organization <br />  ```GET [base]/PractitionerRole?practitioner.identifier=http://hl7.org/fhir/sid/use-npi|1003357849&organization.address-city=Boston&_include=PractitionerRole:practitioner&include=PractitionerRole:organization``` |
| 6     | Find Individuals for Unique Organization | Request a specific organization and related individuals by specifying an organization unique reference ID and one or more attributes of individuals; individuals and relationships to the specified organization are returned when the individual matches the individual attributes and has a relationship to the organization specified; attributes on the relationship between the individual and organization can also be specified in this query and further constrain which individuals and relationships are returned | ```GET [base]/PractitionerRole?organization.identifiery=http://hl7.org/fhir/sid/use-npi|1518575422&_include=PractitionerRole:practitioner```|
| 7     | Find Individuals and Organizations | Request a list of individuals, organizations and relationships between (individuals/organization or organization/organization) based on attributes of individuals, organizations and individual/organization relationships;  response includes all objects (whether individual, organization or relationship) where the individuals match all of the individual attributes specified, the organizations match all of the organization attributes and where a relationship exists between each individual and one or more organizations returned. In the event the query includes one or more attributes regarding the relationship, then each relationship returned must match all the attributes specified; for each organization returned, all its relationships, as parent or child, with other organizations are returned | 1. Practitioners and associated Organizations <br />```GET [base]/PractitionerRole?practitioner.address-state=FL&_include=PractitionerRole:practitioner&_include=PractitionerRole:organization``` <br /><br /> 2. Organizations with Organizations <br /> ```GET [base]/OrganizationAffiliation?organization.address-state=FL&_include=OrganizationAffiliation:primary-organization&_include=OrganizationAffiliation:participant-organization``` <br /><br />3. Find all providers have relationship in the state of CT <br /> ```GET [base]/PractitionerRole/?location.address-state=CT&include=*_revinclude=*``` <br /><br /> 4. Query all Endocrinology, Diabetes & Metabolism Physician in the city of Bridgeport, CT accept new patient <br />```GET [base]/PractitionerRole/?specialty=http://nucc.org/provider-taxonomy|207RE0101X&new-patient=newpt&location.address-city=Bridgeport&location.address-state=CT&_include=*&_revinclude=* ``` |



### The NDH Consumer application help patients seeking healthcare providers

#### Use case: A patient seeks orthopedic services by using the NDH consumer application online
This scenario involves an individual looking for an orthopedic surgeon associated with the Hartford Orthopedics Group, which provides orthopedic care as part of the Acme of CT network HMO insurance plan at Hartford General Hospital. Hartford Orthopedics has two distinct locations, each with specific criteria for accepting new patients. The individual aims to select the facility that best matches the individual specific needs and availability. Additionally, the individual is interested in finding out the service hours of the location he choose.

<figure>
    {% include Condition-flow-Patient.svg %}
    <figcaption></figcaption>
</figure>

The FHIR Resources are used to support this use case:
- PractitionerRole
- InsurancePlan
- Organization
- Location
- Network

Begin the search by identifying the practitionerRole for both the practitioner and the organization; next, locate the network associated with this role that corresponds with the insurance plan's network. Then, identify the locations linked to this practitionerRole, and determine if these locations are accepting new patients and what their operating hours are.

<figure>
    {% include Condition-flow-resources.svg %}
    <figcaption></figcaption>
</figure>

### Utilize the NDH to locate endpoints for payer-to-payer API interactions
For the successful implementation of a Payer-to-Payer API, it is essential to establish and maintain a rigorous procedure for endpoint verification. This procedure ensures that access to and interaction with the API is restricted to authenticated healthcare organizations. The national directory provides a listing of payer information and their connections.

In the National Directory, a payer is identified as an organization classified under the type "payer." A unique identifier is assigned to a payer when it attests to the National Directory. The National Directory confirms the accuracy of the payer's details directly from the primary source. To verify the accuracy of the data, the payer's resource includes an element that indicates its verification status. Each payer may have multiple endpoints to support the functionality of the Payer-to-Payer API. Through a member matching process, a new payer can locate an existing payer in the National Directory and discover its associated endpoints. For endpoints that use mutual TLS (mTLS), the endpoint contains the mutual TLS public certificate which is shared to facilitate mutual TLS connections. Additionally, the payer's endpoint could be the UDAP well known endpoint if the payer organization supports UDAP.

The resources employed for these scenarios include:
- Endpoint
- Organization

<figure>
    {% include PayerToPay-endpoints.svg %}
    <figcaption></figcaption>
</figure>

To find a payer organization and associate endpoints:
```
GET [base]/Organization?type=payer&name=Florida Blue&_include:Organization:endpoint
```

### Utilize the NDH to verify the legitimacy of requesting providers for Provider API interactions
To facilitate the Provider API, it's crucial to verify the legitimacy of requesting providers once a payer has confirmed their member relationship with a provider. This verification should take place during the provider's initial attempt to connect to the payer's API endpoint. Before granting access, the payer might require certain information and impose specific conditions for connectivity to ensure that only legitimate, legally authorized organizations can access the endpoint. Establishing a systematic process for endpoint connectivity is essential for Provider Access interactions. Payers can manage this process in-house or delegate it to a chosen vendor. While each payer might maintain its own directory, essential verification data, such as the provider's identity, service locations, and EHR data access endpoints, should be obtainable from the National Directory.

Providers may affiliate with multiple organizations (such as several hospitals) and practice at various locations within the same organization. The National Directory provides accurate details of a provider's relationships, including their practice locations, affiliated organizations, network status with health plans, and endpoints for information exchange.

The resources employed for these scenarios include:
- Practitioner
- PractitionerRole
- Organization
- Network
- InsurancePlan
- Location
- Endpoint

An endpoint for a provider could be supplied by the associated organization (hospital), a specific endpoint for a given role, or an endpoint at the location where the practitioner provides the service.

<figure>
    {% include Provider-api.svg %}
    <figcaption></figcaption>
</figure>

### Utilize the NDH to find a practitioner practice with multiple organizations
A practitioner who works across various hospitals can engage in the CMS Merit-based Incentive Payment System (MIPS) for quality measures. The process involves gathering and submitting data from numerous locations. The National Directory of Health (NDH) catalogues every association the practitioner holds with the hospitals they serve. This comprehensive listing aids third parties in locating all necessary endpoints to aggregate the data efficiently.

The resources employed for these scenarios include:
- Practitioner
- PractitionerRole
- Organization

<figure>
    {% include Multiple-practitionerRoles.svg %}
    <figcaption></figcaption>
</figure>

### Utilize the NDH to find a practitioner and the practitioner's endpoint for payer
Payers may need to locate an in-network provider and the endpoint of that provider. A provider could operate across multiple locations, being an in-network provider at one location but not at another. Here is an example illustrating this situation.

A practitioner is affiliated with an organization that has two locations. One location falls within the coverage area of an insurance plan, while the other is outside of it. This insurance plan is managed by an insurance network. To accommodate this situation, two distinct practitioner roles have been established. One role is linked to the insurance network, whereas the other is not. The PractitionerRole resource connects the practitioner, organization, network, location, and endpoint. This diagram aims to help payers in identifying both the provider and the provider's endpoint accurately.

<figure>
    {% include Provider-in-out-network.svg %}
    <figcaption></figcaption>
</figure>

### Use cases for supporting HIE networks

NDH adopts the approach proposed in the IHE White Paper "Document Sharing Across Network Topologies" by utilizing the NDH OrganizationAffiliation resource to accommodate the various scenarios for federated, multi-hop, and proxied Endpoints. Specifically, we address how to represent the structure in the National Directory and ensure the successful execution of federated transactions, such as sending an XDR (Cross-Enterprise Document Reliable Interchange) push to a Document Recipient, intended for one or more recipients. 
The approach also includes implementing specific mechanisms to solve particular problems,  allowing each environment to only adopt the mechanisms it requires. For instance, 
if a directory can declare that all Organization.partOf relationships imply the flow of federated data, the OrganizationAffiliation profile may not be necessary. It is essential to ensure that all mechanisms work seamlessly together within the National Directory, taking into account multiple networks and perspectives.  

The key to this approach is the HIE-specific codes for OrganizationAffiliation.code, which are explained in the [CodeSystem: Organization Affiliation Role for HIE ](https://terminology.hl7.org/6.2.0/CodeSystem-organization-affiliation-role-for-hie.html#organization-affiliation-role-for-hie-HieInitiator ). These codes are added to the value set for the NDH profile for OrganizationAffiliation.

The National Directory provides multiple perspectives based on access, without relying on selective visibility. This means that all consumers, regardless of their perspective, can view all details in the National Directory. Here is an Example from IHE  "Document Sharing Across Network Topologies" White Paper. 
- Valley Region HIE has joined a nationwide health information exchange, Big Health Exchange.
- Big Health Exchange doesn't have any central service endpoints; it operates on a peer to peer model. 
- New Hope Medical Partners has joined Big Health Exchange and now has access to the desired organizations participating in Valley Region HIE through the Big Health Exchange. New Hope Medical Partners will access these organizations via the "Valley BigHx Responding Gateway" endpoints, which are associated with OrganizationAffiliation5.
- Valley Region HIE retains its internal service endpoints for PDQ (Patient Demographics Query) and XDS (Cross-Enterprise Document Sharing) for its members. Additionally, it has introduced initiating gateway endpoints to enable its members to access the Big Health Exchange and aggregate internal data.
- Async endpoints and their response endpoints show that even though members of Valley HIE utilize central services, they need individual async endpoints to receive responses.

We’ve omitted some details, since they aren’t involved in this Document Access example:
- New Hope’s Responding Gateway and internal details
- Push-style endpoint connection types

This example provides answers to the following questions: 
1. Which Valley Region HIE endpoints are listed in the National Directory?
2. Which Valley Region HIE endpoints can be accessed by members of Big Health Exchange?
3. Which Valley Region HIE endpoints are appropriate to use for a specific task at hand?


[This example was adapted from section 5.1.8 in the IHE Topologies white paper.](https://profiles.ihe.net/ITI/papers/Topologies/index.html#518-document-access-putting-it-all-together)

<figure>
    {% include OrganizationAffiliationIHE3.svg %}
    <figcaption> </figcaption>
</figure>

### Push-based Referral Use Case
Dr. Suwati from New Hope Medical Partners referred a patient to Dr. Santos at University Health. New Hope Medical Partners is a member of Big Health Exchange, while University Health participates in Valley Region HIE, which in turn is part of Big Health Exchange. Big Health Exchange operates without any central service endpoints, functioning on a peer-to-peer model.

The sequence diagram looks like:

<figure>
    {% include ITI-Comprehensive-multi-seq.svg %}
    <figcaption> </figcaption>
</figure>


The diagram illustrating the utilization of resources and their interconnections

<figure>
    {% include ITI-Comprehensive-multi-perspective.svg %}
    <figcaption> </figcaption>
</figure>


[This example was adapted from section 5.2.2 in the IHE Topologies white paper.](https://profiles.ihe.net/ITI/papers/Topologies/index.html#522-directory-representation)

###  Discover an HIE endpoint via the NDH
#### Use case:  Discovery of SutterHealth TEFCA endpoint
Actors:
- Health Information System (HIS)
- NDH (National Directory of Healthcare Providers & Services)

Preconditions:
- SutterHealth is a known participating organization in the Healthcare Organization.
- SutterHealth is participating in both the TEFCA-QHIN (eHealth Exchange) and CareQuality Health Information Exchange (HIE) networks.

Main Flow:
1. The user (in this case a software agent of system) queries NDH to find the SutterHealth Organization
2. The user queries NDH for the OrganizationAffiliation resource instance with the code for 'HIEResponder' and 'TEFCA-Organization' to find an affiliation related to SutterHealth.
3. NDH returns the OrganizationAffiliation resource instance
4. The endpoint contained in the OrganizationAffiliation resource instance is the SutterHealth TEFCA Endpoint


#### FHIR resources relationship diagram for the use case above
<figure>
    {% include OrganizationAffiliationIHE4.svg %}
    <figcaption></figcaption>
</figure>

### Associate an organization with an insurance plan that operates without any network.
A State InsurancePlan Entity may contract directly with a provider organization which provides the HealthcareService. A logical Network could be used to link an InsurancePlan and an Organization which provides the HealthcareService for the InsurancePlan via an OrganizationAffiliation.
<figure>
    {% include insranceplanPayByService.svg %}
    <figcaption> </figcaption>
</figure>

### Relationship use cases
#### Relationship between networks and participants
An entity, whether it be an organization or a practitioner, might be part of multiple networks. There may be occasions when a specific network becomes unavailable or when a member decides to withdraw from an active network. To manage these potential changes - one originating from the network itself and the other from the participant's side - the recommendation is to ensure that each PractitionerRole or OrganizationAffiliation resource instance only includes a single network.

The PractitionerRole is designated for practitioners, whereas the OrganizationAffiliation is geared towards organizations. Both these resources, PractitionerRole and OrganizationAffiliation, contain a period element. This element signifies the valid timeframe of a network's relationship with its participants. In the event of a change in this relationship, a new instance would be created, encompassing the updated period.

This method allows for the efficient management of transitions, avoiding the creation of a more intricate system that would involve tracking expiration dates across multiple resources and relationships.

[See Example](ndapi-examples.html#practitioner-and-networks)


###  Subscribe to receive real-time notifications when data is created, updated, or deleted on the NDH server

#### Subscribe to changes in practitioner qualification for providers in the state of Maryland
A change in a practitioner's qualifications doesn't only impact the practitioner, but also any associated organizations and services. By subscribing to the "practitioner-qualification-change" topic, subscribers will receive notifications about these changes.

In this scenario, a subscriber wishes to be alerted whenever a practitioner in Maryland undergoes a qualification change. They also want notifications to include the resource identifier for all affected resources.

Here is the example of the subscription:
[Topicbased-Subscription-Practitioner-Qualification-Change]


### Bulk export to access large volumes information on demand
**Bulk extract of all information for organizations, individuals, and services in the state of Maryland from the NDH**
```
GET [base]/$export?_type=Organization,OrganizationAffiliation,Practitioner,PractitionerRole,HealthcareService,Location,InsurancePlan
&_since=[transactionTime]
&_typeFilter=Organization?address-state=MD,
Organization?type=ntwk&address-state=MD,
OrganizationAffiliation?location.address-state=MD,
OrganizationAffiliation?service.location.address-state=MD,
Practitioner?address-state=MD,
PractitionerRole?location.address-state=MD,
PractitionerRole?service.location.address-state=MD,
PractitionerRole?network.type=ntwk&network.address-state=MD,
HealthcareService?location.address-state=MD,
Location?address-state=MD,
InsurancePlan?plan.coverageArea.address-state=MD,
&_outputFormat=application/fhir+ndjson
```
**Note:**
Bulk Data Export _typeFilter does not support _include and _revinclude search parameters.

### National Directory Scheduled Bulk Data Export
If a local directory needs to retrieve information from the National Directory on a scheduled basis, there are two approaches available.  
The first approach is a client-side solution, where a job scheduler script is written on the client side to execute the Bulk Data $export operation. This allows the client to control the export process and retrieve the data as needed.  
Alternatively, the second approach is to utilize the National Directory Scheduled Bulk Data $ndhschExport operation, which is a service-side solution available to all registered clients. Once the client has registered with the NDH, they only need to apply the $ndhschExport operation once. From then on, the system automatically exports the data to the specified file storage location based on the defined schedule, making it convenient for the client to retrieve the data.

[NdhschExport-operation-flow-diagram]

**Schedule extracts of specific resources for all organization and individuals in MD weekly**  

[OperationDefinition-NdhschExport]
```
GET [base]/$ndhschExport
?_type=Organization,OrganizationAffiliation,Practitioner,PractitionerRole,HealthcareService,Location,InsurancePlan
&_typeFilter=Organization?address-state=MD,_include=*,revinclude=*
&_outputFormat=application/fhir_ndjson
&_startdate=2023-06-01
&_frequency=weekly
&_account=example-1
&_action=create
```


{% include markdown-link-references.md %}
