The NDH is develped under the [FHIR at Scale Taskforce Project](https://confluence.hl7.org/display/FAST)

### Version 1.0.0
### STU1 ballot Technical Correction
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>
| Jira Tickets FHIR- | Appllied |
| [41815](https://jira.hl7.org/browse/FHIR-41815) | Fix Section 27.86.1.4.1 table formatting |
| [41878](https://jira.hl7.org/browse/FHIR-41878) | Rename it as Direct Secure Messaging |
| [41881](https://jira.hl7.org/browse/FHIR-41881) | Clean up "Distributed Query Implementation Guidance" image |
| [41882](https://jira.hl7.org/browse/FHIR-41882) | Fix typo in Section 26 |
| [41884](https://jira.hl7.org/browse/FHIR-41884) | Fix UDAP hyperlink |
| [41916](https://jira.hl7.org/browse/FHIR-41916) | Fix Providers&Services should be 2 words in section 1.1 |
| [41940](https://jira.hl7.org/browse/FHIR-41940) | Remove the cursor from the image |
| [41941](https://jira.hl7.org/browse/FHIR-41941) | Clean the border lines and remove the Figure 2 mark |
| [41942](https://jira.hl7.org/browse/FHIR-41942) | Fix typo |
| [41943](https://jira.hl7.org/browse/FHIR-41943) | Fix the inconsistency in the capitalization of the title/headers |
| [41944](https://jira.hl7.org/browse/FHIR-41944) | Fix Section 3.3 and 3.4 numbering |
| [41945](https://jira.hl7.org/browse/FHIR-41945) | Bold SHALL, SHOULD and MAY in section 5.1.1 |
| [41946](https://jira.hl7.org/browse/FHIR-41946) | Remove section 5.1.2 Figure 1 mark |
| [41947](https://jira.hl7.org/browse/FHIR-41947) | Renumber Section 7 |
| [41948](https://jira.hl7.org/browse/FHIR-41948) | Renumber Section 11|
| [41876](https://jira.hl7.org/browse/FHIR-41876) | Fix Section 27.350.1 Section typo |
| [42076](https://jira.hl7.org/browse/FHIR-42076) | Fix typo |
| [42654](https://jira.hl7.org/browse/FHIR-42654) | Fix typo in Section 7.2 |
| [42645](https://jira.hl7.org/browse/FHIR-42645) | Remove </code> in Section 5.4.8|
| [42610](https://jira.hl7.org/browse/FHIR-42610) | Add missing "," in search parameter in Section 3.3.1 |
| [42674](https://jira.hl7.org/browse/FHIR-42674) | Fix typo in Section 3.1.2 Query 5 |
| [42675](https://jira.hl7.org/browse/FHIR-42675) | Fix missing O in _typeFilter=rganization_typeFilter=rganization |
| [42682](https://jira.hl7.org/browse/FHIR-42682) | Fix typo |


### STU1 ballot change applied
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>
| Jira Tickets FHIR- | Appllied |
| [41767](https://jira.hl7.org/browse/FHIR-41767) | Change value of capabillityStatement.rest.resource.versioning from versioned-update to versioned for all resource behaviors in the capability statements |
| [41768](https://jira.hl7.org/browse/FHIR-41768) | or endpoint resource remove duplicate Location-endpoint in capability statement revinclude for all capability statements where it appears. |
| [41769](https://jira.hl7.org/browse/FHIR-41769) | Add Location endpoint search parameter into capability statement. |
| [41770](https://jira.hl7.org/browse/FHIR-41770) | Create CareTeam endpoint search parameter |
| [41771](https://jira.hl7.org/browse/FHIR-41771) | Include the Network profile as a supported profile under organization in the capability statements as a SHALL for Exchange and a SHOULD for Exchange Base and Exchange Expanded. |
| [41773](https://jira.hl7.org/browse/FHIR-41773) | Add a search parameter for Practitioner.endpoint; update the capability statements. |
| [41812](https://jira.hl7.org/browse/FHIR-41812) | Fix the inconsistent cardinality in Section 1.12.4 Practitioner Role relationship diagram, add the information why PractitionerRole.network cardinality is 0..1 See more information on [FHIR-40262](https://jira.hl7.org/browse/FHIR-40262) |
| [41841](https://jira.hl7.org/browse/FHIR-41841) | Remove multipleOr and multipleAnd from SearchParameter endpoint-access-control-mechanism, since the cardinality of the Endpoint.access-control-mechaniam is 0..1 |
| [41879](https://jira.hl7.org/browse/FHIR-41879) | Move the Guidance tab as the first one at the drop down for V&V Standard Tab |
| [41880](https://jira.hl7.org/browse/FHIR-41880) | Move the Guidance tab as the first one at the drop down for DQ Standard Tab |
| [41883](https://jira.hl7.org/browse/FHIR-41883) | Remove words "or Tiered-OAUTH" in section 1.13 NDH security |
| [41886](https://jira.hl7.org/browse/FHIR-41886) | Move the Guidance tab as the first one at the drop down for Exchange Standard Tab |
| [41887](https://jira.hl7.org/browse/FHIR-41887) | Move the Guidance tab as the first one at the drop down for Attestation Standard Tab |
| [41893](https://jira.hl7.org/browse/FHIR-41893) | Add NdhNetwork, NdhExNetwork, NdhPnQryNetwork profiles to associated Organization capability statement(s). Add a note for the network-coverage-area parameter, the organization.type = ntwk is needed. |
| [41905](https://jira.hl7.org/browse/FHIR-41905) | Remove include for organization.identifier.assigner from the capability statement(s) |
| [41906](https://jira.hl7.org/browse/FHIR-41906) | For each of the includes and revincludes, make the conformance (SHOULD,SHALL,MAY) the same in the search requirements as the capability statement. |
| [41913](https://jira.hl7.org/browse/FHIR-41913) | Remove organization reverse include for endpoint.identifier.assigner from the capability statement(s) |
| [41914](https://jira.hl7.org/browse/FHIR-41914) | Change NdhExHealthcareService network extension from NdhNetwork to NdhExNetwork |
| [41915](https://jira.hl7.org/browse/FHIR-41915) | Remove revers include Practitioner-identifier-assigner from the capability statement(s) |
| [42007](https://jira.hl7.org/browse/FHIR-42007) | Add a comment to NetworkCoverageAreaSearchParameter indicating that this search parameter is exclusively for the Network Profile resource.|
| [42020](https://jira.hl7.org/browse/FHIR-42020) | Add clarification regarding the resource ownership for the PractitionerRol |
| [42021](https://jira.hl7.org/browse/FHIR-42021) | Add clarification on Relationships Between Different Resources section 1.12.1 All Resource Relationships 1 |
| [42022](https://jira.hl7.org/browse/FHIR-42022) | Add clarification regarding the relationship between InsurancePlan and Networks. |
| [42024](https://jira.hl7.org/browse/FHIR-42024) | The NDH IG already indicates that a payer may establish a "provisional" practitionerRole in the documentation for section 10.3 |
| [42609](https://jira.hl7.org/browse/FHIR-42609) | Revise Section 1.2, titled "Background," to incorporate a narrative and a diagram that elucidate the relationship between the NDH IG and the Plan-Net IG. |
| [42611](https://jira.hl7.org/browse/FHIR-42611) | Add the Bulk Data Requirements for client and server in the Section 5.4.1 titled "National Directory API Bulk Data Conformance Requirements". |
| [42612](https://jira.hl7.org/browse/FHIR-42612) | Update Section 5.4.1, titled "National Directory API Bulk Data Conformance Requirements" to indicate that ndjson is the only format allowed for the _outputFormat parameter. |
| [42657](https://jira.hl7.org/browse/FHIR-42657) | Replace NDH EndpointCommonMimeType Code System with Code System urn:ietf:bcp:13 |
| [42672](https://jira.hl7.org/browse/FHIR-42672) | Add [FHIR Communication Security Link](http://hl7.org/fhir/R4/security.html#http) as clarification |
| [42673](https://jira.hl7.org/browse/FHIR-42673) | Create the Endpoint.environmentType extension element to pre-adopt R5 Endpoint.environmentType element |
| [42676](https://jira.hl7.org/browse/FHIR-42676) | Reword the last paragraph of Section 1.13 titled "NDH Security" |
| [42677](https://jira.hl7.org/browse/FHIR-42677) | Add a description outlining the intended capabilities of the National Directory API Base. |
| [42679](https://jira.hl7.org/browse/FHIR-42679) | Remove the restriction profile from the Attestation Capability Statement; change the Validation profile's conformance from MAY to SHALL in the Attestation Capability Statement. |
| [42681](https://jira.hl7.org/browse/FHIR-42681) | Rewrite the wording in the first item of Section 3.1.1 "Users and Actors" |
| [42683](https://jira.hl7.org/browse/FHIR-42683) | Add commercial payers to the list of data sources in Section 11.1.1.2 "Data sources for attestation" |
| [42685](https://jira.hl7.org/browse/FHIR-42685) | Remove modifier below from practitioner-qualification-issuer search parameter |
| [42689](https://jira.hl7.org/browse/FHIR-42684) | Add Clarify in section 11.1.2. "Attestation Data Restriction" |
| [42687](https://jira.hl7.org/browse/FHIR-42687) | Add multipleOr to SearchParameter healthcareservice-new-patient, and practitionerrole-new-patient  |
| [42688](https://jira.hl7.org/browse/FHIR-42688) | Add $export operation to exchange capability statements. |
| [42121](https://jira.hl7.org/browse/FHIR-42121) | Remove resource prefix from search parameter code; update the capabality statements, and examples accordingly |
| [42129](https://jira.hl7.org/browse/FHIR-42129) | Add Location.partof search parameter to the capability statements. |
| [42131](https://jira.hl7.org/browse/FHIR-42131) | For each of the includes and revincludes, make the conformance (SHOULD,SHALL,MAY) the same in the search requirements as the capability statement. |
| [42132](https://jira.hl7.org/browse/FHIR-42132) | Add special search parameter _filter for handling complex combination queries | 
| [42133](https://jira.hl7.org/browse/FHIR-42133) | Add multipleOr to SearchParameter location-new-patient |
| [42279](https://jira.hl7.org/browse/FHIR-42279) | Rename Exchange to National Directory API; Distributed Query to Local Directory API |
| [42339](https://jira.hl7.org/browse/FHIR-42339) | Replace the Introduction 1.1 with the text in the ticket. |
| [42646](https://jira.hl7.org/browse/FHIR-42646) | Add description to the structure definition regarding use of the extensions and a note to describe potential uses of the trust framework extension |
| [42647](https://jira.hl7.org/browse/FHIR-42647) | Add HTTP 4XX as an allowed return with an appropriate explanation as to its use
| [42648](https://jira.hl7.org/browse/FHIR-42648) | Add guidance that this extension should only be used when the standard for exchange requires the discovery of a public key. |
| [42658](https://jira.hl7.org/browse/FHIR-42658) | The structure of the Payer Provider Network Query Profiles is the same as the NDH base profiles. However, the "Must Support" conformances are derived from the corresponding DaVinci PDex Plan Net profiles. |
| [42661](https://jira.hl7.org/browse/FHIR-42661) | Make the National Directory API profile resource.meta as must support. |
| [42672](https://jira.hl7.org/browse/FHIR-42672) | Remove the referenced bullet point in Section 1.13 – NDH actors SHALL conform to FHIR Communications requirements, as other items in the security section already define appropriate communication requirements.
| [42676](https://jira.hl7.org/browse/FHIR-42676) | Change to: "NDH implementers in the US Federal systems SHOULD conform with the risk management and mitigation requirements defined in NIST 800 series documents associated with providing access to PII.  The coordination of relevant risk management and the related security and privacy controls - policies, administrative practices, and technical controls - SHOULD be defined in the Data Use Agreements." |
| [42681](https://jira.hl7.org/browse/FHIR-42681) | Update provider definition to: "Any individual or entity that provides services or goods directly, or in support of, healthcare and/or social care delivery"
| [42683](https://jira.hl7.org/browse/FHIR-42683) | Add commercial payers to the list of data source. "data from commercial payers (e.g., UnitedHealth Group, Kaiser Permanente ...)" |
| [42686](https://jira.hl7.org/browse/FHIR-42686) | Remove multipleOr and multipleAnd from SearchParameter practitionerrole-network, since the cardinality of the PractitionerRole.network is 0..1 |
| [42690](https://jira.hl7.org/browse/FHIR-42690) | remove Section 5.4.8 titled "Using List defined resource subsets to be exported" |
| [42837](https://jira.hl7.org/browse/FHIR-42837) | Add Location identifier, endpoint, name, near, and partof search parameter to the CababilityStatements |
| [42838](https://jira.hl7.org/browse/FHIR-42838) | Update this search parameter name to CareTeamNameSearchParameter. Replaced the local Careteam-alais extension with FHIR Extension Pack extension |
| [42839](https://jira.hl7.org/browse/FHIR-42839) | Update this search parameter name to CareTeamNameSearchParameter. Replaced the local Careteam-alais extension with FHIR Extension Pack extension |
| [42879](https://jira.hl7.org/browse/FHIR-42879) | Update the search parameter. |
| [42880](https://jira.hl7.org/browse/FHIR-42880) | Add special search parameter _filter for handling complex combination queries | 
| [42881](https://jira.hl7.org/browse/FHIR-42881) | Add special search parameter _filter for handling complex combination queries | 
| [42882](https://jira.hl7.org/browse/FHIR-42882) | Update associated search parameters. |
| [42883](https://jira.hl7.org/browse/FHIR-42883) | Remove "text" modifier from search parameters HealthcareServiceProgramRequirementVaStatusSearchParameter HealthcareServiceSocialServiceVaStatusSearchParameter |
| [42884](https://jira.hl7.org/browse/FHIR-42884) | Remove "text" modifier from search parameter HealthcareServiceSocialServiceBirthsexSearchParameter |
| [42925](https://jira.hl7.org/browse/FHIR-42925) | See 41771 |
| [42965](https://jira.hl7.org/browse/FHIR-42965) | See 41771 |
| [42926](https://jira.hl7.org/browse/FHIR-42926) | change the code of the Search parmeter Location-contains to contains from location-contains, to support the chaining. |
| [42927](https://jira.hl7.org/browse/FHIR-42927) | Remove multipleAnd modifier from all profile verification-status search parameter. |
| [43036](https://jira.hl7.org/browse/FHIR-43036) | Remove meta version from capability statement, Add Concent search parameters |
| [43037](https://jira.hl7.org/browse/FHIR-43037) | Add guidance that will point to 7.1 for details on conformance expectations depending on which Exchange standard a directory claims conformance |
| [43069](https://jira.hl7.org/browse/FHIR-43069) | See FHIR-42121 |
| [43071](https://jira.hl7.org/browse/FHIR-43071) | Remove modifier multipleAnd from VerificationResultStatusSearchParameter.|
| [43388](https://jira.hl7.org/browse/FHIR-43388) | Rebase the NDH to US Core 6.1.0 |



### STU1 ballot change applied for terminology issues
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>
| Jira Tickets FHIR- | Appllied |
| [42240](https://jira.hl7.org/browse/FHIR-42240) | Using codes from CodeSystem-v2-0066 |
| [42270](https://jira.hl7.org/browse/FHIR-42270) | Using THO verificationresult-communication-method code system |
| [42251](https://jira.hl7.org/browse/FHIR-42251) | Using THO verificationresult-communication-method value set |
| [42656](https://jira.hl7.org/browse/FHIR-42656) | Update age range, Children Age range 3-12 years, Teens Age range 13-19 years |

