### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|---------------------------|----------|-------------|
| [coverage-area](SearchParameter-insuranceplan-coverage-area.html) |	reference | `GET [base]/InsurancePlan?coverage-area.contains=41.809006\|-71.41177` |
| [coverage-benefit-type](SearchParameter-insuranceplan-coverage-benefit-type.html) |	token |`GET [base]/InsurancePlan?coverage-benefit-type=pcpov` |
| [coverage-type](SearchParameter-insuranceplan-coverage-type.html) | token |`GET [base]/InsurancePlan?coverage-type=medical` |
| [coverage-network](SearchParameter-insuranceplan-coverage-network.html) | reference |`GET [base]/InsurancePlan?coverage-network.type=ntwk&coverage-network.address-state=CT` |
| [network](SearchParameter-insuranceplan-network.html) | reference |`GET [base]/InsurancePlan?network.type=ntwk&network.address-state=CT` |
| [plan-network](SearchParameter-insuranceplan-plan-network.html) | reference |`GET [base]/InsurancePlan?plan-network.type=ntwk&plan-network.address-state=CT |
| [plan-type](SearchParameter-insuranceplan-plan-type.html)	| token |`GET [base]/InsurancePlan?plan-type=gold |
| [verification-status](SearchParameter-insuranceplan-verification-status.html) |	token |`GET [base]/InsurancePlan?verification-status=complete` |


#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
Since there is no direct individual url for each Search Parameter defined by FHIR Serach Parameter Registry, we have provided the following links for you to access more information about them.

- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)  
- [InsurancePlan Search Parameter from Registry](https://hl7.org/fhir/R4/insuranceplan.html#search)

<style>
    
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|--------------------------|----------|-------------|
| address | string |`GET [base]/InsurancePlan?address=456 Main Street` |
| address-city | string |`GET [base]/InsurancePlan?address-city=Norwalk` | 
| address-country | string |`GET [base]/InsurancePlan?address-country=USA` |
| address-postalcode | string |`GET [base]/InsurancePlan?address-postalcode=34997` |
| address-state | string |`GET [base]/InsurancePlan?address-state=FL` |
| administered-by | reference |`GET [base]/InsurancePlan?administered-by.name=HOPE INC` |
| endpoint | reference |`GET [base]/InsurancePlan?endpoint.connection-type=hl7-fhir-rest` |
| identifier | token |`GET [base]/InsurancePlan?identifier=12345` |
| name | string |`GET [base]/InsurancePlan?name=Florida Blue` |
| owned-by | reference |`GET [base]/InsurancePlan?owned-by.name=Florida Blue` |
| status | token |`GET [base]/InsurancePlan?status=active` |
| type | token |`GET [base]/InsurancePlan?type=commppo` |


#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| InsurancePlan:administered-by |`GET [base]/InsurancePlan?_include=InsurancePlan:administered-by` |
| InsurancePlan:endpoint |`GET [base]/InsurancePlan?_include=InsurancePlan:endpoint` |
| InsurancePlan:owned-by |`GET [base]/InsurancePlan?_include=InsurancePlan:owned-by` |
| InsurancePlan:coverage-area |`GET [base]/InsurancePlan?_include=InsurancePlan:coverage-area` |
| InsurancePlan:coverage-network | `GET [base]/InsurancePlan?_include=InsurancePlan:coverage-network`|
| InsurancePlan:plan-coverage-area |`GET [base]/InsurancePlan?_include=InsurancePlan:coverage-area` |
| InsurancePlan:plan-network | `GET [base]/InsurancePlan?_include=InsurancePlan:plan-network` |
| InsurancePlan:network | `GET [base]/InsurancePlan?_include=InsurancePlan:network` |


If you only want to search for networks associated with an InsurancePlan, you can use the following approach:
The primary resource in this context is the Organization, while the InsurancePlan resources serve as references to it. To accomplish this, the _revinclude feature is utilized. As the Network resource profile is derived from the Organization resource, the type=ntwk parameter must be included in your search.

`GET [base]/Organization?type=ntwk&_revinclude=InsurancePlan:network`

The relationship between InsurancePlans and Networks is many-to-many. A plan may be associated with multipe networks. The NDH model is having InsurancePlan reference networks.  

### InsurancePlan and Network relationship
The Insurance Plan resource defines three levels of networks: the base level network, the coverage level network, and the plan level network. The base level network is intended to apply to all coverage and plans when appropriate. For example, if dental services are included in the base level network and are covered at the coverage level, they would apply. Networks at the coverage level are specific to that coverage and are in addition to the base level network. Networks at the plan level are specific to the particular plan and incorporate any networks defined at both the base level and the coverage level. For instance, in a Platinum plan, the network may include more expensive venues that are not covered in lower-priced plans.

### InsurancePlan type, network diagram
A payer’s products typically differ by network type and/or covered benefits. A insurance plan pairs a product’s covered benefits with the particular cost sharing structure offered to a consumer. A given payer’s product may comprise multiple insurance plans (i.e. each insurance plan offers different cost sharing requirements for the same set of covered benefits). 

<figure>
    {% include insuranceplan.svg %}
    <figcaption> </figcaption>
</figure>