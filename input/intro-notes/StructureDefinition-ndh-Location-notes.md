### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|---------------------------|----------|-------------|
| [accessibility](SearchParameter-location-accessibility.html) | token | `GET [base]/Location?accessibility=cultcomp`|
| [contains](SearchParameter-location-contains.html) | special |`GET [base]/Location?contains.near=41.809006|-71.41177|3|mi` Note: you may need to replace \| to %7C in the near value |
| [new-patient-from-network](SearchParameter-location-new-patient-from-network.html) | reference |`GET [base]/Location?new-patient-from-network=newpt` |
| [new-patient](SearchParameter-location-new-patient.html) | token |`GET [base]/Location?=new-patient=newpt` |
	
#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
Since there is no direct individual url for each Search Parameter defined by FHIR Serach Parameter Registry, we have provided the following links for you to access more information about them.

- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)  
- [Location Search Parameter from Registry](https://hl7.org/fhir/R4/location.html#search)

<style>
    
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>


| **SearchParameter Name** | **Type** | **Example** |
|--------------------------|----------|-------------|
| address | string |`GET [base]/Location?address=123 Ravissant ST` |
| address-city | string |`GET [base]/Location?address-city=Coconut Creek` |
| address-country | string |`GET [base]/Location?address-country=USA` |
| address-postalcode | string |`GET [base]/Location?address-postalcode=34997` |
| address-state | string |`GET [base]/Location?address-state=FL` |
| address-use | token |`GET [base]/Location?address-use=work` |
| organization | reference |`GET [base]/Location?organization.address-state=FL` |
| type |token |`GET [base]/Location?type=RH` |


#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| Location:endpoint |`GET [base]/Location?_include=Location:endpoint` |
| Location:new-patient-from-network |`GET [base]/Location?_include=Location:new-patient-from-network` |
| Location:organization |`GET [base]/Location?_include=Location:organization` |
| Location:partof |`GET [base]/Location?_include=Location:partof` |


#### _revinclude Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_revinclude** |
|-----------------|
| CareTeam:careteam-location |
| HealthcareService:coverage-area |
| HealthcareService:location |
| InsurancePlan:coverage-area |
| OrganizationAffiliation:location |
| PractitionerRole:location |





##### Search for locations with managing organization
The FHIR path for the managing organization is `Location.managingOrganization`, but the search parameter is `organization`. For example, to search for all locations assoicated with an managingOrganization has ID `Hospital` should write as:

`GET [base]/Location?organization=Organization/Hospital`

You can also search for locations associated with the managing organizations by name or other criteria. For example, to search for all locations associated with an organization with the name of `Hartford General Hospital`:

`GET [base]/Location?organization:Organization.name=Hartford General Hospital`

You can add additional search criteria to further narrow down your search results. For example, to search for all locations associated with the `Hartford General Hospital` organization that have a status of `active`:

`GET [base]/Location?organization:Organization.name=Hartford General Hospital&status=active`

##### Including other resources in search result
You can search for all Locations and their associated related resources (in this case, organization) which are managering some of locations. The _include parameter to indicate that the managingOrganization resources be included in the result. 

`GET [base]//Location?_include=Location:organization`