### Exchange Examples

#### PractitionerRole
PractionerRole describes the relationship between a practitioner and an organization. A practitioner provides services to the organization at a location. Practitioners also participate in healthcare provider insurance networks through their role at an organization.

##### ProactitionerRole relationship diagram for example
<figure>
    {% include PratitionerRoleSolo.svg %}
    <figcaption></figcaption>
</figure>
  
  
##### Examples associated with this PractiontionerRole
* ***[PractitionerRole/AnonRole]***
* ***[Practitioner/HansSolo]***
* ***[Organization/BurrClinic]***
* ***[Organization/AcmeofCTStdNet]***
* ***[Organization/Acme]***
* ***[Organization/Hospital]***
* ***[Location/HospLoc1]***
* ***[Location/HospLoc2]***
* ***[Location/HansSoloClinic]***
* ***[HealthcareService/BurrClinicServices]***

#### OrganizationAffiliation
Similar to PractitionerRole, OrganizationAffiliation describes relationships between organizations.

##### OrganizationAffiliation among clinic, hospital, network, and insurance plan

###### OrganizationAffiliation relationship diagram for example
<figure>
    {% include OrganizationAffiliation.svg %}
    <figcaption></figcaption>
</figure>

###### Examples associated with this OrganizationAffiliation
* ***[OrganizationAffiliation/BurrClinicAffil]***
* ***[Organization/BurrClinic]***
* ***[Organization/AcmeofCTStdNet]***
* ***[Organization/Acme]***
* ***[Organization/Hospital]***
* ***[Organization/AcmeofCTPremNet]***
* ***[Location/HospLoc1]***
* ***[Location/HospLoc2]***
* ***[Location/StateOfCTLocation]***
* ***[HealthcareService/BurrClinicServices]***
* ***[InsurancePlan/AcmeQHPGold]***
* ***[Endpoint/AcmeOfCTPortalEndpoint]***


##### OrganizationAffiliation among pharmacy chain

###### Pharmacy chain OrganizationAffiliation relationship diagram for example
<figure>
    {% include OrganizationAffiliationPharm.svg %}
    <figcaption></figcaption>
</figure>

###### Examples associated with this OrganiztionAffiliation
* ***[OrganizationAffiliation/PharmChainAffil1]***
* ***[Organization/PharmChain]***
* ***[Organization/AcmeofCTStdNet]***
* ***[Organization/BigBox]***
* ***[Organization/Acme]***
* ***[Location/PharmLoc1]***
* ***[Location/PharmLoc2]***
* ***[Location/PharmLoc3]***
* ***[Location/PharmLoc4]***
* ***[HealthcareService/PharmChainRetailService]***

{% include markdown-link-references.md %}