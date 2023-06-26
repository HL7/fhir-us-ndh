### Query for Specific Information from the NDH
#### Query PractitionerRole with a given organization
```
GET [base]/PractitionerRole?organization=ndh-organization-1236348148
```

#### Query all PractitionerRole in the state of CT and all related Resources
```
GET [base]/PractitionerRole/?location.address-state=CT
&_include=*
&_revinclude=*
```
#### Query all Endocrinology, Diabetes & Metabolism Physician in the city of Bridgeport, CT accept new patient
```
GET [base]/PractitionerRole/?specialty=http://nucc.org/provider-taxonomy|207RE0101X
&practitionerrole-new-patient=file:///C:/NDH-IG-2/output/CodeSystem-AcceptingPatientsCS|newpt
&location.address-city=Bridgeport
&location.address-state=CT
&_include=*
&_revinclude=*
```
This query will generate a FHIR bundle that includes PractitionerRole, Practitioner, Organization, Network, HealthcareService, and InsurancePlan resources that fulfill the given search criteria.

#### Qeury a practitioner whose association to all organizations
Since a practitioner could provide the services to multiple organizations. Those organizations are not limited to one hospital system.
```
GET [base]/Practitioner/?identifier=http://hl7.org/fhir/sid/us-npi|12345678
&_revinclude=PractitionerRole:practitioner
```
This query will yield a FHIR bundle that comprises Practitioner and PractitionerRole resources that satisfy the specified search criteria.

###  Subscribe to receive real-time notifications when data is create, updated, or deleted on the NDH server

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
#### Use Case:  Discovery of SutterHealth TEFAC Endpoint
Actors:
- Health Information System (HIS)
- NDH (National Directory of Healthcare Providers & Services)

Preconditions:
- SutterHealth is a known participating organization in the Epic Organization.
- SutterHealth is participating in both the TEFAC and CareQuality Health Information Exchange (HIE) networks.

Main Flow:
1. The user (in this case a software agent of system) queries NDH to find the SutterHealth Organization
2. The user queries NDH for the OrganizationAffiliation resource instance with the code for 'HIEResponder' and 'TEFAC-Organization' to find an affiliation related to SutterHealth.
3. NDH returns the OrganizationAffiliation resource instance
4. The endpoint contained in the OrganizationAffiliation resource instance is the SutterHealth TEFACE Endpoint

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


<figure>
    {% include UsecaseRel.svg %}
    <figcaption>Relationship between Practitioner and Network </figcaption>
</figure>  

- [Network2023](Organization-Network2023.html)
- [Network2024](Organization-Network2024.html)
- [OrgManageNetwork](Organization-OrgManageNetwork.html)
- [PractitionerOneWithNetwork2023And2024](Practitioner-PractitionerOneWithNetwork2023And2024.html)
- [PractitionerTwoWithNetwork2023ForFirstSixMonths](Practitioner-PractitionerTwoWithNetwork2023ForFirstSixMonths.html)
- [PractitionerOneNetwork2023Role](PractitionerRole-PractitionerOneNetwork2023Role.html)
- [PractitionerOneNetwork2024Role](PractitionerRole-PractitionerOneNetwork2024Role.html)
- [PractitionerTwoNetwork2023FirstSixMonthRole](PractitionerRole-PractitionerTwoNetwork2023FirstSixMonthRole.html)




{% include markdown-link-references.md %}
