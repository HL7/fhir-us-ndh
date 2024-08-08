### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|---------------------------|----------|-------------|
| [qualification-issuer](SearchParameter-practitioner-qualification-issuer.html) | reference |`GET [base]/Practitioner?qualification-issuer.name=Florida License Board`|
| [qualification-code](SearchParameter-practitioner-qualification-code.html) | token |`GET [base]/Practitioner?qualification-code=MD` |
| [endpoint](SearchParameter-practitioner-endpoint.html) | reference | `GET [base]/Practitioner?endpoint.identifier={system}|{value}` |


#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)  
- [Practitioner Search Parameter from Registry](https://hl7.org/fhir/R4/practitioner.html#search)

<style>
    
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>


| **SearchParameter Name** | **Type** | **Example** |
|--------------------------|----------|-------------|
| active |	token |`GET [base]/Practitioner?active=true` |
| name | string |`GET [base]/Practitioner?name=Joe Smith` |
| gender | token |`GET [base]/Practitioner?gender=male` |
| identifier | token |`GET [base]/Practitioner?identifier=12345678` |



#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| Practitioner:endpoint |`GET [base]/Practitioner?_include= Practitioner:endpoint` |
| Practitioner:qualification-issuer |`GET [base]/Practitioner?_include=Practitioner:qualification-issuer` |
| Practitioner:via-intermediary |`GET [base]/Practitioner?_include=Practitioner:via-intermediary`  |

#### _revinclude Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_revinclude** |
|-----------------|
| PractitionerRole:practitioner |

