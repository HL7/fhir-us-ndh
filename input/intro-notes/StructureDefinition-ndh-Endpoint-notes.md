### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|--------------------------|----------|-------------|
| [endpoint-access-control-mechanism](SearchParameter-endpoint-access-control-mechanism.html) | token |`GET [base]/Endpoint?endpoint-access-control-mechanism= mutual-tls` |
| [endpoint-connection-type-version](SearchParameter-endpoint-connection-type-version.html) | token |`GET [base]/Endpoint?endpoint-connection-type-version=4.0.1` |
| [endpoint-dynamic-registration-trust-profile](SearchParameter-endpoint-dynamic-registration-trust-profile.html) | token |`GET [base]/Endpoint?endpoint-dynamic-registration-trust-profile=udap`|
| [endpoint-ihe-connection-type](SearchParameter-endpoint-ihe-connection-type.html) | token |`GET [base]/Endpoint?endpoint-ihe-connection-type=XCPD-InitGateway-PatientDiscovery-AsyncResponse`|
| [endpoint-nonfhir-usecase-type](SearchParameter-endpoint-nonfhir-usecase-type.html) | token |`GET [base]/Endpoint?endpoint-nonfhir-usecase-type=patient-access` |
| [endpoint-trust-framework-type](SearchParameter-endpoint-trust-framework-type.html) | token |`GET [base]/Endpoin?endpoint-trust-framework-type= DirectTrust` |
| [endpoint-usecase-type](SearchParameter-endpoint-usecase-type.html) | token | `GET [base]/Endpoint?endpoint-usecase-type=HOPERAT` |
| [endpoint-verification-status](SearchParameter-endpoint-verification-status.html) | token |`GET [base]/Endpoint?endpoint-verification-status=complete` |

#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
Since there is no direct individual url for each Search Parameter defined by FHIR Serach Parameter Registry, we have provided the following links for you to access more information about them.

- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)
- [Endpoint Search Parameter from Registry](https://hl7.org/fhir/R4/endpoint.html#search)

<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|--------------------------|----------|-------------|
| connection-type | token |`GET [base]/Endpoint?connection-type=hl7-fhir-rest` |
| identifier | token |`GET [base]/Endpoint?identifier={system}|{value}`|
| organization | reference |`GET [base]/Endpoint?organization.name=Hartford General Hospital`|
| status | token |`GET [base]/Endpoint?status=active` |

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

| **_revinclude** |
|-----------------|
| CareTeam:careteam-endpoint |
| HealthcareService:endpoint |
| InsurancePlan:endpoint |
| Location:endpoint |
| Organization:endpoint |
| OrganizationAffiliation:endpoint |
| Practitioner:practitioner-endpoint |
| PractitionerRole:endpoint | 
| VerifcationResult:verificationresult-target |



