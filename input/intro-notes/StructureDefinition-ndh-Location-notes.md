#### Search Parameters
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