### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|---------------------------|----------|-------------|
| [practitionerrole-network](SearchParameter-practitionerrole-network.html)  | reference |`GET [base]/PractitionerRole?practitionerrole-network.type=ntwk$practitionerrole-network.name=Florida Blue` |
| [practitionerrole-new-patient](SearchParameter-practitionerrole-new-patient.html) | token |`GET [base]/PractitionerRole?practitionerrole-new-patient=newpt`  |
| [practitionerrole-new-patient-from-network](SearchParameter-practitionerrole-new-patient-from-network.html) | reference |`GET [base]/PractitionerRole?practitionerrole-new-patient-from-network=newpt`  |

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
| active | token |`GET [base]/PractitionerRole?active=true`  |
| identifier | token |`GET [base]/PractitionerRole?identifier=1234567`  |
| location | reference |`GET [base]/PractitionerRole?location.address-state=FL`  |
| organization | reference |`GET [base]/PractitionerRole?organization.name=Florida Blue`  |
| practitioner | reference |`GET [base]/PractitionerRole?practitoner.name=Joe Smith`  |
| role | token |`GET [base]/PractitionerRole?role=att`  |
| service | reference |`GET [base]/PractitionerRole?service.address-state=FL`  |
| specialty | token |`GET [base]/PractitionerRole?specialty=103TF0000X`  |

#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| PractitionerRole:location |`GET [base]/PractitionerRole?_include=PractitionerRole:location` |
| PractitionerRole:practitionerrole-network |`GET [base]/PractitionerRole?_include=PractitionerRole:practitionerrole-network` |
| PractitionerRole:practitionerrole-new-patient-from-network |`GET [base]/PractitionerRole?_include= PractitionerRole:practitionerrole-new-patient-from-network` |
| PractitionerRole:organization |`GET [base]/PractitionerRole?_include=PractitionerRole:organization` |
| PractitionerRole:practitioner |`GET [base]/PractitionerRole?_include=PractitionerRole:practitioner` |
| PractitionerRole:service |`GET [base]/PractitionerRole?_include=PractitionerRole:service` |

#### _revinclude Search Parameter
None

#### PractitionerRole.availabeTime and PractitionerRole.notAvailable
Given that both 'availableTime' and 'notAvailable' time are optional elements, they can be excluded for intricate or often changing schedules. These fundamental elements are designed for use where providers have fairly stable schedules (such as clinic schedules that need to be communicated clearly as part of the directory resources), as opposed to an on-call practitioner's schedule.

#### PractitionerRole, Location, Address
The address for a practitionerRole should be located on the Location reference.  There is no address on the practitionerRole base resource since the location reference of practitionerRole has an address that should be used by the practitioner as part of their role. Each practitionerRole can support multiple locations. If two practitioners work at the same facility and each of them has their own non-service delivery locations, in addition to the common service delivery location. The guidance descripted in the diagram below:

<figure>
    {% include PractitionerRolePractitioner2Address.svg %}
    <figcaption> </figcaption>
</figure>