The NDH is develped uncer the [FHIR at Scale Taskforce Project](https://confluence.hl7.org/display/FAST)

### Version 1.0.0
### STU1 ballot Changes
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>
| Jira Tickets | Appllied |
| [FHIR-42657](https://jira.hl7.org/browse/FHIR-42657) | Replace NDH EndpointCommonMimeType Code System with Code System urn:ietf:bcp:13 |
| | |
| [FHIR-42687](https://jira.hl7.org/browse/FHIR-42687) | Add multipleOr to SearchParameter healthcareservice-new-patient, and practitionerrole-new-patient  |
| [FHIR-42133](https://jira.hl7.org/browse/FHIR-42133) | Add multipleOr to SearchParameter location-new-patient |
| [FHIR-42686](https://jira.hl7.org/browse/FHIR-42686) | Remove multipleOr and multipleAnd from SearchParameter practitionerrole-network, since the cardinality of the PractitionerRole.network is 0..1 |
| [FHIR-41841](https://jira.hl7.org/browse/FHIR-41841) | Remove multipleOr and multipleAnd from SearchParameter endpoint-access-control-mechanism, since the cardinality of the Endpoint.access-control-mechaniam is 0..1 |


