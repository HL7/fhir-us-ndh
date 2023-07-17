### Support discovery of Electronic Service Information (ESI) to enable the electronic exchange of information. 
ESI can be discovered by using any combination of data elements in a NDH entry using a fully qualified query to discover zero or more resulting records.  These data elements in a query can include demographic data, geographic data, individual provider data, specialty data, National Provider Identity (NPI), organization, Tax Identification Number (TIN), etc.  The results may include no records, one record, or multiple records

#### Users and Actors
Primary list of Users and Actors:
- Provider - Any individual or entity that provides healthcare related services or goods directly, or in support of, healthcare delivery
- Consumer - Any consumer, or potential consumer, of healthcare services or goods
- Benefits coordinator - An individual who provides help to employees navigating the benefits process, including healthcare benefits
- Care coordinator
- Referral coordinator
- Discharge planner
- Credentialing personnel (Hospital and Plan)
- Health Information Exchange (HIE)
- Health Information Network (HIN)
- Accountable Care Organization (ACO)
- Value based plan
- Managed care plan organization
- Licensing board
- Plan network management (enrollment and contracting)
- Plan claims management
- Plan directory maintenance management
- Health Information Service Provider (HISP) (if EHNAC-DTAAP accredited or participating in NATE Trust Bundle)
- Compliance/auditing staff
- Data analysts
- State registries, e.g. Immunization Information System(s) (IIS)
- Systems or Services (e.g. other infrastructure such as a Patient-Provide Attribution Service)

#### Information Flow
This diagram shows the information flow for this Use Case including the major senders and receivers (Actors) involved and the type(s) of information shared.

<figure>
    {% include Query-Information-flow.svg %}
    <figcaption></figcaption>
</figure>
<br />

An Actor seeking ESI sends a fully qualified query to the NDH. The query may include any combination of data elements, and may also include relative constructs such as “within 20 miles.” Queries may include partial values and may include inexact matches. The NDH processes the query and returns zero or more results to the Actor that sent the query. The results returned can include all or part of the record. The NDH should support queries including in the table below, but not necessarily limited to:

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| Query | Query Name | Query Description | Examples |
| 1     | Find Individual | Request a list of individuals by specifying one or more individual attributes | Find a practitioner by Name <br /> ```GET [base]/Practitioner?name=Hans Solo``` |
| 2     | Find Unique Individual | Request a specific individual by specifying an individual unique reference ID | Find a practitioner by NPI <br />```GET [base]/Practitioner?identifier=http://hl7.org/fhir/sid/use-npi|1003357849```|
| 3     | Find Organization | Request a list of organizations and relationships to other organizations by specifying one or more organization attributes | ```GET [base]/Organization?identifier=http://hl7.org/fhir/sid/use-npi|1518575422&_revinclude=OrganizationAffiliation:participating-organization```|
| 4     | Find Unique Organization | Request a specific organization and relationships to other organizations by specifying an organization unique reference ID | ```GET [base]/OrganizationAffiliation?primary-organization.identifier=http://hl7.org/fhir/sid/use-npi|1518575422&_include=OrganizationAffiliation:primary-organization&include=OrganizationAffiliation:participating-organization```|
| 5     | Find Organizations for Unique Individual | Request a specific individual and related organizations by specifying an individual unique reference ID and one or more attributes of organizations; organizations and relationships to the specified individual are returned when the organization matches the organization attributes and has a relationship to the individual specified;  attributes on the relationship between the individual and organization can also be specified in this query and further constrain which organizations and relationships are returned | 1. Since a practitioner could provide the service fo multiple organizations. Those organizations are not limited to one hospital system. <br /> ```GET [base]/Practitioner/?identifier=http://hl7.org/fhir/sid/us-npi|1003357849&_revinclude=PractitionerRole:practitioner``` <br /><br /> 2. A practitioner in the city of Boston related to multiple organization <br />  ```GET [base]/PractionerRole?practitioner.identifier=http://hl7.org/fhir/sid/use-npi|1003357849&organization.address-city=Boston&_include=PractitionerRole:practitioner&include=PractitionerRole:organization``` |
| 6     | Find Individuals for Unique Organization | Request a specific organization and related individuals by specifying an organization unique reference ID and one or more attributes of individuals; individuals and relationships to the specified organization are returned when the individual matches the individual attributes and has a relationship to the organization specified; attributes on the relationship between the individual and organization can also be specified in this query and further constrain which individuals and relationships are returned | ```GET [base]/PractitionerRole?organization.identifiery=http://hl7.org/fhir/sid/use-npi|1518575422&_include=PractitionerRole:practitioner```|
| 7     | Find Individuals and Organizations | Request a list of individuals, organizations and relationships between (individuals/organization or organization/organization) based on attributes of individuals, organizations and individual/organization relationships;  response includes all objects (whether individual, organization or relationship) where the individuals match all of the individual attributes specified, the organizations match all of the organization attributes and where a relationship exists between each individual and one or more organizations returned. In the event the query includes one or more attributes regarding the relationship, then each relationship returned must match all the attributes specified; for each organization returned, all its relationships, as parent or child, with other organizations are returned | 1. Practitioners and associated Organizations <br />```GET [base]/PractitionerRole?practitioner.address-state=FL&_include=PractionerRole:practitioner&_include=PractitionerRole:organization``` <br /><br /> 2. Organizations with Organizations <br /> ```GET [base]/OrganizationAffiliation?organization.address-state=FL&_include=OrganizationAffiliation:primary-organization&_include=OrganizationAffiliation:participant-organization``` <br /><br />3. Find all providers have relationship in the state of CT <br /> ```GET [base]/PractitionerRole/?location.address-state=CT&include=*_revinclude=*``` <br /><br /> 4. Query all Endocrinology, Diabetes & Metabolism Physician in the city of Bridgeport, CT accept new patient <br />```GET [base]/PractitionerRole/?specialty=http://nucc.org/provider-taxonomy|207RE0101X&practitionerrole-new-patient=newpt&location.address-city=Bridgeport&location.address-state=CT&_include=*&_revinclude=* ``` |


