### Background & Scope

A care team consists of the providers and/or organizations responsible for effectively delivering coordinated care. Care teams are conventionally associated with a specific patient. For example, a patient with diabetes may have a care team that consists of a physician, nurse, dietitian, certified diabetes educator, etc. Data about patients/caregivers, however, is out of scope for the National Directory of Healthcare Providers & Services (NDH). Therefore, this care team profile constrains out elements which reference or describe patient-level data. In general, the NDH is more likely to represent administrative teams, or teams that are relevant beyond the direct clinical care of specific patients.

Individuals participating on the NDH CareTeam SHALL be represented through an associated role. Therefore, this profile removes references to the Practitioner resource in CareTeam.participant.member. For example, Dr. Smith (an individual) does not participate on a care team. Rather, Dr. Smith in his role as a provider at Acme Hospital participates on a care team.

A care team may be functionally “empty,” i.e., the roles on the care team are not filled by individuals. For example, a care team may be comprised of a primary care provider role, care coordinator role, and specialist role without indicating the individuals filling those roles (i.e., by referencing a PractitionerRole resource that does not reference a Practitioner resource). This enables entities to describe existing care teams while masking the identity of the individuals/organizations that are involved, or to represent standing care teams that are filled by individuals on an ad hoc basis in response to a condition/event.

For all reasons above, this IG is using NDH CareTeam profile, instead of US Core CareTeam profile. See [variance Request ticket](https://jira.hl7.org/browse/FHIR-37832)

