### Attestation Use Cases
#### Attest to individual information using unattested data
**Step-1**
A practitioner accesses the NDH attestation portal using their assigned ID.  

**Step-2**
If the individual has an NPI number from NPPES, the NDH attestation portal displays their personal data for attestation.
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| Data Item | Data | Confirm | Updates |
| --------- | ---- | ------- | ------- |
| First Name | Joe | Yes | |
| Last Name | Smith | Yes | |
| NPI | 1245319599 | Yes | |
| Home Address | 501 Echo Lake Chicago, IL 60661 | Yes | |
| Work Address | 400 Lee Rd Chicago, IL 60662 | Yes | |
| Home Telecom | 555-123-4444 | No | 555-123-6666 |
| Work Telecom | 555-123-1234 | Yes | |
| qualification | Internal Medicine Physician | Yes | |

**Step-3**
The NDH creates the Practitioner resource for Joe Smith along with associated VerificationResult and Usage Restrication Resorces  
See the Resources:  

* [Practitioner/JoeSmith]
* [VerificationResult/Verify-JoeSmith]

#### Attest to organizational information using unattested data
#### Attest to multiple individuals using a CSV file or JSON upload
#### Attest to Payer network
#### Attest to endpoints




{% include markdown-link-references.md %}
