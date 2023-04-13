### Validation and Verification Flow
#### Who has the right to Attest/Create Resources

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

**FHIR Resource** | **Practitioner** | **Organization** | **Payer**| **HIE/HIO** |
CareTeam | Attest | Create by one or more Organizations | | |
Endpoint | Attest | Attest/Create | Attest/Create | Create |
HealthcareService | | Attest/Create | | |
InsurancePlan | | | Create | |
Location | Attest | Create | | |
Network | Attest | Attest | Create | |
Organization | | Create | | |
OrganizationAffiliation | | Create by one or more Organizations | | |
Practitioner | Create | | | |
PractitionerRole | Attest/Create | Attest/Create | Attest/Create | |

- Organizations Create a Careteam Resources to provide Healthcare Services, and HealthcareService Resources
- Organizations Create Location Resources where provide Healthcare Servicess.
- HIE/HIO Create Endpoint Resources
- Organizations Create Organization Resources, OrganizationAffiliation Resources
- Organizations May create Endpoint Resources
- Payer Create InsurancePlans Resources, Network Resources
- Practitioners Create Practionder Resources
- A Practitioner, Organization, or Payer can establish a provisional PractitionerRole Resources through attestation, but the verification process is not considered complete until all associated relationships have also been mutually attested.
- The verification process for OrganizationAffiliation is not complete until all of the associated relationships have been mutually verified.
