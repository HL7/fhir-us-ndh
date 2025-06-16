### Introduction
The National Directory of Healthcare Providers & Services (NDH) Implementation Guide (IG) provides standards and guidance for a national directory infrastructure in the US. The IG envisions a national source of truth for information about providers, health organizations, and related services, their relationships, and technical connectivity details (i.e., electronic endpoints). Content maintained by the national directory would be made available to downstream local directories using FHIR APIs. Local directories could also use FHIR APIs to make content available to their users. FHIR APIs could also serve as an entry point to the national directory, i.e., providers and organizations contribute information to the national directory over a FHIR API. Finally, the national directory may leverage FHIR APIs to facilitate verification of directory content for accuracy.

The sections of this IG provide guidance and/or standards for each of these capabilities:

- Base artifacts - provides a variety of FHIR artifacts including profiles, extensions, search parameters, and terminologies that comprise a robust directory data model. These artifacts are generally loosely constrained; additional conformance expectations and constraints are provided in other sections of the IG.
- National Directory API artifacts - constrains the Base artifacts and defines multiple methods for exchanging national directory information with a local directory.  Methods include a FHIR API, a scheduled exchange operation including subscriptions and bulk data export.
<!--
- National Directory Attestation - provides guidance describing the processes by which data is contributed to a national directory from individuals and organizations.
- National Directory Verification - provides guidance describing the processes by which attested data is verified for truthfulness and accuracy.
- Local Directory API artifacts - constrains the Base artifacts and defines a suite of optional capability statements describing APIs for various use cases local directories may support. Local directories may declare conformance to one or more of these capability statements.
-->

### Background
The National Directory of Healthcare Providers & Services (NDH) Implementation Guide has been developed from a series of foundational guides. It originated from the STU 1.0.0 ballot version of the National Healthcare Directory IGs, which included the Exchange, Query, and Attestation and Verification (IGs). These Directory IGs themselves were derived from both the Validated Healthcare Directory IG (International) and the PDex Plan Net IG (Payer Network) (US Realm). The PDex Plan Net IG, in turn, evolved from the Validated Healthcare Directory IG (International).

<figure>
    {% include Evolution.svg %}
    <figcaption></figcaption>
</figure>  

Initially, the National Directory Implementation Guide (IG) comprised three separate IGs. However, during the STU 1.0.0 ballot process, the community provided feedback advocating for the unification of these guides. This led to the creation of the NDH IG, a combined implementation guide. The NDH IG effectively integrates pertinent ballot ticket resolutions from the original three IGs where necessary, forming a more comprehensive and streamlined guide.

<!--
**The Original National Directory Implementation Guides:**
1.	[National Healthcare Directory Exchange](http://hl7.org/fhir/us/directory-exchange/2022Sep/) 1.0.0 ballot
2.	[National Healthcare Directory Query](http://hl7.org/fhir/us/directory-query/2022Sep/) 1.0.0-ballot
3.	[National Healthcare Directory Attestation and Verification](http://hl7.org/fhir/us/directory-attestation/2022Sep/) 1.0.0-ballot
-->

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

**This National Directory Architecture and Flow diagram below depicts the high-level conceptual design of a central source of NDH data.**

![concetDiagram](NDH Architectures and Workflow.png)


In this diagram, RESTful FHIR APIs facilitate the movement of data into and out of NDH at different points, including:

- Attestation Actor: Individuals and organizations (via an authorized representative) attest to information about themselves, their relationships, and services for inclusion in the NDH. 
<!--
See more information about [attestation](attestation-ig.html). 
-->
- Validation & Verification Actor: Validation part of this actor validates attested data against the underlying standards defined. Verification part of this actor verifies healthcare directory 
(not shown in the diagram) may verify  attested data against primary sources, thereby verifying the truthfulness and accuracy of the attested data. For example, an implementer might verify 
a provider’s medical license against records maintained by a state licensure board. Verification may occur initially, when attested data is first submitted, and/or on a regular basis as determined 
by the National Directory implementer and/or applicable laws, regulations, or policies. 
<!-- See more information about [validation & verification](verification-ig.html). -->

- National Directory API Actor: NDH would make validated/verified directory data available to local workflow environments and user applications to support various business needs. Local workflow 
environments include, but are not limited to, payer organizations, provider organizations, health information exchanges (HIEs), health information service providers (HISPs), Community Information 
Exchanges (CIEs), government agencies, and any other entities that maintain a healthcare directory and/or have a need for verified provider data. See more information 
about [National Directory API](ndapi-ig.html).

- Local Directory API Actor: A local or network directory may choose to be compliant with one or more of the Local Directory API Conformance statements to indicate the standard Queries 
and response information provided to their users. 
<!-- See more information about [Local Directory API](ldapi-ig.html). -->

### NDH API

This diagram depicts the high-level NDH Restful FHIR APIs.

![apiDiagram](NDH API.png)  
  

In this diagram, RESTful FHIR APIs facilitate interface between the NDH Server and Clients. 
- National Directory Required APIs are supported by NDH Server.
- National Directory Optional APIs are available to different NDH Clients, such as Distributed Access/Workflow directories, Commercial Payer Directories, or the Medicare Provider Enrollment, Chain, and Ownership System (PECOS) 2.0 Medicare/Medicaid to obtain data from NDH. Each of the clients has an option to only use part of the NDH API functions. 
- Query Optional APIs might be adapted by Distributed Access/Workflow directories to utilize NDH content in a standardized way. 
- A/V Required/Optional APIs are used to receive the Attest Information; verify attested information through the Primary Sources.

### Dependencies
{% include dependency-table-nontech.xhtml %}

### Intellectual Property Considerations
{% include ip-statements.xhtml %}


{% include markdown-link-references.md %}