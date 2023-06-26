### Search Parameters
#### Search Parameter defined by the NDH IG

In order to obtain information related to the Network resource, which is a derivative of the Organization resource, it is necessary to include the type=ntwk parameter in your search query.

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|---------------------------|----------|-------------|
| [network-coverage-area](SearchParameter-network-coverage-area.html) |	reference | `GET [base]/Organization?type=ntwk&network-coverage-area.address-state=CT`|

This search returns networks have coverage in the State of CT. 

#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
Since there is no direct individual url for each Search Parameter defined by FHIR Serach Parameter Registry, we have provided the following links for you to access more information about them.

- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)  
- [Network Search Parameter from Registry](https://hl7.org/fhir/R4/organization.html#search)

[See NdhOrganization Profile](StructureDefinition-ndh-Organization.html#search-parameter-defined-by-fhir-search-parameter-registry-and-used-by-the-ndh-ig)


