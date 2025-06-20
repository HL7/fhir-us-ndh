The recommendations are intended to assist implementers of the National Directory of Healthcare Providers & Services (NDH) in developing solutions that effectively address business objectives, comply with operational and regulatory requirements, and maintain sufficient flexibility to support diverse implementation contexts.

### Attestation
Attestation refers to the process by which authorized entities submit information for inclusion in a healthcare directory. This guide emphasizes the use of a FHIR API to manage attestation; however, implementers may select alternative approaches based on their specific legal, regulatory, and policy environments. Traditional methods, such as paper-based forms, are considered out of scope for this guide.

#### Attestation scenarios
- Individual providers attesting to their information
- Authorized representative attesting to an individual provider’s information
- Authorized representative attesting to an organization’s information
- Authorized representative attesting to a payer organization’s information
- Submission of attested data by an authorized intermediary (e.g., another system that maintains attested data)
- Submission of primary data (e.g., license, network, ...)
    - network contains the organizations which have completed on boarding process with the network, and have assigned relationships within the network


#### The right to Attest/Create Resources

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

**FHIR Resource** | **Practitioner** | **Organization** | **Payer**| **HIE/HIO** |
CareTeam | Attest | Create by one or more Organizations | | |
Endpoint | Attest | Attest/Create | Attest/Create | Create |
HealthcareService | Create | Attest/Create | | |
InsurancePlan | | | Create | |
Location | Attest | Create | | |
Network | Attest | Attest/Create | Create | |
Organization | | Create | | |
OrganizationAffiliation | | Create by one or more Organizations | | |
Practitioner | Create | | | |
PractitionerRole | Attest/Create | Attest/Create | Attest/Create | |

- Organizations Create Careteam Resources to provide Healthcare Services, and HealthcareService Resources
- Organizations Create Location Resources where they provide Healthcare Services.
- Organizations May create Endpoint Resources
- Organizations Create Organization Resources, OrganizationAffiliation Resources
- Organization May create Nework Resource for Social service
- HIE/HIO Create Endpoint Resources
- Payer Create InsurancePlans Resources, Network Resources
- Practitioners Create Practitioner Resources, HealthcareService Resources
- A Practitioner, Organization, or Payer can establish a provisional PractitionerRole Resource through attestation, but the verification process is not considered complete until all associated relationships have also been mutually attested
- The verification process for OrganizationAffiliation is not complete until all of the associated relationships have been mutually verified

### Verification
Verification is critical for ensuring that users of a healthcare directory can rely upon the data in the directory as being accurate, not just meeting a technical specification. The specifics regarding what data should be verified against a primary source is dictated by a policy, which falls outside the purview of this Implementation Guide (IG). However, this IG does provide guidance on the methodology for performing such verification.

Each Directory Resource instance includes a verification element that indicates its current verification status. Detailed information—such as what was verified, when the verification occurred, and how it was performed—is captured in the associated Verification resource instances. For illustrative examples, refer to the [VerificationUsecase].

#### Verification status
- Verified Complete: A complete verified resource instance means that all its elements have been factually verified through primary sources, such as a medical license that has been verified by the state medicine board. It can also mean that the mutual relationship between the parties has been attested by both the practitioner and the organization. 

- Verified Incomplete:  An incomplete verified resource instance refers to information that has not yet been verified, is currently being verified but not yet completed, or the verification has expired and needs to be reverified. 

- Verify Not Requried: Resource instances with a "not required" status are not required to be verified, but have been attested. They also have a verification resource instance associated with them, which indicates that no further verification or mutual attestation is needed.

{% include markdown-link-references.md %}