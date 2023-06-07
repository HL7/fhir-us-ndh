### Introduction

The National Directory of Healthcare Providers & Services (NDH) Implementation Guide  is based on [FHIR Version 4.0.1](http://hl7.org/fhir/R4/index.html). It was developed in cooperation with the [Office of the National Coordinator for Health Information Technology (ONC)](http://www.healthit.gov/newsroom/about-onc) and [Federal Health Architecture (FHA)](https://www.healthit.gov/policy-researchers-implementers/federal-health-architecture-fha) with guidance from HL7 International, the Patient Administration Workgroup, and the HL7 US Realm Steering Committee.

It describes the architectural considerations for attesting to, validating, and exchanging data from a central source of validated provider data, as well as a RESTful FHIR API for accessing data from the National Directory of Healthcare Providers&Services. 

Although we developed this guide from the conceptual starting point of a national source of validated provider data, we recognize that implementers may have different business needs, contexts, or use cases. Therefore, we have strived to make this guide as broadly applicable as possible. Every implementation may not use all of the content in this guide. It serves as a “floor” for the exchange of validated provider data, while describing additional data elements and capabilities that support more robust implementations.

Likewise, we provide general guidance about the technical architecture and capabilities of a central source of validated provider data, but are not prescriptive about what an implementation must include.  

### Background

Healthcare directories play a critical role in enabling identification of individual providers and service organizations, as well as characteristics about them, their relationships, and the means by which to access and exchange patient information among them electronically. Healthcare directories support a variety of use cases, including:

- Electronic endpoint discovery
- Referrals and transitions of care
- Health plan enrollment
- Provider selection
- Service selection
- Provider credentialing/privileging

Today, many health and social care organizations maintain directories, including ones for providers, payers, health information exchange organizations (HIEs/HIOs), health information service providers (HISPs), social services organizations, government agencies, and credentialing organizations. However, despite their importance, health and social care directory activities remain scattered, uncoordinated, and are often not interoperable. As a result, the industry collectively spends significant time and resources registering and validating demographic information for individual and organizational providers for purposes such as information exchange, referrals, licensure, credentialing, certification, and payment.

Providers and service organizations often have to submit and manage information about themselves and their relationships to a variety of stakeholders. In the US healthcare sector, providers often contract with ten or more health plans, and are required to regularly submit similar information to each plan for inclusion in a given provider network and directory. Likewise, provider credentialing and hospital privileging processes require similar documentation. The Council for Affordable Quality Healthcare [estimated](https://www.caqh.org/explorations/white-paper-defining-provider-data-dilemma) that just maintaining provider databases costs the US healthcare industry at least $2 billion annually.

Due to the high cost of acquiring and maintaining provider, organization and service information, existing healthcare directories often contain information that is inaccurate, out of date, or not validated.

### Overview

#### NDH Concept

This diagram depicts the high-level conceptual design of a central source of NDH data.

**Figure 1: NDH Concept Diagram**
![concetDiagram](NDH Architectures and Workflow.png)


In this diagram, RESTful FHIR APIs facilitate the movement of data into and out of NDH at different points, including:

- Attestation: Individuals and organizations (via an authorized representative) attest to information about themselves, their relationships, and services for inclusion in the NDH. See more information about [attestation](attestation-ig.html). 
- Validation: An implementer of the NDH must validate attested data against the underlying standards defined.  See more information about [validation](verification-ig.html).
- Verification: An implementer of the verified healthcare directory (not shown in the diagram) may verify  attested data against primary sources, thereby verifying the truthfulness and accuracy of the attested data. For example, an implementer might verify a provider’s medical license against records maintained by a state licensure board. Verification may occur initially, when attested data is first submitted, and/or on a regular basis as determined by the National Directory implementer and/or applicable laws, regulations, or policies. See more information about [verification](verification-ig.html).
- Exchange: NDH would make validated/verified directory data available to local workflow environments to support various business needs. Local workflow environments include, but are not limited to, payer organizations, provider organizations, health information exchanges (HIEs), health information service providers (HISPs), Community Information Exchanges (CIEs), government agencies, and any other entities that maintain a healthcare directory and/or have a need for verified provider data. See more information about [exchange](exchange-ig.html).
- Query: A distributed or network directory may choose to be compliant with one or more of the Query Conformance statements to indicate the standard Queries and response information provided to their users. See more information about [distributed query](query-ig.html).

### NDH API

This diagram depicts the high-level NDH Restful FHIR APIs.

**Figure 2: NDH API Diagram**
![apiDiagram](NDH API.png)  
  

In this diagram, RESTful FHIR APIs facilitate interface between the NDH Server and Clients. 
- Exchange Required APIs are supported by NDH Server.
- Exchange Optional APIs are available to different NDH Clients, such as Distributed Access/Workflow directories, Commercial Payer Directories, or PECOS 2.0 Medicare/Medicaid to obtain data from NDH. Each of the clients has an option to only use part of the NDH API functions. 
- Query Optional APIs might be adapted by Distributed Access/Workflow directories to utilize NDH content in a standardized way. 
- A/V Required/Optional APIs are used to receive the Attest Information; verify attested information through the Primary Sources.

### NDH Data Model
To determine which resources to profile, extensions to create, etc. we reviewed a number of use cases supported by healthcare directories today:
- Basic Information Exchange
    - A1. Enable electronic exchange (e.g. discovery of electronic endpoints such as IHE/EHR endpoints, FHIR server URLs, Direct addresses) - enables the electronic exchange of health information by supporting the ability to discover electronic service information including electronic endpoints or electronic addresses
    - A2. Find an individual and/or organization (even if no electronic endpoint is available) - enables users to find contact and other identifying information about healthcare organizations and individual healthcare providers
- Patient/Payer focused
    - B1. Find provider accessibility information (specialty, office hours, languages spoken, taking patients) - enables individuals and consumers to find contact and other accessibility information for individual healthcare providers and/or healthcare organizations
    - B2. Relationship between provider and insurance plan (insurance accepted) or plan and provider (network) - enables individual healthcare providers, organizations, and payers to discover the relationships between providers, organizations, and payers, as well as additional details about the relationships and entities involved
    - B3. Plan selection and enrollment - enables individuals and consumers to find information about health plans for the purposes of enrollment, including information about the health care providers and organizations that participate in a particular payer network, plan, or product and other information that can help the consumer make an informed choice about choosing the plan that best meets their health care needs
    - B4. Claims management (adjudication, prior authorization, payment) - enables entities to discover information about providers to support claims processing, adjudication, prior authorization, and other reimbursement/payment related activities
- Care Delivery / Value Based Care
    - C1. Provider relationship with a patient (e.g. for alerts) - supports discovery of provider-patient relationships to enable cross-organization workflows and processes for care coordination
    - C2. Provider relationship with other providers in context of a patient (e.g. care team communications) - enables individual providers/organizations/care team members to identify each other, communicate and exchange information, expand the care team (e.g. referrals), and coordinate care within and across organizational boundaries
- Other
    - D1. Provider credentialing - supports the process of establishing and evaluating the qualifications of a health care provider by verifying the provider’s experience, expertise, interests, and willingness to provide medical care
    - D2. Quality or regulatory reporting (e.g. aggregate data, plan networks) - enables providers and health plans to consolidate and standardize the electronic exchange of quality-related data and performance results in addition to helping providers use their own information consistently to “report once”
    - D3. Detection of fraud; inappropriate approval of services and/or payment for services - enables discovery of provider information for evaluating or responding to suspected cases of fraud or improper approval/payment for healthcare services

For each use case, we described the general information requirements necessary to support the use case. We then specified the general information requirements as discrete data elements using FHIR resources. Therefore, this implementation guide covers a broad set of data elements supporting a range of use cases that may reasonably be collected, validated, and exchanged from a central source of validated provider data.

### NDH Actors
The NDH implementation guide consists of a set of [base profiles, extensions, terminologies, and query requirements resources](base-artifacts.html), which are based on FHIR R4 Base 4.0.1 and US Core 5.0.1.  The NDH implementation guides supports four functional Actors:

1. [Exchange Actor](exchange-ig.html)
2. [Attestation Actor](attestation-ig.html)
3. [Validation & Verification Actor](verification-ig.html)
4. [Distributed Query Actor](query-ig.html)

### NDH Profiles
The NDH has three sets of profiles:
1. Base Profiles
2. Exchange Profiles
3. Payer Provider Network Profiles


<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>
| Profile Set | Exchange Actor | Attesation Actor | Validation & Verification Actor | Distributed Query Actor |
| ----------- | -------------- | ---------------- | ------------------------------- | ----------------------- |
| Base Profiles | | Yes | Yes | Yes |
| Exchange Profiles | Yes | | Yes | |
| Payer Provider Network Profiles | | | | Yes | 

### Comformance
This IG addresses the conformance by
1.	Profile Mandatory element
2.	Profile Must Support element
3.	The Capability Statement 
 
#### Mandatory Elements
Mandatory elements are elements with a minimum cardinality of 1 (min=1). When an element is Mandatory, the data is expected to be present.

#### Must Support Elements
Must Support on any Exchange profile data element **SHALL** be interpreted:
1. The NDH Server SHALL capture, exchange, and populate element data if they are present.
2. The NDH Exchange server SHALL populating all data elements as part of qurey results as specified by the NDH Exchange Server Capability Statement, if they are present and the user who query the data has the authority to obtained the data.
3. The receiver who request data from the NDH Exchange Server SHALL not error out for the MUST Spport element data, there is not requirement for the receiver to take action on the Must Support element data. 

Must Support on any Payer Provider Network profile data element **SHALL** be interpreted:



### Relation to US Core 
This implementation guide was written for a US audience and profiles resources from US Core STU5.0.1, where available (Practitioner, PractionerRole,Organization, and Location), and otherwise from R4.0.1 (CareTeam, Consent, Endpoint, HealthCareService, InsurancePlan, OrganizationAffiliation, VerificationResult). The Network profile is based on USCore Organization, since there was no contradiction between the USCore profile and the NDH requirements. However, the NPI and CLIA identifier types, which are Must-Support, are clearly intended for provider organizations only and are not expected to be populated for other organization types. Restriction profile is based on the R4.0.1 Consent profile.
<br />
### Overview of NDH - Resource Relationships
Note: the following diagrams provide a high-level view of the relationships between resources used in this IG. They do not necessarily reflect all of the relationships/references between resources.

#### All Resource Relationships 1
A high level view of the relationships between resources.
<figure>
    {% include RelResource.svg %}
    <figcaption></figcaption>
</figure>  
<br />

#### All Resource Relationships 2  
All resources reference the Endpoint resource.
<figure>
    {% include RelResource2.svg %}
    <figcaption></figcaption>
</figure>  
<br />

#### All Resource Relationships 3  
All resources reference the Restriction resource, which allows the usage of restriction down to the resource element level. 
<figure>
    {% include RelResource3.svg %}
    <figcaption></figcaption>
</figure>
<br />

#### Practitioner Role Relationships  
PractionerRole describes the relationship between a practitioner and an organization. A practitioner provides services to the organization at a location. Practitioners also participate in healthcare provider insurance networks through their role at an organization.
<figure>
    {% include RelPractitionerRole.svg %}
    <figcaption></figcaption>
</figure>
<br />

#### Organization Affiliation Relationships  
Similar to PractitionerRole, OrganizationAffiliation describes relationships between organizations. For example: 
1. The relationship between an organization and an association it is a member of (e.g. hospitals in a hospital association)
2. An organization that provides services to another organization, such as an organization contracted to provide mental health care for another organization as part of a healthcare provider insurance network
3. Distinct organizations forming a partnership to provide services (e.g. a cancer center)
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

#### CareTeam Relationships
<figure>
    {% include RelCareTeam.svg %}
    <figcaption></figcaption>
</figure>
<br />

### NDH Security
The following are the NDH security considerations that implementers should follow:

- All implementers of FHIR servers and clients should pay attention to FHIR Security considerations.
- In addition to the FHIR Security considerations, the NDH requests need to contain specific information about NDH client identity and organization information.
- Providing this information using FHIR Search APIs is very cumbersome and is not necessary. This kind of information can be collected by the NDH Authorization Server during application registration and avoid repeating the information on each request.
- These mechanisms are outlined in detail in the SMART Backend Services Authorization Guide.

The following are security conformance requirements for NDH actors:

- NDH actors SHALL use the SMART Backend Services Authorization Guide to collect the necessary requestor information appropriate for making the NDH data request.
- NDH actors SHALL reference a single time source to establish a common time base for security auditing across the system.
- NDH actors SHALL use the AuditEvent resource to capture audit logs of the various transactions. NDH actors SHOULD capture as many AuditEvent resource data elements as appropriate based on requirements of FHIR Audit Logging and local policies.
- NDH transactions SHALL use TLS version 1.2 or higher to secure the transmission channel unless the transmission is taking place over a more secure network.(Using TLS even within a secured network environment is still encouraged to provide defense in depth.) US Federal systems implementing NDH actors SHOULD conform with FIPS PUB 140-2.
- NDH actors SHALL conform to FHIR Communications requirements.
- NDH actors SHOULD retain Provenance information using the FHIR Provenance resource.

The following are security conformance requirements for the overall program/system:

- NDH implementers SHOULD establish a risk analysis and management regime that conforms with HIPAA security regulatory requirements. In addition, implementers in the US Federal systems SHOULD conform with the risk management and mitigation requirements defined in NIST 800 series documents. This SHOULD include security category assignment in accordance with NIST 800-60 vol. 2 Appendix D.14. The coordination of risk management and the related security and privacy controls – policies, administrative practices, and technical controls – SHOULD be defined in the Business Associate Agreements.
- The time service used for auditing SHOULD be documented in the Business Associate Agreements.

