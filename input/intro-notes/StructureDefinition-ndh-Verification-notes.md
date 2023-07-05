### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|---------------------------|----------|-------------|
| [verificationresult-attestation-who](SearchParameter-verificationresult-attestation-who.html) | reference | `GET [base]/VerificationResult?verificationresult-attestation-who=[id]`|
| [verificationresult-primarysource-validation-status](SearchParameter-verificationresult-primarysource-validation-status.html) | token |`GET [base]/VerificationResult?verificationresult-primarysource-validation-status=[code]` |
| [verificationresult-primarysource-type](SearchParameter-verificationresult-primarysource-type.html) | token | `GET [base]/VerificationResult?verificationresult-primarysource-type=[code]`|
| [verificationresult-status](SearchParameter-verificationresult-status.html) | token | `GET [base]/VerificationResult?verificationresult-status=[code]`|
| [verificationresult-target](SearchParameter-verificationresult-target.html) | reference | `GET [base]/VerificationResult?verificationresult-target=[id]`|

#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
None

#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| VerificationResult:verificationresult-target | `GET [base]/VerificationResult?_include=VerificationResult:verificationresult-target` |
| VerificationResult:verificationresult-attestation-who | `GET [base]/VerificationResult?_include=VerificationResult:verificationresult-attestation-who` |

#### _revInclude Search Parameter
None



