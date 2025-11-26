### FAST FHIR National Directory - Attestation, Validation & Verification

Inspired by the Validated Healthcare Directory (VhDir) Technical Guidance, the objective of this document is to provide implementers with key attestation, validation, and verification guidance for developing robust and interoperable solutions without being prescriptive.

### Attestation, Validation, and Verification Guidance
The recommendations aim to guide implementers of the National Directory of Healthcare Providers & Services (NDH) in creating solutions that meet business needs, operational constraints, and regulatory requirements, while still allowing flexibility.

#### Attestation
Attestation involves authorized entities submitting information for inclusion in a healthcare directory. The guide focuses on using a FHIR API for managing attestation, but implementers can choose accordingly based on their context (laws, regulations, policies). Traditional methods like paper-based forms are outside this guide's scope.

Attestation Scenarios include:

* Practitioners self-attesting their information.
* Representatives attesting organizational data.
* Authorized representatives using CSV or JSON for multiple practitioners.
* Representatives attesting payer network data.
* Organizations attesting endpoints they own.

Authorized entities have specific rights for resource attestation:

| **FHIR Resource**       | **Practitioner**  | **Organization**                    | **Payer**         | **HIE/HIO**       | 
| ----------------------- | ----------------- | ----------------------------------- | ----------------- | ----------------- | 
| Endpoint                | Attest            | Attest/Create                       | Attest/Create     | Create            | 
| HealthcareService       | Create            | Attest/Create                       |                   |                   | 
| InsurancePlan           |                   |                                     | Create            |                   | 
| Location                | Attest            | Create                              |                   |                   | 
| Network                 | Attest            | Attest/Create                       | Create            |                   | 
| Organization            |                   | Create                              |                   |                   | 
| OrganizationAffiliation |                   | Create by one or more Organizations |                   |                   | 
| Practitioner            | Create            |                                     |                   |                   | 
| PractitionerRole        | Attest/Create     | Attest/Create                       | Attest/Create     |                   | 
| ----------------------- | ----------------- | ----------------------------------- | ----------------- | ----------------- | 

Policies before Accepting Attested Data:

* Successful registration and integration with the NDH.
* Identity proofing completion.
* Validated exchange of credentials.
* Established permissions for data submission.

A typical attestation workflow includes accessing the NDH client, reviewing and submitting information, data conversion, transmission, and server validation.

#### Validation and Verification

Validation ensures data integrity and compliance with FHIR specifications. Verification confirms data truthfulness against primary sources, which may offer APIs or manual methods.

Verification types might include:

* Mutual attestation for relationship confirmation.
* Frequency requirements (e.g., license status).
* Differing operational verification approaches.

VerificationResult Resource documents the verification process, primary sources, data sources, and outcomes.

Handling Verification Failures involves flagging incomplete resources and maintaining logs of verification attempts.

Provenance tracks attestation and verification details, while security and privacy policies ensure adherence to standards like NIST guidelines.

By streamlining these processes, the document aids implementers in efficiently building and maintaining a comprehensive directory.
