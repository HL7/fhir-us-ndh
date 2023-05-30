### Query for Specific Information from the NDH
#### Use case: Query PractitionerRole with a given organization
`https://national-directory.fast.hl7.org/fhir/PractitionerRole?organization=ndh-organization-1236348148`

#### Use case: Query all PractitionerRole in the state of CT and all related Resources

```
https://national-directory.fast.hl7.org/fhir/PractitionerRole/?location.address-state=CT&_revinclude=*&_include=*
```

###  Subscribe to changes in practitioner qualification for providers in MD
A change in a practitioner's qualifications doesn't only impact the practitioner, but also any associated organizations and services. By subscribing to the "practitioner-qualification-change" topic, subscribers will receive notifications about these changes.

In this scenario, a subscriber wishes to be alerted whenever a practitioner in Maryland undergoes a qualification change. They also want notifications to include the resource identifier for all affected resources.

Here is the example of the subscription:
[Topicbased-Subscription-Practitioner-Qualification-Change]


### Bulk extract Information 
#### Use case: Bulk extract of all information for organizations, individuals, and services in MD
```
GET [base]/$export?_type=Organization,OrganizationAffiliation,Practitioner,PractitionerRole,HealthcareService,Location
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
&_outputFormat=application/fhir+ndjson
```
**Note:**
Bulk Data Export _typeFilter does not support _include and _revinclude search parameters

### Schedule extracts of specific resources for all organization and individuals in MD weekly


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




{% include markdown-link-references.md %}
