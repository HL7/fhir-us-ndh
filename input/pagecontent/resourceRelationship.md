
### NDH Resources and Relationships
The NDH IG contains the following resources, which are based on FHIR R4 base 4.0.1 and US Core 6.1.0. 
- Endpoint: The technical details of an endpoint that can be used for electronic services
- HealthcareService: The details of a healthcare service
- InsurancePlan: Details of a Health Insurance product/plan provided by an organization
- Location: Details and position information for a physical place
- Network (based on Organization): A healthcare provider insurance network
- Organization: An organization is a formal or informal grouping of people or organizations with a common purpose
- OrganizationAffiliation: Details of relationships between two or more organizations
- Practitioner: A practitioner is a person who is directly or indirectly involved in the provisioning of healthcare
- PractitionerRole: Describes the relationship between a practitioner and an organization. A practitioner provides services to the organization at a location. Practitioners also participate in healthcare provider insurance networks through their role at an organization
- Verification (based on VerificationResult): Provide information on which verification process was performed, what was verified, when the verification took place, who performed the verification, and how it was verified for a given instance of a resource

### Overview of NDH - Resource Relationships

Note: the following diagrams provide a high-level view of the relationships between resources used in this IG. They do not necessarily reflect all of the relationships/references between resources.

#### All Resource Relationships (Except Endpoints)

A high-level view of the relationships between resources. There are two main parts of the diagram: 1. how clinical organizations and providers collaborate to deliver care and 2. How healthcare is payed for in the United States.

The left of this diagram shows how clinical organizations connect together with individual clinicians to provide healthcare to patients.
In the top right, we model how healthcare is payed for in the healthcare system. Government and private health insurance organizations (Payers) that contract with patients (benificiaries) to pay for healthcare, and who then pay healthcare providers (Practicioners and Clnical Organizations) for treating patients.

There are a multidude of different specific payment arrangements, as well as many different sources of healthcare payment. What we see below is a template that attempts to provide the capacity to correctly model most of these
different clinical and financial arrangements. 

<figure>
    {% include RelResource.svg %}
    <figcaption></figcaption>
</figure>  
<br />

#### All Endpoint Resource Relationships 
Every resources can reference the Endpoint resource, but if we diagram that above, the chart becomes difficult to read. The inter-connectivity with various other resources and the Endpoint Resource, is listed below.
<figure>
    {% include RelResource2.svg %}
    <figcaption></figcaption>
</figure>  
<br />

#### Practitioner Role Relationships  
PractitionerRole describes the relationship between a practitioner and an organization. A practitioner provides services to the organization at a location. Practitioners also participate in healthcare provider insurance networks through their role at an organization.
<figure>
    {% include RelPractitionerRole.svg %}
    <figcaption></figcaption>
</figure>
<br />

#### Organization Affiliation Relationships  
Similar to PractitionerRole, OrganizationAffiliation describes relationships between organizations. For example: 
1. The relationship between an organization and an association it is a member of (e.g., hospitals in a hospital association)
2. An organization that provides services to another organization, such as an organization contracted to provide mental health care for another organization as part of a healthcare provider insurance network
3. Distinct organizations forming a partnership to provide services (e.g., a cancer center)
<figure>
    {% include RelOrganizationAffiliation.svg %}
    <figcaption></figcaption>
</figure>
<br />

#### Network / Insurance Plan Relationships  
A network is a group of practitioners and organizations that provide healthcare services for individuals enrolled in a health insurance product/plan (typically on behalf of a payer).
<figure>
    {% include RelNetworkInsurancePlan.svg %}
    <figcaption></figcaption>
</figure>
<br />