###  Subscribe to receive real-time notifications when data is created, updated, or deleted on the NDH server

#### Subscribe to changes in practitioner qualification for providers in the state of Maryland
A change in a practitioner's qualifications doesn't only impact the practitioner, but also any associated organizations and services. By subscribing to the "practitioner-qualification-change" topic, subscribers will receive notifications about these changes.

In this scenario, a subscriber wishes to be alerted whenever a practitioner in Maryland undergoes a qualification change. They also want notifications to include the resource identifier for all affected resources.

Here is the example of the subscription:
[Topicbased-Subscription-Practitioner-Qualification-Change]


### Bulk export to access large volumes information on demand
#### Bulk extract of all information for organizations, individuals, and services in the state of Maryland from the NDH
```
GET [base]/$export?_type=Organization,OrganizationAffiliation,Practitioner,PractitionerRole,HealthcareService,Location,InsurancePlan
&_since=[transactionTime]
&_typeFilter=Organization?address-state=MD,
Organization?type=ntwk&address-state=MD,
OrganizationAffiliation?location.address-state=MD,
OrganizationAffiliation?service.location.address-state=MD
Practitioner?address-state=MD,
PractitionerRole?location.address-state=MD,
PractitionerRole?service.location.address-state=MD
PractitionerRole?practitionerrole-network.type=ntwk&practitionerrole-network.address-state=MD
HealthcareService?location.address-state=MD,
Location?address-state=MD
InsurancePlan?plan.coverageArea.address-state=MD,
&_outputFormat=application/fhir+ndjson
```
**Note:**
Bulk Data Export _typeFilter does not support _include and _revinclude search parameters.

