### Introduction
The National Directory of Healthcare Providers & Services (NDH) Implementation Guide (IG) provides standards and guidance for a national directory infrastructure in the US. The IG envisions a national source of truth for information about providers, health organizations, and related services, their relationships, and technical connectivity details (i.e., electronic endpoints). Content maintained by the national directory would be made available to downstream local directories using FHIR APIs. Local directories could also use FHIR APIs to make content available to their users. FHIR APIs could also serve as an entry point to the national directory, i.e., providers and organizations contribute information to the national directory over a FHIR API. Finally, the national directory may leverage FHIR APIs to facilitate verification of directory content for accuracy.

The sections of this IG provide guidance and/or standards for each of these capabilities:

- Base artifacts - provides a variety of FHIR artifacts including profiles, extensions, search parameters, and terminologies that comprise a robust directory data model. These artifacts are generally loosely constrained; additional conformance expectations and constraints are provided in other sections of the IG.
- National Directory API artifacts - constrains the Base artifacts and defines multiple methods for exchanging national directory information with a local directory.  Methods include a FHIR API, a scheduled exchange operation including subscriptions and bulk data export.
- National Directory Attestation - provides guidance describing the processes by which data is contributed to a national directory from individuals and organizations.
- National Directory Verification - provides guidance describing the processes by which attested data is verified for truthfulness and accuracy.
- Local Directory API artifacts - constrains the Base artifacts and defines a suite of optional capability statements describing APIs for various use cases local directories may support. Local directories may declare conformance to one or more of these capability statements.

### Background
The National Directory of Healthcare Providers & Services (NDH) Implementation Guide has been developed from a series of foundational guides. It originated from the STU 1.0.0 ballot version of the National Healthcare Directory IGs, which included the Exchange IG, Query IG, and Attestation and Verification IG. These Directory IGs themselves were derived from both the Validated Healthcare Directory IG (International) and the PDex Plan Net IG (Payer Network) (US Realm). The PDex Plan Net IG, in turn, evolved from the Validated Healthcare Directory IG (International).

<figure>
    {% include Evolution.svg %}
    <figcaption></figcaption>
</figure>  

Initially, the National Directory Implementation Guide (IG) comprised three separate IGs. However, during the STU 1.0.0 ballot process, the community provided feedback advocating for the unification of these guides. This led to the creation of the NDH IG, a combined implementation guide. The NDH IG effectively integrates pertinent ballot ticket resolutions from the original three IGs where necessary, forming a more comprehensive and streamlined guide.

