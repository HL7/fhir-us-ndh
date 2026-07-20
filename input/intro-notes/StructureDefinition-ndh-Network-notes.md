### Search Parameters

{% include StructureDefinition-ndh-Network-search-params.xhtml %}

#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **include** | **Example** |
|-----------------|-------------|
| Organization:coverage-area |`GET [base]/Organization?type=ntwk&_include=Organization:coverage-area` |

#### _revinclude Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_revinclude** | **Example** |
|--------------|------------------|
| HealthcareService:network |`GET [base]/Organization?type=ntwk&_revinclude=HealthcareService:network`|
| HealthcareService:new-patient-from-network |`GET [base]/Organization?type=ntwk&_revinclude=HealthcareService:new-patient-from-network` |
| InsurancePlan:coverage-network |`GET [base]/Organization?type=ntwk&_revinclude=InsurancePlan:coverage-network` |
| InsurancePlan:plan-network |`GET [base]/Organization?type=ntwk&_revinclude=InsurancePlan:plan-network` |
| InsurancePlan:network |`GET [base]/Organization?type=ntwk&_revinclude=InsurancePlan:network` |
| OrganizationAffiliation:network |`GET [base]/Organization?type=ntwk&_revinclude=OrganizationAffiliation:network` |
| PractitionerRole:network |`GET [base]/Organization?type=ntwk&_revinclude=PractitionerRole:network` |
| PractitionerRole:new-patient-from-network |`GET [base]/Organization?type=ntwk&_revinclude=PractitionerRole:new-patient-from-network` |
