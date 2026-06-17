### Search Parameters

{% include StructureDefinition-ndh-InsurancePlan-search-params.xhtml %}

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
| InsurancePlan:plan-network | `GET [base]/InsurancePlan?_include=InsurancePlan:plan-network` |
| InsurancePlan:network | `GET [base]/InsurancePlan?_include=InsurancePlan:network` |


If you only want to search for networks associated with an InsurancePlan, you can use the following approach:
The primary resource in this context is the Organization, while the InsurancePlan resources serve as references to it. To accomplish this, the _revinclude feature is utilized. As the Network resource profile is derived from the Organization resource, the type=ntwk parameter must be included in your search.

`GET [base]/Organization?type=ntwk&_revinclude=InsurancePlan:network`

The relationship between InsurancePlans and Networks is many-to-many. A plan may be associated with multipe networks. The NDH model is having InsurancePlan reference networks.  

#### Special Search Parameters
The search parameters outlined above are straightforward for basic scenarios but have limitations in handling complex combination queries. To enhance these capabilities, employing the special search parameters [_filter](https://hl7.org/fhir/R5/search_filter.html#3.2.3) is recommended.


### InsurancePlan and Network relationship
The Insurance Plan resource defines three levels of networks: the base level network, the coverage level network, and the plan level network. The base level network is intended to apply to all coverage and plans when appropriate. For example, if dental services are included in the base level network and are covered at the coverage level, they would apply. Networks at the coverage level are specific to that coverage and are in addition to the base level network. Networks at the plan level are specific to the particular plan and incorporate any networks defined at both the base level and the coverage level. For instance, in a Platinum plan, the network may include more expensive venues that are not covered in lower-priced plans.

### InsurancePlan type, network diagram
A payer’s products typically differ by network type and/or covered benefits. A insurance plan pairs a product’s covered benefits with the particular cost sharing structure offered to a consumer. A given payer’s product may comprise multiple insurance plans (i.e. each insurance plan offers different cost sharing requirements for the same set of covered benefits). 

<figure>
    {% include insuranceplan.svg %}
    <figcaption> </figcaption>
</figure>
