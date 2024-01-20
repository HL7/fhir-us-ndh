### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** | 
|------------------------- |----------|-------------|
| [endpoint](SearchParameter-careteam-endpoint.html)  | reference | `GET [base]/CareTeam?endpoint.indentifier=1234567` |
| [location](SearchParameter-careteam-location.html)  | reference | `GET [base]/CareTeam?location.addr-state=MD` |
| [name](SearchParameter-careteam-name.html) | string | `GET [base]/CareTeame?name=VA-Oncology` |
| [organization](SearchParameter-careteam-organization.html) | reference | `GET [base]/CareTeam?organization.name=Hartford General Hospital` |
| [service](SearchParameter-careteam-service.html) | reference | `GET [base]/CareTeame?service.active=true` |
| [verification-status](SearchParameter-careteam-verification-status.html) | token | `GET [base]/CareTeame?verification-status=complete` |

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
| CareTeam:location | `GET [base]/CareTeam?_include=CareTeam:location` |
| CareTeam:organization | `GET [base]/CareTeam?_include=CareTeam:organization` |
| CareTeam:participant | `GET [base]/CareTeam?_include=&CareTeam:participant` |


#### _revinclude Search parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_revinclude** | **Example** |
|-----------------|-------------|
| VerifcationResult:target | `GET [base]/CareTeam?_revinclude=VerifcationResult:target.type=CareTeam` |

#### Special Search Parameters
The search parameters outlined above are straightforward for basic scenarios but have limitations in handling complex combination queries. To enhance these capabilities, employing the special search parameters [_filter](https://hl7.org/fhir/R5/search_filter.html#3.2.3) is recommended.