**The Original National Directory Implementation Guides:**
1.	[National Healthcare Directory Exchange](http://hl7.org/fhir/us/directory-exchange/2022Sep/) 1.0.0 ballot
2.	[National Healthcare Directory Query](http://hl7.org/fhir/us/directory-query/2022Sep/) 1.0.0-ballot
3.	[National Healthcare Directory Attestation and Verification](http://hl7.org/fhir/us/directory-attestation/2022Sep/) 1.0.0-ballot

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


### FHIR At Scale Taskforce Effort
The purpose of the FHIR at Scale Taskforce (FAST) is to augment and support recent HL7® Fast Healthcare Interoperability Resources (FHIR®) efforts focused on ecosystem issues that, if mitigated, can accelerate adoption. A number of regulatory and technical barriers, as well as required core capabilities, have been identified related to Directory, Versioning, and Scale. This Implementation Guide includes the work from FAST with regard to a national endpoint directory. FAST Directory work is focused on defining the issues related to making electronic endpoints available . Since these endpoints are associated with providers, organizations, and services, prior work on [Validated Healthcare Directory FHIR IG](http://build.fhir.org/ig/HL7/VhDir/) and [DaVinci PDEX Plan Net](http://hl7.org/fhir/us/davinci-pdex-plan-net/STU1.1/) was used as the foundation data model. The FHIR endpoint resource provides the structure on which this national directory effort can make endpoints discoverable in the context of the specific providers, organizations and services and their relationships.

For more information on the FAST Directory effort see the [FAST Accelerator](https://confluence.hl7.org/display/FAST) pages on Confluence.

### Overview

#### NDH Concept
**The diagram below represents the conceptual structure of the NDH ecosystem as presented by CMS at HIMSS 2023**

![ndhEcosystem](NDH-Ecosystem.png)

**This diagram depicts the high-level conceptual design of a central source of NDH data.**

![concetDiagram](NDH Architectures and Workflow.png)


In this diagram, RESTful FHIR APIs facilitate the movement of data into and out of NDH at different points, including:

- Attestation Actor: Individuals and organizations (via an authorized representative) attest to information about themselves, their relationships, and services for inclusion in the NDH. See more information about [attestation](attestation-ig.html). 
- Validation & Verification Actor: Validation part of this actor validates attested data against the underlying standards defined. Verification part of this actor verifies healthcare directory (not shown in the diagram) may verify  attested data against primary sources, thereby verifying the truthfulness and accuracy of the attested data. For example, an implementer might verify a provider’s medical license against records maintained by a state licensure board. Verification may occur initially, when attested data is first submitted, and/or on a regular basis as determined by the National Directory implementer and/or applicable laws, regulations, or policies. See more information about [validation & verification](verification-ig.html).
- National Directory API Actor: NDH would make validated/verified directory data available to local workflow environments to support various business needs. Local workflow environments include, but are not limited to, payer organizations, provider organizations, health information exchanges (HIEs), health information service providers (HISPs), Community Information Exchanges (CIEs), government agencies, and any other entities that maintain a healthcare directory and/or have a need for verified provider data. See more information about [National Directory API](ndapi-ig.html).
- Local Directory API Actor: A local or network directory may choose to be compliant with one or more of the Local Directory API Conformance statements to indicate the standard Queries and response information provided to their users. See more information about [Local Directory API](ldapi-ig.html).

### NDH API

This diagram depicts the high-level NDH Restful FHIR APIs.

![apiDiagram](NDH API.png)  
  

In this diagram, RESTful FHIR APIs facilitate interface between the NDH Server and Clients. 
- National Directory Required APIs are supported by NDH Server.
- National Directory Optional APIs are available to different NDH Clients, such as Distributed Access/Workflow directories, Commercial Payer Directories, or the Medicare Provider Enrollment, Chain, and Ownership System (PECOS) 2.0 Medicare/Medicaid to obtain data from NDH. Each of the clients has an option to only use part of the NDH API functions. 
- Query Optional APIs might be adapted by Distributed Access/Workflow directories to utilize NDH content in a standardized way. 
- A/V Required/Optional APIs are used to receive the Attest Information; verify attested information through the Primary Sources.

### NDH Reference Implementation (RI) Architecture
![NDHRI](NDH_RI.png)

In this diagram, the NDH production environment contains four components:
1. NDH component - handles all RESTful FHIR APIs communication between the NDH Server and Clients; validates, verifies, populates, and stores the NDH data contents;
handles the subscription/notification for any critical data changes; support the bulk export and ndhschExport operation
2. Un-Attested information component - stores and processes un-attested information from the CMS National Plan and Provider Enumeration System (NPPES), the Medicare Provider Enrollment, Chain, and Ownership System (PECOS)
3. Updates and corrections component - store and processes the update and correction data for the data entered from the Clients
4. Attested information component - store and process the attested information


### NDH Use Cases
To determine which resources to profile, extensions to create, etc. we reviewed a number of use cases supported by healthcare directories today:
- Basic Information Exchange
    - A1. Enable electronic exchange (e.g., discovery of electronic endpoints such as IHE/EHR endpoints, FHIR server URLs, Direct addresses) - enables the electronic exchange of health information by supporting the ability to discover electronic service information including electronic endpoints or electronic addresses
    - A2. Find an individual and/or organization (even if no electronic endpoint is available) - enables users to find contact and other identifying information about healthcare organizations and individual healthcare providers
- Patient/Payer focused
    - B1. Find provider accessibility information (specialty, office hours, languages spoken, taking patients) - enables individuals and consumers to find contact and other accessibility information for individual healthcare providers and/or healthcare organizations
    - B2. Relationship between provider and insurance plan (insurance accepted) or plan and provider (network) - enables individual healthcare providers, organizations, and payers to discover the relationships between providers, organizations, and payers, as well as additional details about the relationships and entities involved
    - B3. Plan selection and enrollment - enables individuals and consumers to find information about health plans for the purposes of enrollment, including information about the health care providers and organizations that participate in a particular payer network, plan, or product and other information that can help the consumer make an informed choice about choosing the plan that best meets their health care needs
    - B4. Claims management (adjudication, prior authorization, payment) - enables entities to discover information about providers to support claims processing, adjudication, prior authorization, and other reimbursement/payment related activities
- Care Delivery / Value Based Care
    - C1. Provider relationship with a patient (e.g., for alerts) - supports discovery of provider-patient relationships to enable cross-organization workflows and processes for care coordination
    - C2. Provider relationship with other providers in context of a patient (e.g., care team communications) - enables individual providers/organizations/care team members to identify each other, communicate and exchange information, expand the care team (e.g., referrals), and coordinate care within and across organizational boundaries
- Other
    - D1. Provider credentialing - supports the process of establishing and evaluating the qualifications of a health care provider by verifying the provider’s experience, expertise, interests, and willingness to provide medical care
    - D2. Quality or regulatory reporting (e.g., aggregate data, plan networks) - enables providers and health plans to consolidate and standardize the electronic exchange of quality-related data and performance results in addition to helping providers use their own information consistently to “report once”
    - D3. Detection of fraud; inappropriate approval of services and/or payment for services - enables discovery of provider information for evaluating or responding to suspected cases of fraud or improper approval/payment for healthcare services

For each use case, we described the general information requirements necessary to support the use case. We then specified the general information requirements as discrete data elements using FHIR resources. Therefore, this implementation guide covers a broad set of data elements supporting a range of use cases that may reasonably be collected, validated, and exchanged from a central source of validated provider data.

### NDH Resources
The NDH IG contains the following resources, which are based on FHIR R4 base 4.0.1 and US Core 6.1.0. 
- CareTeam: Planned participants in the coordination and delivery of healthcare
- Endpoint: The technical details of an endpoint that can be used for electronic services
- HealthcareService: The details of a healthcare service
- InsurancePlan: Details of a Health Insurance product/plan provided by an organization
- Location: Details and position information for a physical place
- Network (based on Organization): A healthcare provider insurance network
- Organization: An organization is a formal or informal grouping of people or organizations with a common purpose
- OrganizationAffiliation: Details of relationships between two or more organizations
- Practitioner: A practitioner is a person who is directly or indirectly involved in the provisioning of healthcare
- PractitionerRole: Describes the relationship between a practitioner and an organization. A practitioner provides services to the organization at a location. Practitioners also participate in healthcare provider insurance networks through their role at an organization
- Restriction (based on Consent): Restriction on use/release of exchanged information
- Verification (based on VerificationResult): Provide information on which verification process was performed, what was verified, when the verification took place, who performed the verification, and how it was verified for a given instance of a resource

### NDH Profiles
The NDH outlines three profile categories for the mentioned Resources above, each predicated on the specific functionalities inherent to the NDH. 
1. [Base Profiles](base-artifacts.html#the-national-directory-of-healthcare-providers--services-ndh-base-profiles) - the basic data-structure definition for the NDH
2. [National Directory API Profiles](ndapi-artifacts.html#national-directory-api-artifacts) - build on the base profiles with additional constrains for the National Directory API
3. [Payer Provider Network Local Directory API Profiles](ldapi-artifacts.html#payer-provider-network-local-directory-api-profiles) - build on the base profile with additional constrains for the Payer Provider Network

Refer to the following table to understand where each profile set is applied within the NDH architecture.
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>
| Profile Set | National Directory API Actor | Attestation Actor | Validation & Verification Actor | Local Directory API Actor |
| ----------- | -------------- | ----------------- | ------------------------------- | ----------------------- |
| [Base Profiles](base-artifacts.html#the-national-directory-of-healthcare-providers--services-ndh-base-profiles) | | Yes(1) | Yes(1) | Yes(2) |
| [National Directory API Profiles](ndapi-artifacts.html#national-directory-api-artifacts) | Yes(2) | Yes(2) | Yes(1) | |
| [Payer Provider Network Local Directory API Profiles](ldapi-artifacts.html#payer-provider-network-local-directory-api-profiles) | | | | Yes(2) | 

footnote:
- (1): Those profiles are utilized on Client side
- (2): Those profiles are utilized on Server side

### Conformance
This IG addresses the conformance by
1.	Profile Mandatory element
2.	Profile Must Support element
3.	The Capability Statement 
 
#### Mandatory Elements
Mandatory elements are elements with a minimum cardinality of 1 (min=1). When an element is Mandatory, the data is expected to be present.

#### Must Support
When querying and reading the National Directory Profiles defined in this IG, Must Support on any profile data element **SHALL** be interpreted as follows:  

1. **National Directory API Requirements**
- National Directory API actors **SHALL** be capable of capturing and populating all Must Support data elements as part of the query results.
- In situations where information on a particular Must Support data element is not present and the minimum cardinality is 0, the National Directory API actor **SHALL NOT** include the data elements in the resource instance returned as part of the query results.
- In situations where information on a particular data element is not present and the minimum cardinality is >0 SHALL send the reason for the missing information using values (such as nullFlavors) from the value set where they exist or use the dataAbsentReason extension.

2. **Local Directory API Requirements**
- Distributed directory actors **SHALL** be capable of processing resource instances containing the Must Support data elements without generating an error or causing the application to fail.
- Distributed directory actors **SHALL** be capable of displaying data elements maintained by the distributed directory for human use or storing the information for other purposes.
- When querying the National Directory API actor, Distributed directory actors **SHALL** interpret missing Must Support data elements within resource instances as data do not present in the National Directory API actor’s system.

3. **Application Requirements**
- Application actors **SHALL** be capable of processing resource instances containing the Must Support data elements without generating an error or causing the application to fail.
- Application actors **SHOULD** be capable of displaying the data elements relevant to the applications use case(s) for human use or storing the information for other purposes.
- When querying National Directory API actors, Consumer Application actors **SHALL** interpret missing Must Support data elements within resource instances as data not present in the National Directory API actor’s system.

### Relation to US Core 
This implementation guide was written for a US audience and profiles resources from US Core STU 6.1.0, where available (Practitioner, PractionerRole,Organization, and Location), and otherwise from R4.0.1 (CareTeam, Consent, Endpoint, HealthCareService, InsurancePlan, OrganizationAffiliation, VerificationResult). The Network profile is based on USCore Organization, since there was no contradiction between the USCore profile and the NDH requirements. However, the NPI and CLIA identifier types, which are Must-Support, are clearly intended for provider organizations only and are not expected to be populated for other organization types. Restriction profile is based on the R4.0.1 Consent profile.

### Denpendency
{% include dependency-table-short.xhtml %}

<br />
### Overview of NDH - Resource Relationships
Note: the following diagrams provide a high-level view of the relationships between resources used in this IG. They do not necessarily reflect all of the relationships/references between resources.

#### All Resource Relationships 1
A high-level view of the relationships between resources. 
In the NDH resource profiles, there is no inherent relationships. Both Organizations and OrganizationAffiliations can declare a network relationship. Consider a scenario where an OrganizationAffiliation, which is part of a Network, is associated with a PractitionerRole through the Organization. This relationship is not automatically inherited by the PractitionerRole. The PractitionerRole must have its own direct link to the Network. Likewise, any network affiliation declared by a PractitionerRole is not automatically inherited by the organization.

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
All resources reference the Restriction resource, which allows the usage of restriction down to the resource element level. The Restriction resource **SHALL** contained in the resource which has the elements need to be restricted. 
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

#### CareTeam Relationships
<figure>
    {% include RelCareTeam.svg %}
    <figcaption></figcaption>
</figure>
<br />

### NDH Security
The following are the NDH security considerations that implementers should follow:

- All implementers of FHIR servers and clients should pay attention to [FHIR Security](http://hl7.org/fhir/R4/security.html) considerations.
- In addition to the [FHIR Security](http://hl7.org/fhir/R4/security.html) considerations, the NDH requests need to contain specific information about NDH client identity and organization information.
- Providing this information using FHIR Search APIs is very cumbersome and is not necessary. This kind of information can be collected by the NDH Authorization Server during application registration and avoid repeating the information on each request.
- These mechanisms are outlined in detail in the [SMART Backend Services Authorization Guide](http://www.hl7.org/fhir/smart-app-launch/backend-services.html).

The following are security conformance requirements for NDH actors:

- NDH servers **SHALL** support the [SMART Backend Services Authorization Guide](http://www.hl7.org/fhir/smart-app-launch/backend-services.html) to collect the necessary requestor information appropriate for making the NDH data request.
- NDH servers **SHALL** support [UDAP](http://hl7.org/fhir/us/udap-security/STU1/).
- NDH servers **SHALL** reference a single time source to establish a common time base for security auditing across the system.
- NDH servers **SHALL** support the AuditEvent resource to capture audit logs of the various transactions. NDH actors SHOULD capture as many AuditEvent resource data elements as appropriate based on requirements of FHIR Audit Logging and local policies.
- NDH transactions **SHALL** support TLS version 1.2 or higher to secure the transmission channel unless the transmission is taking place over a more secure network.(Using TLS even within a secured network environment is still encouraged to provide defense in depth.) US Federal systems implementing NDH actors **SHOULD** conform with FIPS PUB 140-2.
- NDH servers **SHOULD** retain Provenance information using the FHIR Provenance resource.
- NDH clients **SHALL** support the SMART Backend Services Authorization Guide, the HL7 UDAP Guide, or both
- NDH clients **MAY** choose which OAuth profile to use in a particular exchange workflow. 


The following are security conformance requirements for the overall program/system:

- NDH implementers in the US Federal systems SHOULD conform with the risk management and mitigation requirements defined in NIST 800 series documents associated with providing access to PII.  The coordination of relevant risk management and the related security and privacy controls - policies, administrative practices, and technical controls - SHOULD be defined in the Data Use Agreements.
- The time service used for auditing SHOULD be documented in the Business Associate Agreements.

### Intellectual Property Considerations
{% include ip-statements.xhtml %}

### Authors and Contributors

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **Role** | **Name** | **Organization** |
| Subject Matter Expert and Use Case Lead | Robert Dieterle | EnableCare, LLC |
| Author | Ming Dunajick | Lantana Consulting Group |
| Contributor | Sean Mahoney | The MITRE Corporation |


We extend our heartfelt appreciation to the numerous users and facilitators who have actively participated in conference calls, provided reviews, shared feedback, offered sample data, and played a pivotal role in the development and testing of reference implementations...

Special mentions go to
- Alix Goss, Dana Marcelonis, Michele Galioto (Point of Care Partners)
- Joseph M. Lamy, Rick Lisseveld (AEGIS)
- David Pyke (HL7 FAST Accelerator )
- Alex Kontur (ONC)
- Matthew Bishop (Open City Labs)
- Corey Spears (Lantana Consulting Group)
- Errol Blake, Isaac Nooli, Kenneth Crawford, and Vignesh Rajan (Newwave.io)

We could not have done this without the support from Lantana Consulting Group, and CMS. 

If we have inadvertently left out anyone from this acknowledgment, we sincerely apologize.


{% include markdown-link-references.md %}