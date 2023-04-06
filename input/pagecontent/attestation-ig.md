### Attestation

#### Introduction
Attestation describes the process by which authorized entities submit information about themselves, their roles, their relationships, etc. for inclusion in National Directory of Healthcare Providers & Service (NDH).

Guidance in this section is primarily intended to describe expectations for implementers using a FHIR API to manage attestation. An implementer’s unique implementation context, including local business needs, applicable laws/regulations/policies, usability considerations, etc. will determine an implementer’s approach to many of the attestation considerations described in this section. As we do not anticipate every implementer will use the same approach to attestation, we have not provided a set of attestation profiles or defined an attestation API. Implementers SHALL make any attestation requirements, including but not limited to profiles and/or API documentation, available to any stakeholders involved in the attestation process.

We acknowledge that implementers may use processes other than a FHIR API, such as paper-based forms, to obtain attested data. Such processes are considered out of scope for this guide.

This attestation scenarios:
- Individual provider attesting to their information
- Authorized representative attesting to an individual provider’s information
- Authorized representative attesting to an organization’s information
- Authorized representative attesting to a payer organization’s information
- Submission of attested data by an authorized intermediary (e.g., another system that maintains attested data)
- Submission of primary data (e.g., license, network, ...)
    - network contains the organizations which have completed on boarding process with the network, and have assigned relationships within the network

Each of these scenarios may encompass different sets of “permitted” data. For example, an individual provider attesting to her own information may not have the right to also attest to information about an organization she works for. These “rights” are assigned by the implementation of NDH, and can help prevent the submission of duplicate records. In general:

- An individual (or authorized representative) may attest to their own demographic information (e.g. name, birthdate, gender, etc.) and information about their relationships with organizations, locations, services, care teams, and health insurance provider networks.
    - Information represented using the Practitioner, PractitionerRole, HealthcareService, Endpoint, and CareTeam profiles

- An organization (through an authorized representative) may attest to its own demographic information (e.g. name, address, contact info, etc.), services, locations, care teams and other organizations it owns/manages, and its relationships with other organizations, individuals, and health insurance provider networks
    - Information represented using the Organization, PractitionerRole, OrganizationAffiliation, HealthcareService, CareTeam, Location, and Endpoint profiles.
    - In cases where individual practitioners operate as solo practitioners without a relationship to a legal organization, implementers should consider representing the individual using both a Practitioner and Organization resource and assigning the “organization” rights to the individual.

- A payer organization (through an authorized representative) may attest to its own demographic information (e.g. name, address, contact info, etc.), services, locations, care teams, other organizations, health insurance provider networks and plans it owns/manages, and its relationships with other organizations and providers.
    - Information represented as Organization, OrganizationAffiliation, HealthcareService, CareTeam, Location, Endpoint, Network, and InsurancePlan profiles.

- An authorized intermediary may submit attested data on behalf of any of the previously described stakeholders. An intermediary should not submit data that has not been attested to, such as data that has been “scraped” from public sources. An example of an intermediary could be a state directory that collects information from providers in its jurisdiction, and then passes that information to a national directory.

- An network (through an authorized representative) may attest to its own demographic information (e.g. name, address, contact info, etc.), services, locations, care teams and other organizations it owns/manages, and its relationships with other organizations, individuals, and other networks
    - Information represented using the Organization, PractitionerRole, OrganizationAffiliation, HealthcareService, CareTeam, Location, and Endpoint profiles.
    - In cases where individual practitioners operate as solo practitioners without a relationship to a legal organization, implementers should consider representing the individual using both a Practitioner and Organization resource and assigning the “organization” rights to the individual.

The data sources for attestation:
- data from CMS (e.g., data extracted from PECOS, NPPES ...)
- data by a relationship (e.g., visiting privileges, newwork participation)
- data from Primary source (e.g., state license board)
- data uploaded by permitted individual
- manually entered data


The methods of attestation could be via a third part application, a centralized portal host by the NDH, or from bulk exchange. 

Additionally, implementers may set requirements for the minimum amount of data different groups of stakeholders must attest to. For example, a US implementation might require all licensed providers to attest to their National Provider Identifier (NPI). In general, implementers might specify different minimum attestation requirements across three classes of stakeholders:

