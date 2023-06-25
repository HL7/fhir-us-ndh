### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|---------------------------|----------|-------------|
| [practitioner-qualification-issuer](SearchParameter-practitioner-qualification-issuer.html) | reference | |
| [practitioner-qualification-code](SearchParameter-practitioner-qualification-code.html) | token | |


#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)  
- [Practitioner Search Parameter from Registry](https://hl7.org/fhir/R4/practitioner.html#search)

<style>
    
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>


| **SearchParameter Name** | **Type** | **Example** |
|--------------------------|----------|-------------|
| active |	token | |
| name | string | |
| gender | token | |
| identifier | token | |



#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| Practitioner:practitioner-endpoint | |
| Practitioner:practitioner-identifier-assigner | |
| Practitioner:practitioner-qualification-issuer | |
| Practitioner:practitione-via-intermediary | |
| Practitioner:verification-attestation-who | |

#### _revinclude Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_revinclude** | **Example** |
|-----------------|-------------|
| PractitionerRole:practitioner | |

