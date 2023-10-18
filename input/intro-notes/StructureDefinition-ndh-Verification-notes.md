### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|---------------------------|----------|-------------|
| [attestation-who](SearchParameter-verificationresult-attestation-who.html) | reference | `GET [base]/VerificationResult?attestation-who=[id]`|
| [primarysource-validation-status](SearchParameter-verificationresult-primarysource-validation-status.html) | token |`GET [base]/VerificationResult?primarysource-validation-status=[code]` |
| [primarysource-type](SearchParameter-verificationresult-primarysource-type.html) | token | `GET [base]/VerificationResult?primarysource-type=[code]`|
| [status](SearchParameter-verificationresult-status.html) | token | `GET [base]/VerificationResult?status=[code]`|
| [target](SearchParameter-verificationresult-target.html) | reference | `GET [base]/VerificationResult?target=[id]`|

#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
None

#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| VerificationResult:verificationresult-target | `GET [base]/VerificationResult?_include=VerificationResult:target` |
| VerificationResult:verificationresult-attestation-who | `GET [base]/VerificationResult?_include=VerificationResult:attestation-who` |

#### _revInclude Search Parameter
None