- Licensed billing providers (e.g. doctors, nurses)
- Non-licensed billing providers (e.g. medical equipment suppliers)
- Ancillary personnel (e.g. administrative staff)

We expect stakeholders will typically use a [SMART on FHIR application](https://smarthealthit.org/) to help attesters manage the attestation process (i.e. to submit attested data in the form of FHIR resources via a RESTful API). Such an application may be offered by an entity maintaining a verified healthcare directory, an application authorized by the verified healthcare directory or owned by the stakeholder(s) submitting attested data.

Before accepting attested data, NDH should have policies to ensure:

- Any attester application has successfully registered and integrated with the verified healthcare directory.
- Attesters have successfully completed any identtity proofing requirements.
- Any credentials or digital certificates that must be exchanged have been exchanged, validated, and are functional.
- The verified healthcare directory has set and made available any permissions/rights that govern the scope of data an attester may submit.
- Any representatives/intermediaries submitting data on behalf of an individual/entity have been appropriately authorized.

Once these preconditions have been met, a typical attestation workflow might involve:

- An attester application is pre-populated with data about the individual making the attestation, such as any known demographic information.
    - For example, the attester application may be pre-populated with data from the attester’s EHR system.
    - The attester application may query the verified healthcare directory for existing resources about the attester, which can be updated or used to pre-populate data in the application.
- The application user enters the appropriate information and submits their attestation.
    - Submission of attested information may require some form of digital signature.
    - The attester application should perform a validation process to check the general structure, content, etc. of the submission.
- The attester application POSTs or PUTs the submitted data as FHIR resources to the verified healthcare directory’s attestation API.
- The verified healthcare directory performs a validation process to check the general structure, content, etc. of the submission (e.g. checking consistency w/data type, required elements are present, references to existing resources are correct, codes are from appropriate value set etc.).
    - If there are no errors, the verfied healthcare directory system assigns an ID to the posted resources and returns the appropriate HTTP status code as well as the url/id of each resource.
    - If there are errors, the verified healthcare directory system rejects the operation and returns the appropriate HTTP status code and an OperationOutcome resource describing the error(s).

The FHIR specification describes multiple approaches for managing interactions over an API, including:

- Resources may be created, updated, patched, or deleted individually using the appropriate HTTP method (i.e. POST, PUT, PATCH, DELETE).
- Resources may be created, updated, patched, or deleted as a collection using a Bundle. A Bundle can include a set of actions to perform on a server in a single HTTP request/response.
    - A Bundle of type “batch” requires that there “SHALL be no interdependencies between the different entries in the Bundle”, but failure of any one interaction does not cause the whole collection to fail.
    - A Bundle of type “transaction” is processed as a single atomic unit, and the whole collection will fail if any of the interactions defined in the Bundle fail. Additionally, the FHIR specification provides support for asynchronous interactions, which may be necessary to facilitate processing of large amounts of data.

This implementation guide is not prescriptive about which approach(es) a verified healthcare directory should use to manage attestation. However, as any attestation will likely involve the submission of multiple FHIR resources representing information about one or more attesters, transaction Bundles can alleviate the need for more complex logic to manage referential integrity in attested information.

Implementations relying on individual API interactions or batch Bundles may have to specify an “order of operations” to ensure attested data can be successfully submitted to the verified healthcare directory server. For example, as a general guideline, resources may need to be submitted in the order of:

1. Organization
2. Endpoint
3. Practitioner
4. Location
5. Network
6. InsurancePlan
7. HealthcareService
8. OrganizationAffiliation
9. PractitionerRole
10. CareTeam

Depending on the context of implementation, the entity maintaining a verified healthcare directory may have to manage record collision or duplication (i.e. multiple attesters attempting to simultaneously submit updates to the same record, or multiple attesters attempting to attest about the same set of information).

The FHIR specification provides some guidance on managing collisions using a combination of the ETag and If-Match header in an HTTP interaction. We recommend verified healthcare directory implementers use this approach.

To manage duplicate records, we generally recommend that verified healthcare directory implementers define a robust verification process with policies for identifying and resolving duplicates. Any additional technical capabilities are beyond the scope of this implementation guide.

