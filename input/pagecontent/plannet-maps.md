
Da Vinci PDex [Plan-Net](http://hl7.org/fhir/us/davinci-pdex-plan-net/) is a FHIR Implementation Guide that defines a set of FHIR profiles and mappings to support the exchange of health insurance plan information between payers and providers. The PlanNet IG is designed to facilitate the sharing of insurance plan details, including coverage information, provider networks, and other relevant data.

### FHIR Mapping Language (StructureMap)

FHIR StructureMaps, encoded using [FHIR Mapping Language](https://www.hl7.org/fhir/fsh-sushi/guide/mapping-language.html) (FML), are very detailed and include mappings at the element level, including mappings for extensions, CodeSystems, and ValueSets. The FML mappings are designed to be used for automated translation of data between Plan-Net and NDH.

Plan-Net does not derive from NDH, but rather creates similar Profiles, extensions, CodeSystems, and ValueSets. These look similar (semantically), but are not technically the same (syntactically). This means that the concepts recorded in Plan-Net are not the same concepts as those in NDH, although for example a code string is the same. The data recorded in a Plan-Net extension is not understood by an NDH Actor as the NDH Actor would not know about the extension defined in Plan-Net. Thus the FML mappings include mappings at the element and concept level (ConceptMap).

- [Endpoint: Plan-Net to NDH](StructureMap-PlanNetToNdhEndpointSM.html)
- [HealthcareService: Plan-Net to NDH](StructureMap-PlanNetToNdhHealthcareServiceSM.html)
- [InsurancePlan: Plan-Net to NDH](StructureMap-PlanNetToNdhInsurancePlanSM.html)
- [Location: Plan-Net to NDH](StructureMap-PlanNetToNdhLocationSM.html)
- [Network: Plan-Net to NDH](StructureMap-PlanNetToNdhNetworkSM.html)
- [Organization: Plan-Net to NDH](StructureMap-PlanNetToNdhOrganizationSM.html)
- [OrganizationAffiliation: Plan-Net to NDH](StructureMap-PlanNetToNdhOrganizationAffiliationSM.html)
- [Practitioner: Plan-Net to NDH](StructureMap-PlanNetToNdhPractitionerSM.html)
- [PractitionerRole: Plan-Net to NDH](StructureMap-PlanNetToNdhPractitionerRoleSM.html)

### Profile mapping

Profile mappings do not have the fidelity to support translating CodeSystems, ValueSets, or extensions, so the Profile mappings are at the semantic level only. The same syntactic detail problem exists, but is not addressed by a Profile mapping.

- [Endpoint: NDH to Plan-Net](StructureDefinition-ndh-Endpoint-mappings.html)
- Group: NDH to Plan-Net -- none
- [HealthcareService: NDH to Plan-Net](StructureDefinition-ndh-HealthcareService-mappings.html)
- [InsurancePlan: NDH to Plan-Net](StructureDefinition-ndh-InsurancePlan-mappings.html)
- [Location: NDH to Plan-Net](StructureDefinition-ndh-Location-mappings.html)
- [Network: NDH to Plan-Net](StructureDefinition-ndh-Network-mappings.html)
- [Organization: NDH to Plan-Net](StructureDefinition-ndh-Organization-mappings.html)
- [OrganizationAffiliation: NDH to Plan-Net](StructureDefinition-ndh-OrganizationAffiliation-mappings.html)
- [Practitioner: NDH to Plan-Net](StructureDefinition-ndh-Practitioner-mappings.html)
- [PractitionerRole: NDH to Plan-Net](StructureDefinition-ndh-PractitionerRole-mappings.html)
- Verification: NDH to Plan-Net -- none
