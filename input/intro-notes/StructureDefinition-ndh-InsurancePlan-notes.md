#### InsurancePlan type, network diagram

A payer’s products typically differ by network type and/or covered benefits. A insurance plan pairs a product’s covered benefits with the particular cost sharing structure offered to a consumer. A given payer’s product may comprise multiple insurance plans (i.e. each insurance plan offers different cost sharing requirements for the same set of covered benefits). 


<figure>
    {% include insuranceplan.svg %}
    <figcaption> </figcaption>
</figure>

#### An example for an insurance plan does not have a network (a fee for service environment)
A State InsurancePlan Entity may contract directly with a provider organization which provides the HealthcareService. A logical Network could be used to link an InsurancePlan and an Organization which provides the HealthcareService for the InsurancePlan via an OrganizationAffiliation. 

<figure>
    {% include insranceplanPayByService.svg %}
    <figcaption> </figcaption>
</figure>