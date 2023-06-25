### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name ** | **Type** | **Example** |
|---------------------------|----------|-------------|
| [insuranceplan-coverage-area](SearchParameter-insuranceplan-coverage-area.html) |	reference | |
| [insuranceplan-coverage-benefit-type](SearchParameter-insuranceplan-coverage-benefit-type.html) |	token | |
| [insuranceplan-coverage-type](SearchParameter-insuranceplan-coverage-type.html) | token | |
| [insuranceplan-coverage-network](SearchParameter-insuranceplan-coverage-network.html) | reference | |
| [insuranceplan-network](SearchParameter-insuranceplan-network.html) | reference | |
| [insuranceplan-plan-network](SearchParameter-insuranceplan-plan-network.html) | reference | |
| [insuranceplan-plan-type](SearchParameter-insuranceplan-plan-type.html)	| token | |
| [insuranceplan-verification-status](SearchParameter-insuranceplan-verification-status.html) |	token | |


#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)  
- [InsurancePlan Search Parameter from Registry](https://hl7.org/fhir/R4/insuranceplan.html#search)

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
| administered-by | reference | |
| endpoint | reference | |
| identifier | token | |
| name | string | |
| owned-by | reference | |
| status | token | |
| type | token | |


#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| InsurancePlan:administered-by | |
| InsurancePlan:endpoint | |
| InsurancePlan:owned-by | |
| InsurancePlan:insuranceplan-coverage-area | |
| InsurancePlan:insuranceplan-coverage-network | `GET [base]/InsurancePlan?_include=InsurancePlan:insuranceplan-coverage-network`|
| InsurancePlan:insuranceplan-plan-coverage-area | |
| InsurancePlan:insuranceplan-plan-network | `GET [base]/InsurancePlan?_include=InsurancePlan:insuranceplan-plan-network` |
| InsurancePlan:insuranceplan-network | `GET [base]/InsurancePlan?_include=InsurancePlan:insuranceplan-network` |


If you only want to search for networks associated with an InsurancePlan, you can use the following approach:
The primary resource in this context is the Organization, while the InsurancePlan resources serve as references to it. To accomplish this, the _revinclude feature is utilized. As the Network resource profile is derived from the Organization resource, the type=ntwk parameter must be included in your search.

`GET [base]/Organization?type=ntwk&_revinclude=InsurancePlan:insuranceplan-network`

The relationship between InsurancePlans and Networks is many-to-many. A plan may be associated with multipe networks. The NDH model is having InsurancePlan reference networks.  

### InsurancePlan type, network diagram
A payer’s products typically differ by network type and/or covered benefits. A insurance plan pairs a product’s covered benefits with the particular cost sharing structure offered to a consumer. A given payer’s product may comprise multiple insurance plans (i.e. each insurance plan offers different cost sharing requirements for the same set of covered benefits). 

<figure>
    {% include insuranceplan.svg %}
    <figcaption> </figcaption>
</figure>