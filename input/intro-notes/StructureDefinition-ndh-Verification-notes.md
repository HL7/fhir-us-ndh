### Search Parameters

{% include StructureDefinition-ndh-Verification-search-params.xhtml %}

#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| VerificationResult:verificationresult-target | `GET [base]/VerificationResult?_include=VerificationResult:target` |
| VerificationResult:verificationresult-attestation-who | `GET [base]/VerificationResult?_include=VerificationResult:attestation-who` |

#### _revinclude Search Parameter
None


