### Background & Scope

A care team consists of the providers and/or organizations responsible for effectively delivering coordinated care. Care teams are conventionally associated with a specific patient. For example, a patient with diabetes may have a care team that consists of a physician, nurse, dietitian, certified diabetes educator, etc. Data about patients/caregivers, however, is out of scope for a National Directory of Healthcare Providers & Sevices (NDH). Therefore, this care team profile constrains out elements which reference or describe patient-level data. In general, NDH is more likely to represent administrative teams, or teams that are relevant beyond the direct clinical care of specific patients.

Individuals participating on a NDH CareTeam SHALL be represented through an associated role. Therefore, this profile removes references to the Practitioner resource in CareTeam.participant.member. For example, Dr. Smith (an individual) does not participate on a care team. Rather, Dr. Smith in his role as a provider at Acme Hospital participates on a care team.

A care team may be functionally “empty,” i.e. the roles on the care team are not filled by individuals. For example, a care team may be comprised of a primary care provider role, care coordinator role, and specialist role without indicating the individuals filling those roles (i.e., by referencing a PractitionerRole resource that does not reference a Practitioner resource). This enables entities to describe existing care teams while masking the identity of the individuals/organizations that are involved, or to represent standing care teams that are filled by individuals on an ad hoc basis in response to a condition/event.

### Modifies are made to the base CareTeam resource
- Constrains the cardinality of careTeam.meta.lastUpdated (1..1) careTeam.status (1..1), careTeam.category (1..*), careTeam.encounter (0..0), careTeam.subject (0..0), careTeam.participant.onBehalfOf (0..0), careTeam.managingOrganization (0..1), careTeam.reasonCode (0..0), careTeam.reasonReference (0..0)

- Modifies the data type of careTeam.note.author (removes references to Patient and RelatedPerson resources)

- Modifies the data type of CareTeam.participant.member (removes references to Patient, RelatedPerson, and Practitioner resources)

- Add extensions:
1. careteam-alias (0..*) - indicates alternate names by which the care team is known
2. location (0..*) - reference(s) to the location resource, indicating the location(s) at which the care team operates or delivers services
3. healthcareservice (0..*) - reference(s) to the healthcareService resource, indicating the services offered by the care team
4. endpoint (0..*) - reference(s) to the endpoint resource, indicating technical endpoints for the care team independent of its members, affiliated organizations, etc.
5. usage-restrication (0..*) - indicates whether disclosure of any data associated with a care team is restricted
6. identifier-status (1..1) - indicates the status of a care team’s identifier
7. contactpoint-availabletime (0..*) - indicates when a care team is available for contact
8. via-intermediary (0..*) - a reference to an alternative point of contact for this care team

### Mandatory Data Elements
The following data-elements are mandatory (i.e data MUST be present). 

1. One status code in careTeam.status
1. At least one type of care team in careTeam.category
