### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|---------------------------|----------|-------------|
| [location-accessibility](SearchParameter-location-accessibility.html) | token | |
| [location-contains](SearchParameter-location-contains.html) | special | |
| [location-new-patient-from-network](SearchParameter-location-new-patient-from-network.html) | reference | |
| [location-new-patient](SearchParameter-location-new-patient.html) | token | |
	
#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)  
- [Location Search Parameter from Registry](https://hl7.org/fhir/R4/location.html#search)

<style>
    
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>


| **SearchParameter Name** | **Type** | **Example** |
|--------------------------|----------|-------------|
| address | string | |
| address-city | string | |
| address-country | string | |
| address-postalcode | string | |
| address-state | string | |
| address-use | token | |
| organization | reference | |
| type |token | |


#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| Location:endpoint | |
| Location:location-new-patient-from-network | |
| Location:organization | |
| Location:partof | |


#### _revinclude Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_revinclude** | **Example** |
|-----------------|-------------|
| CareTeam:careteam-location | |
| HealthcareService:coverage-area | |
| HealthcareService:location | |
| InsurancePlan:insuranceplan-coverage-area | |
| OrganizationAffiliation:location | |
| PractitionerRole:location | |





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