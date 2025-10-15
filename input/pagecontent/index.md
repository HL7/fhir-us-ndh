### Introduction
The National Directory of Healthcare Providers & Services (NDH) Implementation Guide (IG) provides standards and guidance for a national directory infrastructure in the US. The IG envisions a national source of truth for information about providers, health organizations, and related services, their relationships, and technical connectivity details (i.e., electronic endpoints). Content maintained by the national directory would be made available to downstream local directories using FHIR APIs. Local directories could also use FHIR APIs to make content available to their users. FHIR APIs could also serve as an entry point to the national directory, i.e., providers and organizations contribute information to the national directory over a FHIR API. Finally, the national directory may leverage FHIR APIs to facilitate verification of directory content for accuracy.

The sections of this IG provide guidance and/or standards for each of these capabilities:

- Base artifacts - provides a variety of FHIR artifacts including profiles, extensions, search parameters, and terminologies that comprise a robust directory data model. These artifacts are generally loosely constrained; additional conformance expectations and constraints are provided in other sections of the IG.
- National Directory API artifacts - constrains the Base artifacts and defines multiple methods for exchanging national directory information with a local directory.  Methods include a FHIR API, a scheduled exchange operation including subscriptions and bulk data export.

### Background
The National Directory of Healthcare Providers & Services (NDH) Implementation Guide has been developed from a series of foundational guides. It originated from the STU 1.0.0 ballot version of the National Healthcare Directory IGs, which included the Exchange, Query, and Attestation and Verification (IGs). These Directory IGs themselves were derived from both the Validated Healthcare Directory IG (International) and the PDex Plan Net IG (Payer Network) (US Realm). The PDex Plan Net IG, in turn, evolved from the Validated Healthcare Directory IG (International).

<figure>
    {% include Evolution.svg %}
    <figcaption></figcaption>
</figure>  

Initially, the National Directory Implementation Guide (IG) comprised three separate IGs. However, during the STU 1.0.0 ballot process, the community provided feedback advocating for the unification of these guides. This led to the creation of the NDH IG, a combined implementation guide. The NDH IG effectively integrates pertinent ballot ticket resolutions from the original three IGs where necessary, forming a more comprehensive and streamlined guide.

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
The purpose of the FHIR at Scale Taskforce (FAST) is to augment and support recent HL7® Fast Healthcare Interoperability Resources (FHIR®) efforts focused on ecosystem issues that, if mitigated, can accelerate adoption. A number of regulatory and technical barriers, as well as required core capabilities, have been identified related to Directory, Versioning, and Scale. This Implementation Guide includes the work from FAST with regard to a national endpoint directory. FAST Directory work is focused on defining the issues related to making electronic endpoints available . Since these endpoints are associated with providers, organizations, and services, prior work on [Validated Healthcare Directory FHIR IG](http://build.fhir.org/ig/HL7/VhDir/) and [DaVinci PDEX Plan Net](http://hl7.org/fhir/us/davinci-pdex-plan-net/STU1.2/) was used as the foundation data model. The FHIR endpoint resource provides the structure on which this national directory effort can make endpoints discoverable in the context of the specific providers, organizations and services and their relationships.

For more information on the FAST Directory effort see the [FAST Accelerator](https://confluence.hl7.org/display/FAST) pages on Confluence.

### Overview

#### NDH Concept

![ndhEcosystem](NDH-Ecosystem.png)


### Dependencies
{% include dependency-table-nontech.xhtml %}

### Intellectual Property Considerations
{% include ip-statements.xhtml %}


{% include markdown-link-references.md %}