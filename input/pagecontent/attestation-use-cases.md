### Attestation Use Cases
#### Attest to individual information using unattested data
1. Practitioners access the NDH attestation portal or application with their assigned ID.
2. If the individual has an NPI number from NPPES, the NDH attestation portal or application may display their personal information for attestation.
3. The individual can accept, reject, or modify the information present. 
4. After the individual submit the attested information, the NDH attestation portal or application will convert the information into FHIR resources and POST them into the NDH server.
5. The NDH server validates the FHIR resource. If the resources failed to the validation, the error will be sent back to the NDH attestation portal or application. The NDH attestation portal or application needs to act accordingly, such as fix issues and notify the attester. 

<!--
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
-->

#### Attest to organizational information using unattested data
#### Attest to multiple individuals using a CSV file or JSON upload
#### Attest to Payer network
#### Attest to endpoints




{% include markdown-link-references.md %}
