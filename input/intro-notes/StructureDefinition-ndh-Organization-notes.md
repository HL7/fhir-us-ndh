### Search Parameters

{% include StructureDefinition-ndh-Organization-search-params.xhtml %}

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

| **_revinclude** | **Notes** |
|-----------------------|--------------------|
| Endpoint:organization | |
| HealthcareService:organization | HealthcareService.providedBy |
| InsurancePlan:administered-by | |
| InsurancePlan:owned-by | |
| Location:organization | |
| OrganizationAffiliation:participating-organization | |
| OrganizationAffiliation:primary-organization | |
| Practitioner:qualification-issuer |
| PractitionerRole:organization | |

#### Special Search Parameters
The search parameters outlined above are straightforward for basic scenarios but have limitations in handling complex combination queries. To enhance these capabilities, employing the special search parameters [_filter](https://hl7.org/fhir/R5/search_filter.html#3.2.3) is recommended.


