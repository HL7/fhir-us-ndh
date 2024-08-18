### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|---------------------------|----------|-------------|
| [location](SearchParameter-practitionerrole-location.html) | reference | `GET [base]/PractitionerRole?location.address-state=FL`  |
| [network](SearchParameter-practitionerrole-network.html)  | reference |`GET [base]/PractitionerRole?network.type=ntwk$network.name=Florida Blue` |
| [new-patient](SearchParameter-practitionerrole-new-patient.html) | token |`GET [base]/PractitionerRole?new-patient=newpt`  |
| [new-patient-from-network](SearchParameter-practitionerrole-new-patient-from-network.html) | reference |`GET [base]/PractitionerRole?new-patient-from-network=newpt`  |
| [organization](SearchParameter-practitionerrole-organization.html) | reference | `GET [base]/PractitionerRole?organization.name=Florida Blue`  |
| [verification-status](SearchParameter-practitionerrole-verification-status.html) | token | `GET [base]/PractitionerRole?verification-status=complete` |

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
 PractitionerRole:endpoint |`GET [base]/PractitionerRole?_include=PractitionerRole:endpoint` |
| PractitionerRole:location |`GET [base]/PractitionerRole?_include=PractitionerRole:location` |
| PractitionerRole:network |`GET [base]/PractitionerRole?_include=PractitionerRole:network` |
| PractitionerRole:new-patient-from-network |`GET [base]/PractitionerRole?_include= PractitionerRole:new-patient-from-network` |
| PractitionerRole:organization |`GET [base]/PractitionerRole?_include=PractitionerRole:organization` |
| PractitionerRole:practitioner |`GET [base]/PractitionerRole?_include=PractitionerRole:practitioner` |
| PractitionerRole:service |`GET [base]/PractitionerRole?_include=PractitionerRole:service` |

#### _revinclude Search Parameter
None

#### Special Search Parameters
The search parameters outlined above are straightforward for basic scenarios but have limitations in handling complex combination queries. To enhance these capabilities, employing the special search parameters [_filter](https://hl7.org/fhir/R5/search_filter.html#3.2.3) is recommended.

#### The reason the cardinality of PractitionerRole.network is 0..1
The network cardinality sets to 0..1 is to meet the requirements of linking PractitionerRole with a specific time period. The duration a practitioner spends in a network often differs across networks, and it's unusual for these periods to coincide. When a Practitioner is incorporated into a new network, the relevant time frame adheres to that specific network's agreement or contract with the practitioner. The same principle applies when the practitioner departs from the network.

### How resource ownership functions when multiple entities can provide information for the same resource
Assuming that the Practitioner "owns" the practitionerRole, the practitioner must attest to the information related to their participation in a specific network. If there is no existing network declaration associated with that practitionerRole, the practitioner should update the practitionerRole accordingly. However, if a network declaration already exists for that role, the practitioner should create a new practitionerRole and include the network information in this role. This process is also applicable to other individuals who have ownership responsibilities for the practitionerRole.

#### PractitionerRole.availabeTime and PractitionerRole.notAvailable
Given that both 'availableTime' and 'notAvailable' time are optional elements, they can be excluded for intricate or often changing schedules. These fundamental elements are designed for use where providers have fairly stable schedules (such as clinic schedules that need to be communicated clearly as part of the directory resources), as opposed to an on-call practitioner's schedule.

#### PractitionerRole, Location, Address
The address for a practitionerRole should be located on the Location reference.  There is no address on the practitionerRole base resource since the location reference of practitionerRole has an address that should be used by the practitioner as part of their role. Each practitionerRole can support multiple locations. If two practitioners work at the same facility and each of them has their own non-service delivery locations, in addition to the common service delivery location. The guidance descripted in the diagram below:

<figure>
    {% include PractitionerRolePractitioner2Address.svg %}
    <figcaption> </figcaption>
</figure>