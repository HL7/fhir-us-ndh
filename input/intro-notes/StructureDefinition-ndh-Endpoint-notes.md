### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|--------------------------|----------|-------------|
| [endpoint-access-control-mechanism](SearchParameter-endpoint-access-control-mechanism.html) | token | |
| [endpoint-connection-type-version](SearchParameter-endpoint-connection-type-version.html) | token | |
| [endpoint-dynamic-registration-trust-profile](SearchParameter-endpoint-dynamic-registration-trust-profile.html) | token | |
| [endpoint-ihe-connection-type](SearchParameter-endpoint-ihe-connection-type.html) | token | |
| [endpoint-nonfhir-usecase-type](SearchParameter-endpoint-nonfhir-usecase-type.html) | token | |
| [endpoint-trust-framework-type](SearchParameter-endpoint-trust-framework-type.html) | token | |
| [endpoint-usecase-type](SearchParameter-endpoint-usecase-type.html) | token | `GET [base]/Endpoint?endpoint-usecase-type=HOPERAT` |
| [endpoint-verification-status](SearchParameter-endpoint-verification-status.html) | token | |

#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)
- [Endpoint Search Parameter from Registry](https://hl7.org/fhir/R4/endpoint.html#search)

<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|--------------------------|----------|-------------|
| connection-type | token | |
| identifier | token |
| organization | reference | |
| status | token | |

#### _include Search Parameter

<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| Endpoint:organization | `GET [base]/CareTeam?_include=Endpoint:organization`



#### _revinclude Search parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_revinclude** | **Example** |
|-----------------|-------------|
| CareTeam:careteam-endpoint | |
| HealthcareService:endpoint | |
| InsurancePlan:endpoint | |
| Location:endpoint | |
| Organization:endpoint | |
| OrganizationAffiliation:endpoint | |
| Practitioner:practitioner-endpoint | |
| PractitionerRole:endpoint | | 
| VerifcationResult:verificationresult-target | `GET [base]/CareTeam?_revinclude=VerifcationResult:verificationresult-target.type=Endpoint`



