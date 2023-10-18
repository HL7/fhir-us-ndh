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
| active | token |`GET [base]/Organization?active=true` |
| address | string |`GET [base]/Organization?address=123 Ravissant Dr` |
| address-city | string |`GET [base]/Organization?address-city=Coconut Creek` |
| address-country | string |`GET [base]/Organization?address-country=USA` |
| address-postalcode | string |`GET [base]/Organization?address-postcode=12345` |
| address-state | string |`GET [base]/Organization?address-state=FL` |
| address-use | token |`GET [base]/Organization?address-use=work` |
| endpoint | reference |`GET [base]/Organization?endpoint.connection-type=hl7-fhir-rest` |
| identifier | token |`GET [base]/Organization?identifier=12345` |
| name | string |`GET [base]/Organization?name=Florida Blue` |
| partof | reference |`GET [base]/Organization?partof.name=Florida Blue` |
| type	token |`GET [base]/Organization?type=gov` |

#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **include** | **Example** |
|-----------------|-------------|
| Organization:endpoint |`GET [base]/Organization?_include=Organization:endpoint` |
| Organization:partof |`GET [base]/Organization?_include=Organization:partof` |

#### _revinclude Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_revinclude** |
|--------------|
| CareTeam:organization |
| Endpoint:organization |
| HealthcareService:organization |
| HealthcareService:new-patient-from-network |
| InsurancePlan:administered-by |
| InsurancePlan:owned-by |
| InsurancePlan:coverage-network |
| InsurancePlan:plan-network |
| InsurancePlan:network |
| Location:organization |
| Location:new-patient-from-network |
| OrganizationAffiliation:network |
| OrganizationAffiliation:participating-organization |
| OrganizationAffiliation:primary-organization |
| Practitioner:qualification-issuer |
| PractitionerRole:organization |
| PractitionerRole:network |
| PractitionerRole:new-patient-from-network |




