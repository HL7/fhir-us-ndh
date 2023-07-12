### Exchange Examples

#### Social Service


##### Social Service diagram for example
<figure>
    {% include UseCaseCBO.svg %}
    <figcaption></figcaption>
</figure>

- [HealthcareService/HealthcareService-Social-Hope-CBO]
- [HealthcareService/HealthcareService-Social-Towson-Food]
- [Location/Location-Social-Hope-CBO]
- [Location/Location-Social-Towson-Food]
- [Organization/Organization-Social-Hope-CBO]
- [Organization/Organization-Social-Towson-Food]
- [HealthcareServiceIncluedLocationNearBundle]

#### PractitionerRole
PractionerRole describes the relationship between a practitioner and an organization. A practitioner provides services to the organization at a location. Practitioners also participate in healthcare provider insurance networks through their role at an organization.

##### Examples associated with this PractiontionerRole
Dr. Hans Solo operates a private practice within the Hans Solo Clinic, offering primary healthcare services. He is an active participant in the Blue Cross Blue Shield Connecticut PPO network, which is covered by the Blue Cross Blue Shield Connecticut Insurance Plan. 

Patients can effortlessly locate Dr. Solo by searching his name, specialty, or location. The search results provide comprehensive information, including the location and type of service offered, the clinic's working hours, acceptance of new patients, types of insurance honored, and an electronic link to access patient medical records. 

Other healthcare organizations also have the ability to access Dr. Solo's practice endpoint, providing a secure route to patient medical records or to transmit referral details. 

Moreover, the Blue Cross Blue Shield PPO Network can utilize Dr. Solo's practice endpoint to retrieve patient medical data for claim processing and pre-authorization procedures.

<figure>
    {% include PratitionerRoleSolo.svg %}
    <figcaption></figcaption>
</figure>
  
- [PractitionerRole/HansSoloRole]
- [Practitioner/HansSolo]
- [Location/HansSoloClinic]
- [HealthcareService/HansSoloService]
- [Organization/BlueCrossBlueShield-CT-PPO]
- [Organization/BlueCrossBlueShield-CT-ORG]
- [InsurancePlan/BlueCrossBlueShield-CT]
- [Endpoint/HansSoloDirectTrustEndpointReferrals]
- [Endpoint/HansSoloPatientAccessEndpoint]

##### Practitioner and Networks.
Practitioners have the flexibility to engage in multiple insurance networks concurrently. They are also afforded the liberty to disengage from a network or integrate into a new one. The NDH has established infrastructure, utilizing PractitionerRole, to facilitate these transitions.

In the duration from June 1, 2023, to December 31, 2023, a practitioner, referred to as Network1andNetwork2 PractitionerOne, is actively involved in both the Network1 and Network2, under the administration of OMPN, an organization responsible for managing payer networks.

However, by the end of 2023, the practitioner plans to withdraw from the Network1. Meanwhile, the practitioner commenced their affiliation with the Network2 on June 1, 2023.


<figure>
    {% include UsecaseRel.svg %}
    <figcaption></figcaption>
</figure>  

- [Network1]
- [Network2]
- [OrgManageNetwork]
- [PractitionerOneWithNetwork1AndNetwork2]
- [PractitionerOneNetwork1Role]
- [PractitionerOneNetwork2Role]
- [MedicareAdvantageHMO]
- [MedicareAdvantage]


##### OrganizationAffliliation and Networks.
Organizations could participate in several insurance networks simultaneously. They possess the freedom to disconnect from an existing network or assimilate into a new one. The NDH has crafted an infrastructure, through OrganizationAffiliation, to streamline such transitions.

From June 1, 2023, through December 31, 2023, an organization named OrgOneWithNetwork1AndNetwork2 is actively engaged with both the Network1 and Network2 networks. This participation is supervised by OMPN, an entity tasked with overseeing payer networks.

Nevertheless, by the close of 2023, the organization anticipates severing its ties with the Network1 network. Concurrently, the organization initiated its association with the Network2 network starting on June 1, 2023.

<figure>
    {% include UsecaseRel2.svg %}
    <figcaption></figcaption>
</figure>  

- [Network1]
- [Network2]
- [OrgManageNetwork]
- [OrgOneNetwork1Affiliation]
- [OrgOneNetwork2Affiliation]
- [OrgOneWithNetwork1AndNetwork2]
- [MedicareAdvantageHMO]
- [MedicareAdvantage]

##### HealthcareService and Networks without InsurancePlan
Typically, healthcare service networks are tied to insurance plans. However, in the realm of social services, the delivery or subscription of services often occurs through a hub. This hub embodies a similar concept to a network, but without an insurance plan attached. To simplify the process of locating such hubs (networks), NDH offers a connection from the healthcare server to the network. For instance, the Welcome Home organization provides housing services at the Welcome Home location. This service is subscribed to through the Social Service Housing Network.

<figure>
    {% include UsecaseRel3.svg %}
    <figcaption></figcaption>
</figure>  

- [HealthcareServiceHomelessAssistance]
- [OrgHousingAssistanceHubManagement]
- [OrganizationWelcomeHome]
- [LocationWelcomeHome]
- [SocialServiceHousingNetwork]


#### Payer to Payer Endpoints
To establish trust connections with other payers, a payer can use the NDH to locate the organization of the payer in question.  Afterward, the payer can acquire the endpoint(s) for that specific payer organization. Each endpoint comes equipped with essential certificate information, which the payer can use to create a mutual TLS connection with another payer's endpoint.

<figure>
    {% include PayerToPayer.svg %}
    <figcaption></figcaption>
</figure>  

To find a payer organization and associate endpoints:
```
GET [base]/Organization?type=payer&name=Florida Blue&_include:Organization:endpoint
```



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