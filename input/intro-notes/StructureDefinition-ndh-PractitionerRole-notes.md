### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|---------------------------|----------|-------------|
| [practitionerrole-network](SearchParameter-practitionerrole-network.html)  | reference | |
| [practitionerrole-new-patient](SearchParameter-practitionerrole-new-patient.html) | token | |
| [practitionerrole-new-patient-from-network](SearchParameter-practitionerrole-new-patient-from-network.html) | reference | |



#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
Since there is no direct individual url for each Search Parameter defined by FHIR Serach Parameter Registry, we have provided the following links for you to access more information about them.

- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)  
- [PractitionerRole Search Parameter from Registry](https://hl7.org/fhir/R4/practitionerrole.html#search)

<style>
    
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>


| **SearchParameter Name** | **Type** | **Example** |
|--------------------------|----------|-------------|
| active | token | |
| identifier | token | |
| location | reference | |
| organization | reference | |
| practitioner | reference | |
| role | token | |
| service | reference | |
| specialty | token | |

#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| PractitionerRole:location | |
| PractitionerRole:practitionerrole-network | |
| PractitionerRole:practitionerrole-new-patient-from-network | |
| PractitionerRole:organization | |
| PractitionerRole:practitioner | |
| PractitionerRole:service | |

#### _revinclude Search Parameter
None


#### PractitionerRole, Location, Address
The address for a practitionerRole should be located on the Location reference.  There is no address on the practitionerRole base resource since the location reference of practitionerRole has an address that should be used by the practitioner as part of their role. Each practitionerRole can support multiple locations. If two practitioners work at the same facility and each of them has their own non-service delivery locations, in addition to the common service delivery location. The guidance descripted in the diagram below:

<figure>
    {% include PractitionerRolePractitioner2Address.svg %}
    <figcaption> </figcaption>
</figure>