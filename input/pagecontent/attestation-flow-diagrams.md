### Initial Attestation Workflow

![IntialAttestationWorkflow](NDH_Initial_Attestation_WF.png)  

**Descriptions**
1. Initiate a one-time process to upload unverified data from different directories, such as the CMS National Plan and Provider Enumeration System (NPPES), the Medicare Provider Enrollment, Chain, and Ownership System (PECOS), etc.

2. Transfer reference data from the main source into the NDH (Network Data Hub).

3. Receive attested details about oneself, an organization or a group from an authorized individual via the Portal or Application. This information might contrast with the unattested data or reference data.

4. Upon full verification of the data, store it in the NDH and mark its resource verification status as complete.

5. For data that still requires verification or has unresolved items, take the following steps: If the data is awaiting verification from the primary source, place it in the pending verification queue and store it in the NDH, marking its resource verification status as incomplete. If it's waiting for mutual attestation, place it in the provisional relationship resource queue, also storing it in the NDH with an incomplete verification status. Upon resolution of all pending verification items, the resource verification status will be updated to complete in the NDH.


### Ongoing Attestation/Update Workflow

![OngoingAttestationWorkflow](NDH Attestation WF ongoing.jpg)  

**Descriptions**
1. Receive updated attested details about oneself, an organization or a group from an authorized individual via the Portal or Application or pull the reference data from primary sources stored in the NDH server. 

2. The NDH should assess and compare newly entered data with the existing dataset to establish if it's new, modified, or the same. If the data is unchanged, no further action is required; if it's new or has been altered, it needs to go through the same verification process as in the initial attestation. After this, steps 4 and 5 in the Initial Attestation workflow should be repeated.


### Who has the right to Attest/Create Resources

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

- Organizations Create a Careteam Resources to provide Healthcare Services, and HealthcareService Resources
- Organizations Create Location Resources where they provide Healthcare Servicess.
- Organizations May create Endpoint Resources
- Organizations Create Organization Resources, OrganizationAffiliation Resources
- Organization May create Nework Resource for Social service
- HIE/HIO Create Endpoint Resources
- Payer Create InsurancePlans Resources, Network Resources
- Practitioners Create Practitioner Resources, HealthcareService Resources
- A Practitioner, Organization, or Payer can establish a provisional PractitionerRole Resources through attestation, but the verification process is not considered complete until all associated relationships have also been mutually attested
- The verification process for OrganizationAffiliation is not complete until all of the associated relationships have been mutually verified

