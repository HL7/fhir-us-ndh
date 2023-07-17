### Attestation Profiles

Transmit attested information about an individual, organization, or group from an authorized individual using the Portal or Application. The RESTful FHIR API intended for sending data to the NDH **SHOULD** utilize at least the NDH base profiles, considering that the attested data could pertain to a range of information and originate from diverse entities.

* [Base CareTeam]
* [Base Endpoint]
* [Base HealthcareService]
* [Base InsurancePlan]
* [Base Location]
* [Base Network]
* [Base Organization]
* [Base OrganizationAffiliation]
* [Base Practitioner]
* [Base PractitionerRole]


To accept the data and aid in verification and facilitating the NDH exchange, the NDH exchange profiles **SHALL** be used. It should have the NDH server side capability to support POST, PUT, and GET HTTP methods.   

**[NDH Exchange Profiles](exchange-artifacts.html#ndh-exchange-profiles)**


{% include markdown-link-references.md %}