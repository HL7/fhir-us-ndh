### Search Parameters
#### Search Parameter defined by the NDH IG

In order to obtain information related to the Network resource, which is a derivative of the Organization resource, it is necessary to include the **type=ntwk** parameter in your search query.

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|---------------------------|----------|-------------|
| [coverage-area](SearchParameter-network-coverage-area.html) |	reference | `GET [base]/Organization?type=ntwk&coverage-area.address-state=CT`|

This search returns networks have coverage in the State of CT. 

#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
Since there is no direct individual url for each Search Parameter defined by FHIR Serach Parameter Registry, we have provided the following links for you to access more information about them.

- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)  
- [Network Search Parameter from Registry](https://hl7.org/fhir/R4/organization.html#search)


<style>
    
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>


| **SearchParameter Name** | **Type** | **Example** |
|--------------------------|----------|-------------|
| active | token |`GET [base]/Organization?type=ntwk&active=true` |
| address | string |`GET [base]/Organization?type=ntwk&address=123 Ravissant Dr` |
| address-city | string |`GET [base]/Organization?type=ntwk&address-city=Coconut Creek` |
| address-country | string |`GET [base]/Organization?type=ntwk&address-country=USA` |
| address-postalcode | string |`GET [base]/Organization?type=ntwk&address-postcode=12345` |
| address-state | string |`GET [base]/Organization?type=ntwk&address-state=FL` |
| address-use | token |`GET [base]/Organization?type=ntwk&address-use=work` |
| endpoint | reference |`GET [base]/Organization?type=ntwk&endpoint.connection-type=hl7-fhir-rest` |
| identifier | token |`GET [base]/Organization?type=ntwk&identifier=12345` |
| name | string |`GET [base]/Organization?type=ntwk&name=Florida Blue` |
| partof | reference |`GET [base]/Organization?type=ntwk&partof.name=Florida Blue` |
| type	token |`GET [base]/Organization?type=ntwk` |


#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **include** | **Example** |
|-----------------|-------------|
| Organization:coverage-area |`GET [base]/Organization?type=ntwk&_include= Organization:coverage-area` |

#### _revinclude Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_revinclude** |
|--------------|
| HealthcareService:network |
| HealthcareService:new-patient-from-network |
| InsurancePlan:coverage-network |
| InsurancePlan:plan-network |
| InsurancePlan:network |
| OrganizationAffiliation:network |
| PractitionerRole:network |
| PractitionerRole:new-patient-from-network |
