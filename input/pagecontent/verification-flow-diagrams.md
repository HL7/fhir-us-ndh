### Validation and Verification Flow
#### Verification Flow

![VerificationWorkflow](NDH Verification detail 2.jpg)  

**Descriptions**
1. Verification against the reference data from primary sources stored in the NDH
    1. Get the data from the reference data 
    2. Evaluate the verification outcome
        1. In case of success:
            1. update the verification status value of the resource instance to `completed`
            2. update verification resource instance to indicate when, what, is verified

        2. In case of failure:
            1. update the verification status value of the resource instance to `incompleted`
            2. update verification resource instance to indicate when, what, the verification was failed

2. Verification against external primary source
    1. The potential strategies for conducting verification with an external primary source
        1. Verify via external primary source API. The NDH operates as a client to an external primary source's server, utilizing the GET method to procure verification
        2. The NDH can acquire the verification from the primary source through phone, fax, or US postal service
        3. The NDH can also obtain the verification directly in person
   2. Evaluate the verification outcome
        1. In case of success:
            1. update the verification status value of the resource instance to `completed`
            2. update verification resource instance to indicate when, what, is verified

        2. In case of failure:
            1. update the verification status value of the resource instance to `incompleted`
            2. update verification resource instance to indicate when, what, the verification was failed

 
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
- Organizations Create Location Resources where they provide Healthcare Servicess.
- HIE/HIO Create Endpoint Resources
- Organizations Create Organization Resources, OrganizationAffiliation Resources
- Organizations May create Endpoint Resources
- Payer Create InsurancePlans Resources, Network Resources
- Practitioners Create Practitioner Resources
- A Practitioner, Organization, or Payer can establish a provisional PractitionerRole Resources through attestation, but the verification process is not considered complete until all associated relationships have also been mutually attested
- The verification process for OrganizationAffiliation is not complete until all of the associated relationships have been mutually verified

