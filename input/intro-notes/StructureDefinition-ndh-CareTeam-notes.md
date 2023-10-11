### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** | 
|------------------------- |----------|-------------|
| [careteam-location](SearchParameter-careteam-location.html)  | reference | `GET [base]/CareTeam?careteam-location.addr-state=MD` |
| [careteam-name](SearchParameter-careteam-alias.html) | string | `GET [base]/CareTeame?careteam-alias=VA-Oncology` |
| [careteam-organization](SearchParameter-careteam-organization.html) | reference | `GET [base]/CareTeam?careteam-organization.name=Hartford General Hospital` |
| [careteam-service](SearchParameter-careteam-service.html) | reference | `GET [base]/CareTeame?careteam-service.active=true` |
| [careteam-verification-status](SearchParameter-careteam-verification-status.html) | token | `GET [base]/CareTeame?careteam-verification-status=complete` |

#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
Since there is no direct individual url for each Search Parameter defined by FHIR Serach Parameter Registry, we have provided the following links for you to access more information about them.

- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)  
- [CareTeam Search Parameter from Registry](https://hl7.org/fhir/R4/careteam.html#search)

<style>
    
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

|**SearchParameter Name** | **Type** | **Example** |
|-------------------------|----------|-------------|
| category | token | `GET [base]/CareTeam?category=behav` |
| identifier | token | `GET [base]/CareTeam?identifier=http://hl7.org/fhir/R4/v2/0203/index.html|SB` |
| participant | reference | `GET [base]/CareTeam?participant.name=Hamilton Clinic` |
| status | token | `GET [base]/CareTeam?status=active` |

#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| CareTeam:careteam-location | `GET [base]/CareTeam?_include=CareTeam:careteam-location` |
| CareTeam:careteam-organization | `GET [base]/CareTeam?_include=CareTeam:careteam-organization` |
| CareTeam:participant | `GET [base]/CareTeam?_include=&CareTeam:participant` |


#### _revinclude Search parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_revinclude** | **Example** |
|-----------------|-------------|
| VerifcationResult:verificationresult-target | `GET [base]/CareTeam?_revinclude=VerifcationResult:verificationresult-target.type=CareTeam` |


