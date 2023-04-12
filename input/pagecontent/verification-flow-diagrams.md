### Validation and Verification Flow
#### Who has the right to Attest/Create Resources

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

**Resource** | **Practitioner** | **Organization** | **Payer**| **HIE/HIO** |
CareTeam | Attest | Create by one or more Organizations | | |
Endpoint | Attest | Attest/Create | Attest/Create | Create |
HealthcareService | | Attest/Create | | |
InsurancePlan | | | Create | |
Location | Attest | Create | | |
Network | Attest | Attest | Create | |
Organization | | Create | | |
OrganizationAffiliation | | Create by one or more Organizations | | |
Practitioner | Create | | | |
PractitionerRole | Attest/Create (by attested relationship) | Attest/Create (by attested relationship) | Attest/Create (by attested relationship) | |

- Organizations Create a Careteam Resources to provide Healthcare Services, and HealthcareService Resources
- Organizations Create Location Resources where provide Healthcare Servicess.
- Organizations, HIE/HIO Create Endpoint Resources
- Organizations Create Organization Resources, OrganizationAffiliation Resources
- Payer Create InsurancePlans Resources, Network Resources
- Practitioners Create Practionder Resources
- A Practitioner, Organization, or Payer can establish a provisional PractitionerRole Resources through attestation, but the verification process is not considered complete until all associated relationships have also been mutually attested.
- OrganizationAffiliation' verification process is completed until all associated relationships have been mutually attested.

#### Authorized User Attest Self  

<figure>
    {% include AttestSelfAuthorized.svg %}
    <figcaption></figcaption>
</figure>

#### Authorized User Attest Relationship ( Resources involved in the relationship are in NDH) 
<figure>
    {% include AttestRelationship1.svg %}
    <figcaption></figcaption>
</figure>

#### Authorized User Attest Relationship ( Resources involved in the relationship are not in NDH) 
<figure>
    {% include AttestRelationship2.svg %}
    <figcaption></figcaption>
</figure>  

#### Unattested data from other attested data (NPPES, PECOS ...)







