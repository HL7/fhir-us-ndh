### Search Parameters
#### Search Parameter defined by the NDH IG

In order to obtain information related to the Network resource, which is a derivative of the Organization resource, it is necessary to include the **type=ntwk** parameter in your search query.

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|---------------------------|----------|-------------|
| [network-coverage-area](SearchParameter-network-coverage-area.html) |	reference | `GET [base]/Organization?type=ntwk&network-coverage-area.address-state=CT`|

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
| active | token | |
| address | string | |
| address-city | string | |
| address-country | string | |
| address-postalcode | string | |
| address-state | string | |
| address-use | token | |
| endpoint | reference | |
| identifier | token | |
| name | string | |
| partof | reference | |
| type	token | |


#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **include** | **Example** |
|-----------------|-------------|
| Organization:network-coverage-area | |

#### _revinclude Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_revinclude** | **Example** |
|--------------|-------------|
| HealthcareService:healthcareservice-network | |
| HealthcareService:healthcareservice-new-patient-from-network | |
| InsurancePlan:insuranceplan-coverage-network | |
| InsurancePlan:insuranceplan-plan-network | |
| InsurancePlan:insuranceplan-network | |
| OrganizationAffiliation:network | |
| PractitionerRole:practitionerrole-network | |
| PractitionerRole:practitionerrole-new-patient-from-network | |
