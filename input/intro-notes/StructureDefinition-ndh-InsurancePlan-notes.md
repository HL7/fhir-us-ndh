#### An example for an insurance plan does not have a network (a fee for service environment)
A State InsurancePlan Entity may contract directly with a provider organization which provides the HealthcareService. A logical Network could be used to link an InsurancePlan and an Organization which provides the HealthcareService for the InsurancePlan via an OrganizationAffiliation. 

<figure>
    {% include insranceplanPayByService.svg %}
    <figcaption> </figcaption>
</figure>

#### Search Parameter
##### Search InsurancePlans and their associated networks
The relationship between InsurancePlans and Networks is many-to-many. A plan may be associated with multipe networks. The NDH model is having InsurancePlan reference networks. 

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>
SearchParameter | FHIR Path | Example
insuranceplan-network | InsurancePlan.network | `GET [base]/InsurancePlan?_include=InsurancePlan:insuranceplan-network`
insuranceplan-coverage-network | InsurancePlan.coverage.network | `GET [base]/InsurancePlan?_include=InsurancePlan:insuranceplan-coverage-network`
insuranceplan-plan-network | InsurancePlan.plan.network | `GET [base]/InsurancePlan?_include=InsurancePlan:insuranceplan-plan-network`

If you just want to search the networks associate with insurancePlan you can do:

`GET [base]/Organization?type=ntwk&_revinclude=InsurancePlan:insuranceplan-network`

Here Organization is the primary resource, InsurancePlan resources are reference to the primary resource. Since the Network reource profile is based on the Organization resource, you need to have `type=ntwk` in your search. 

#### InsurancePlan type, network diagram
A payer’s products typically differ by network type and/or covered benefits. A insurance plan pairs a product’s covered benefits with the particular cost sharing structure offered to a consumer. A given payer’s product may comprise multiple insurance plans (i.e. each insurance plan offers different cost sharing requirements for the same set of covered benefits). 

<figure>
    {% include insuranceplan.svg %}
    <figcaption> </figcaption>
</figure>