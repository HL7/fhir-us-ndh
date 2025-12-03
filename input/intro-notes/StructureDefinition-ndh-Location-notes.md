### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|---------------------------|----------|-------------|
| [accessibility](SearchParameter-location-accessibility.html) | token | `GET [base]/Location?accessibility=cultcomp`|
| [contains](SearchParameter-location-contains.html) | special |`GET [base]/Location?contains=41.809006\|-71.41177`|
| [new-patient-from-network](SearchParameter-location-new-patient-from-network.html) | reference |`GET [base]/Location?new-patient-from-network=newpt` |
| [new-patient](SearchParameter-location-new-patient.html) | token |`GET [base]/Location?=new-patient=newpt` |
| [verification-status](SearchParameter-location-verification-status.html) | token | `GET [base]/Location?verification-status=complete` |

	
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
| HealthcareService:coverage-area |
| HealthcareService:location |
| InsurancePlan:coverage-area |
| OrganizationAffiliation:location |
| PractitionerRole:location |

#### Special Search Parameters
The search parameters outlined above are straightforward for basic scenarios but have limitations in handling complex combination queries. To enhance these capabilities, employing the special search parameters [_filter](https://hl7.org/fhir/R5/search_filter.html#3.2.3) is recommended.


#### Search for locations with managing organization
The FHIR path for the managing organization is `Location.managingOrganization`, but the search parameter is `organization`. For example, to search for all locations assoicated with an managingOrganization has ID `Hospital` should write as:

`GET [base]/Location?organization=Organization/Hospital`

You can also search for locations associated with the managing organizations by name or other criteria. For example, to search for all locations associated with an organization with the name of `Hartford General Hospital`:

`GET [base]/Location?organization:Organization.name=Hartford General Hospital`

You can add additional search criteria to further narrow down your search results. For example, to search for all locations associated with the `Hartford General Hospital` organization that have a status of `active`:

`GET [base]/Location?organization:Organization.name=Hartford General Hospital&status=active`

#### Including other resources in search result
You can search for all Locations and their associated related resources (in this case, organization) which are managering some of locations. The _include parameter to indicate that the managingOrganization resources be included in the result. 

`GET [base]//Location?_include=Location:organization`

#### Search location-boundary-geojson
GeoJSON encodes spatial data structures, including points, lines, polygons, and multi-part collections of these types. It is a common format for representing simple geographic features along with their non-spatial attributes. For example, a polygon area for Washington, D.C. is represented as:
```json
{
  "type"": ""Feature",
  "geometry": {
    "type": "Polygon",
    "coordinates": [
      [
        [-77.119759, 38.934343],
        [-77.041697, 38.99511],
        [-76.910535, 38.892912],
        [-77.038088, 38.791015],
        [-77.119759, 38.934343]
      ]
    ]
  },
  "properties": {
    "name"": "Washington, D.C."
  }
}
```
##### How to populate the location-boundary-geojson data in Location resource
The data type of the location-boundary-geojson is Attachment, with the contentType set to application/geo+json and the data formatted as base64Binary. To represent a polygon area for Washington, D.C., you can use a JSON to Base64 converter to transform the JSON data into base64Binary format, which will look like this:
```json
{
  "resourceType" : "Location",
  "id" : "wash-dc-metro",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/vhdir/StructureDefinition/vhdir-location"]
  },
  "text" : {
    "status" : "extensions",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Location</b><a name=\"wash-dc-metro\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Location &quot;wash-dc-metro&quot; </p><p style=\"margin-bottom: 0px\">Profile: <code>http://hl7.org/fhir/uv/vhdir/StructureDefinition/vhdir-location</code></p></div><p><b>Location Boundary (GeoJSON)</b>: </p><p><b>status</b>: active</p><p><b>name</b>: <span title=\"  this record is active  \">Washington, DC metro area</span></p><p><b>form</b>: Area <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.3.0/CodeSystem-location-physical-type.html\">Location type</a>#area)</span></p></div>"
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/location-boundary-geojson",
    "valueAttachment" : {
      "contentType" : "application/geo+json",
      "data" : "VGhlbWU6IA0KUmF3UGFyc2VkDQp7InR5cGUiOiJGZWF0dXJlQ29sbGVjdGlvbiIsInByb3BlcnRpZXMiOnsia2luZCI6InN0YXRlIiwic3RhdGUiOiJEQyJ9LCJmZWF0dXJlcyI6Ww0KeyJ0eXBlIjoiRmVhdHVyZSIsInByb3BlcnRpZXMiOnsia2luZCI6ImNvdW50eSIsIm5hbWUiOiJEaXN0cmljdCBvZiBDb2x1bWJpYSIsInN0YXRlIjoiREMifSwiZ2VvbWV0cnkiOnsidHlwZSI6Ik11bHRpUG9seWdvbiIsImNvb3JkaW5hdGVzIjpbW1tbLTc3LjAzNTMsMzguOTkzOV0sWy03Ny4wMDI0LDM4Ljk2NjVdLFstNzYuOTA5MywzOC44OTUzXSxbLTc3LjA0MDcsMzguNzkxMl0sWy03Ny4wNDYyLDM4Ljg0MDVdLFstNzcuMDQwNywzOC44NzM0XSxbLTc3LjExNzQsMzguOTMzNl1dXV19fQ0KXX0=",
      "url" : "https://github.com/OpenDataDE/State-zip-code-GeoJSON/raw/master/dc_district_of_columbia_zip_codes_geo.min.json",
      "size" : "389"
    }
  }],
  "status" : "active",
  "name" : "Washington, DC metro area",
  "form" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
      "code" : "area",
      "display" : "Area"
    }]
  }
}
```
##### How to search location-boundary-geojson
The special contains search parameter tests whether the provided geocoded point(s) (expressed as [latitude]|[longitude] using the WGS84 datum) are within the defined boundary. Support for multiple points can also be provided using the , syntax, which is interpreted as the location returned in the search containing at least one of the provided coordinates. For example, for the Washington, D.C. polygon area:

`GET [base]/Location?contains=-77.119759|38.934343,-77.041697|38.99511,-76.910535|38.892912,-77.038088|38.791015,-77.119759|38.934343`