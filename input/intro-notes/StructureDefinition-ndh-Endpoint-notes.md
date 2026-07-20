### Search Parameters

{% include StructureDefinition-ndh-Endpoint-search-params.xhtml %}

#### _include Search Parameter

<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| Endpoint:organization | `GET [base]/Endpoint?_include=Endpoint:organization`


#### _revinclude Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_revinclude** |
|-----------------|
| HealthcareService:endpoint |
| InsurancePlan:endpoint |
| Location:endpoint |
| Organization:endpoint |
| OrganizationAffiliation:endpoint |
| Practitioner: endpoint |
| PractitionerRole:endpoint | 
| VerifcationResult:target |

#### Special Search Parameters
The search parameters outlined above are straightforward for basic scenarios but have limitations in handling complex combination queries. To enhance these capabilities, employing the special search parameters [_filter](https://hl7.org/fhir/R5/search_filter.html#3.2.3) is recommended.