### Scheduled export
If a distributed workflow directory needs to retrieve information from the NDH on a scheduled basis, there are two approaches available.  
The first approach is a client-side solution, where a job scheduler script is written on the client side to execute the Bulk export operation. This allows the client to control the export process and retrieve the data as needed.  
Alternatively, the second approach is to utilize the "repeat $ndhexport" operation, which is a service-side solution available to all registered clients. Once the client has registered with the NDH, they only need to apply the $ndhexport operation once. From then on, the system automatically exports the data to the specified file storage location based on the defined schedule, making it convenient for the client to retrieve the data.

[Ndhexport-operation-flow-diagram]

#### Schedule extracts of specific resources for all organization and individuals in MD weekly
[OperationDefinition-Ndhexport]
```
GET [base]/$ndhexport
?_type=Organization,OrganizationAffiliation,Practitioner,PractitionerRole,HealthcareService,Location,InsurancePlan
&_typeFilter=rganization?address-state=MD,_include=*,revinclude=*
&_outputFormat=application/fhir_ndjson
&_startdate=2023-06-01
&_frequency=weekly
&_account=example-1
&_action=create
```

### The NDH Consumer Application Help Patient Seeking Healthcare providers

#### Use Case: A patient seeks Orthopedic Services by using the NDH Consumer Application Online
This use case involves a patient who wants to schedule an appointment with Hartford Orthopedics, a group providing orthopedic services for the Acme of CT network at Hartford General Hospital. Hartford Orthopedics has two different locations and specific requirements for accepting new patients. The patient needs to find the suitable location, considering their needs and availability.

Preconditions:
- Hartford Orthopedic group provides services for Acme of CT network.
- Acme of CT Network includes Hartford Orthopedics.
- Hartford General Hospital where Hartford Orthopedics operates
- Patient is covered by the Acme of CT network's standard network.

The patient could the following information from the online application which take the data from the NDH
- The Hartford Orthopedics’ contact information.
- The insurance the Hartford Orthopedics takes.
- The locations of Hartford Orthopedics and which location takes new patients. 
- The facility information such as date and time of the operation, accessibility, address, phone number.

#### FHIR resources relationship diagram for the use case above
<figure>
    {% include GroupProvidingServiceAtHospital.svg %}
    <figcaption></figcaption>
</figure>

###  Discovery a HIE Endpoint via the NDH
#### Use Case:  Discovery of SutterHealth TEFCA Endpoint
Actors:
- Health Information System (HIS)
- NDH (National Directory of Healthcare Providers & Services)

Preconditions:
- SutterHealth is a known participating organization in the Epic Organization.
- SutterHealth is participating in both the TEFCA and CareQuality Health Information Exchange (HIE) networks.

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

### Associate an organization with an Insurance Plan that operates without any network.
A State InsurancePlan Entity may contract directly with a provider organization which provides the HealthcareService. A logical Network could be used to link an InsurancePlan and an Organization which provides the HealthcareService for the InsurancePlan via an OrganizationAffiliation.
<figure>
    {% include insranceplanPayByService.svg %}
    <figcaption> </figcaption>
</figure>

### Relationship Use Cases
#### Relationship between Networks and Participants
An entity, whether it be an organization or a practitioner, might be part of multiple networks. There may be occasions when a specific network becomes unavailable or when a member decides to withdraw from an active network. To manage these potential changes - one originating from the network itself and the other from the participant's side - the recommendation is to ensure that each PractitionerRole or OrganizationAffiliation resource instance only includes a single network.

The PractitionerRole is designated for practitioners, whereas the OrganizationAffiliation is geared towards organizations. Both these resources, PractitionerRole and OrganizationAffiliation, contain a period element. This element signifies the valid timeframe of a network's relationship with its participants. In the event of a change in this relationship, a new instance would be created, encompassing the updated period.

This method allows for the efficient management of transitions, avoiding the creation of a more intricate system that would involve tracking expiration dates across multiple resources and relationships.

[See Example](exchange-examples.html#practitioner-and-networks)


{% include markdown-link-references.md %}
