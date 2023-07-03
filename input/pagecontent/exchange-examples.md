### Exchange Examples

#### Social Service


##### Social Service diagram for example
<figure>
    {% include UseCaseCBO.svg %}
    <figcaption></figcaption>
</figure>

* ***[HealthcareService/HealthcareService-Social-Hope-CBO]***
* ***[HealthcareService/HealthcareService-Social-Towson-Food]***
* ***[Location/Location-Social-Hope-CBO]***
* ***[Location/Location-Social-Towson-Food]***
* ***[Organization/Organization-Social-Hope-CBO]***
* ***[Organization/Organization-Social-Towson-Food]***

#### PractitionerRole
PractionerRole describes the relationship between a practitioner and an organization. A practitioner provides services to the organization at a location. Practitioners also participate in healthcare provider insurance networks through their role at an organization.

##### Examples associated with this PractiontionerRole
Dr. Hans Solo operates a private practice within the Hans Solo Clinic, offering primary healthcare services. He is an active participant in the Blue Cross Blue Shield Connecticut PPO network, which is covered by the Blue Cross Blue Shield Connecticut Insurance Plan. 

Patients can effortlessly locate Dr. Solo by searching his name, specialty, or location. The search results provide comprehensive information, including the location and type of service offered, the clinic's working hours, acceptance of new patients, types of insurance honored, and an electronic link to access patient medical records. 

Other healthcare organizations also have the ability to access Dr. Solo's practice endpoint, providing a secure route to patient medical records or to transmit referral details. 

Moreover, the Blue Cross Blue Shield PPO Network can utilize Dr. Solo's practice endpoint to retrieve patient medical data for claim processing and pre-authorization procedures.

<figure>
    {% include PratitionerRoleSolo.svg %}
    <figcaption>PractitionerRole for a Solo Practitioner</figcaption>
</figure>
  
* ***[PractitionerRole/HansSoloRole]***
* ***[Practitioner/HansSolo]***
* ***[Location/HansSoloClinic]***
* ***[HealthcareService/HansSoloService]***
* ***[Organization/BlueCrossBlueShield-CT-PPO]***
* ***[Organization/BlueCrossBlueShield-CT-ORG]***
* ***[InsurancePlan/BlueCrossBlueShield-CT]***
* ***[Endpoint/HansSoloDirectTrustEndpointReferrals]***
* ***[Endpoint/HansSoloPatientAccessEndpoint]***

##### Practitioner and Networks.
Practitioners have the flexibility to engage in multiple insurance networks concurrently. They are also afforded the liberty to disengage from a network or integrate into a new one. The NDH has established infrastructure, utilizing PractitionerRole, to facilitate these transitions.

In the duration from June 1, 2023, to December 31, 2023, a practitioner, referred to as NetworkPPOandHMO PractitionerOne, is actively involved in both the PPO and HMO networks, under the administration of OMPN, an organization responsible for managing payer networks.

However, by the end of 2023, the practitioner plans to withdraw from the PPO network. Meanwhile, the practitioner commenced their affiliation with the HMO network on June 1, 2023.


<figure>
    {% include UsecaseRel.svg %}
    <figcaption>Relationship between Practitioner and Network </figcaption>
</figure>  

- [NetworkPPO](Organization-NetworkPPO.html)
- [NetworkHMO](Organization-NetworkHMO.html)
- [OrgManageNetwork](Organization-OrgManageNetwork.html)
- [PractitionerOneWithNetworkPPOAndHMO](Practitioner-PractitionerOneWithNetworkPPOAndHMO.html)
- [PractitionerTwoWithNetworkPPOForFirstSixMonths](Practitioner-PractitionerTwoWithNetworkPPOLeftAfterSixMonths.html)
- [PractitionerOneNetworkPPORole](PractitionerRole-PractitionerOneNetworkPPORole.html)
- [PractitionerOneNetworkHMORole](PractitionerRole-PractitionerOneNetworkHMORole.html)
- [PractitionerTwoNetworkPPOLeftAfterSixMonthRole.](PractitionerRole-PractitionerTwoNetworkPPOLeftAfterSixMonthRole.html)

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