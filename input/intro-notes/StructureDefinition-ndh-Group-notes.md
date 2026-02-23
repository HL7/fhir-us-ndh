### Search Parameters
#### Search Parameter defined by the NDH IG

None defined.

#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
Since there is no direct individual url for each Search Parameter defined by FHIR Serach Parameter Registry, we have provided the following links for you to access more information about them.

- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)
- [Group Search Parameter from Registry](https://hl7.org/fhir/R4/group.html#search)

<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|--------------------------|----------|-------------|
| member | reference |`GET [base]/Group?member=Patient/123` |
| managing-entity | reference |`GET [base]/Group?managing-entity={system}|{value}`|
| type | token |`GET [base]/Group?type=some-type`|
| code | token |`GET [base]/Group?code=some-code` |

#### _include Search Parameter

None defined.

#### _revinclude Search parameter

None defined.

#### Special Search Parameters

None defined.
