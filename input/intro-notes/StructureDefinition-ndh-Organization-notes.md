### Search Parameters
#### Search Parameter defined by the NDH IG
None

#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
Since there is no direct individual url for each Search Parameter defined by FHIR Serach Parameter Registry, we have provided the following links for you to access more information about them.

- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)  
- [Organization Search Parameter from Registry](https://hl7.org/fhir/R4/organization.html#search)

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
| Organization:endpoint | |
| Organization:organization-identifier-assigner | |
| Organization:partof | |

#### _revinclude Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_revinclude** | **Example** |
|--------------|-------------|
| CareTeam:careteam-organization | |
| Endpoint:organization | |
| Endpoint:endpoint-identifier-assigner | |
| HealthcareService:organization | |
| HealthcareService:healthcareservice-new-patient-from-network | |
| InsurancePlan:administered-by | |
| InsurancePlan:owned-by | |
| InsurancePlan:insuranceplan-coverage-network | |
| InsurancePlan:insuranceplan-plan-network | |
| InsurancePlan:insuranceplan-network | |
| Location:organization | |
| Location:location-new-patient-from-network | |
| OrganizationAffiliation:network | |
| OrganizationAffiliation:participating-organization | |
| OrganizationAffiliation:primary-organization | |
| Practitioner:practitioner-identifier-assigner | |
| Practitioner:practitioner-qualification-issuer | |
| PractitionerRole:organization | |
| PractitionerRole:practitionerrole-network | |
| PractitionerRole:practitionerrole-new-patient-from-network | |




