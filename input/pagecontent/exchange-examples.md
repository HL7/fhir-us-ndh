### Exchange Examples

#### Social Service


##### Social Service diagram for example
<figure>
    {% include UseCaseCBO.svg %}
    <figcaption></figcaption>
</figure>

#### Example Resource Instances for the obove example
* ***[HealthcareService/HealthcareService-Social-Hope-CBO]***
* ***[HealthcareService/HealthcareService-Social-Towson-Food]***
* ***[Location/Location-Social-Hope-CBO]***
* ***[Location/Location-Social-Towson-Food]***
* ***[Organization/Organization-Social-Hope-CBO]***
* ***[Organization/Organization-Social-Towson-Food]***

#### PractitionerRole
PractionerRole describes the relationship between a practitioner and an organization. A practitioner provides services to the organization at a location. Practitioners also participate in healthcare provider insurance networks through their role at an organization.

Dr. Hans Solo operates a private practice within the Hans Solo Clinic, offering primary healthcare services. He is an active participant in the Blue Cross Blue Shield Connecticut PPO network, which is covered by the Blue Cross Blue Shield Connecticut Insurance Plan. 

Patients can effortlessly locate Dr. Solo by searching his name, specialty, or location. The search results provide comprehensive information, including the location and type of service offered, the clinic's working hours, acceptance of new patients, types of insurance honored, and an electronic link to access patient medical records. 

Other healthcare organizations also have the ability to access Dr. Solo's practice endpoint, providing a secure route to patient medical records or to transmit referral details. 

Moreover, the Blue Cross Blue Shield PPO Network can utilize Dr. Solo's practice endpoint to retrieve patient medical data for claim processing and pre-authorization procedures.

##### ProactitionerRole relationship diagram for example
<figure>
    {% include PratitionerRoleSolo.svg %}
    <figcaption></figcaption>
</figure>
  
  
##### Examples associated with this PractiontionerRole
* ***[PractitionerRole/HansSoloRole]***
* ***[Practitioner/HansSolo]***
* ***[Location/HansSoloClinic]***
* ***[HealthcareService/HansSoloService]***
* ***[Organization/BlueCrossBlueShield-CT-PPO]***
* ***[Organization/BlueCrossBlueShield-CT-ORG]***
* ***[InsurancePlan/BlueCrossBlueShield-CT]***
* ***[Endpoint/HansSoloDirectTrustEndpointReferrals]***
* ***[Endpoint/HansSoloPatientAccessEndpoint]***

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