### Introduction

The National Directory of Healthcare Providers & Services (NDH) Implementation Guide  is based on [FHIR Version 4.0](http://hl7.org/fhir/R4/index.html). It was developed in cooperation with the [Office of the National Coordinator for Health Information Technology (ONC)](http://www.healthit.gov/newsroom/about-onc) and [Federal Health Architecture (FHA)](https://www.healthit.gov/policy-researchers-implementers/federal-health-architecture-fha) with guidance from HL7 International, the Patient Administration Workgroup, and the HL7 US Realm Steering Committee.

It describes the architectural considerations for attesting to, validating, and exchanging data from a central source of validated provider data, as well as a RESTful FHIR API for accessing data from a VHDir.

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

Today, many health and social care organizations maintain directories, including providers, payers, health information exchange organizations (HIEs/HIOs), health information service providers (HISPs), social services organizations, government agencies, and credentialing organizations. However, despite their importance, health and social care directory activities remain scattered, uncoordinated, and are often not interoperable. As a result, the industry collectively spends significant time and resources registering and validating demographic information for individual and organizational providers for purposes such as information exchange, referrals, licensure, credentialing, certification, and payment.

Providers and service organizations often have to submit and manage information about themselves and relationships to a variety of stakeholders. In the US healthcare sector, providers often contract with ten or more health plans, and are required to regularly submit similar information to each plan for inclusion in a provider network and directory. Likewise, provider credentialing and hospital privileging processes require similar documentation. The Council for Affordable Quality Healthcare [estimated](https://www.caqh.org/explorations/white-paper-defining-provider-data-dilemma) that just maintaining provider databases costs the US healthcare industry at least $2 billion annually.

Due to the high cost of acquiring and maintaining provider, organization and service information, existing healthcare directories often contain information that is inaccurate, out of date, or not validated.

### Overview

#### NDH Concept Diagram

This diagram depicts the high-level conceptual design of a central source of NDH data.

**Figure 1: NDH Concept Diagram**
![concetDiagram](NDH Architectures and Workflow.png)


In this diagram, RESTful FHIR APIs facilitate the movement of data into and out of NDH at different points, including:

- Attestation: Individuals and organizations (via an authorized representative) attest to information about themselves, their relationships, and services for inclusion in the NDH. See [below](attestation-ig.html) for more information about attestitation. 
- Validation: An implementer of the NDH must validate attested data against the underlying standards defined.  See [below](verification-ig.html) for more information about validation.
- Verification: An implementer of the verified healthcare directory (not shown in the diagram) may verify  attested data against primary sources, thereby verifying the truthfulness and accuracy of the attested data. For example, an implementer might verify a provider’s medical license against records maintained by a state licensure board. Verification may occur initially, when attested data is first submitted, and/or on a regular basis as determined by the National Directory implementer and/or applicable laws, regulations, or policies. See [below](verification-ig.html) for more information about verification.
- Exchange: NDH would make validated/verified directory data available to local workflow environments to support various business needs. Local workflow environments include, but are not limited to, payer organizations, provider organizations, health information exchanges (HIEs), health information service providers (HISPs), Community Information Exchanges (CIEs), government agencies, and any other entities that maintain a healthcare directory and/or have a need for verified provider data. See [below](exchange-ig.html) for more information about exchange.
- Query: A distributed or network directory may choose to be compliant with one or more of the Query Conformance statements to indicate the standard Queries and response information provided to their users. See [below](query-ig.html) for more information about distributed query.

### NDH API Diagram

This diagram depicts the high-level NDH Restful FHIR APIs.

**Figure 2: NDH API Diagram**
![apiDiagram](NDH API.png)

In this diagram, RESTful FHIR APIs facilitate interface between the NDH Server and Clients. 
- Exchange Required APIs are supported by NDH Server.
- Exchange Optional APIs are available to different NDH Clients, such as Distributed Access/Workflow directories, Commercial Payer Directories, or PECOS 2.0 Medicare/Medicaid to obtain data from NDH. Each of the clients has an option to only use part of the NDH API functions. 
- Query Optional APIs might be adapted by Distributed Access/Workflow directories to utilize NDH content in a standarized way. 
- A/V Required/Optional APIs are used to receive the Attest Information; verify attested information through the Primary Sources; 

### NDH FHIR Implementation Guide Structure

NDH implementation guide consists of a set of base profiles, extensions, terminologies, and query requirments resources, which are based on FHRI R4 Base 4.0.1 and US Core 5.0.0 [below](base-artifacts.html).  NDH implementation guides supports four functional Actors:

- [Exchange Actor](exchange-ig.html)
- [Attestation Actor](attestation-ig.html)
- [Verification Actor](verification-ig.html)
- [Distributed Query Actor](query-ig.html)
