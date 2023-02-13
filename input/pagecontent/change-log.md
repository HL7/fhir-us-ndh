The following changes were made based on 1.0.0-ballot comments for US National Directory (FHIR) IGs (Query, Exchange, and Attestation)

### US National Directory (FHIR) IGs (Query, Exchange, and Attestation) 1.0.0-ballot JIRA Ticket Disposition

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

 JIRA       | Summary                                          | Resolution              |                                                                 
------------|--------------------------------------------------|---------------------------------------------------------------------------------- |
 FHIR-38101 | Practitioner Role Address                        | Add guidance: use the address in the location reference as practitioner's address |
 FHIR-38282 | Reference to FHIR STU 3 and FHIR R4              | Align all reference to FHIR 4 |
 FHIR-38335 | Clarity the type of relationships that OrganizationAffiliation suports. | **** |
 FHIR-38170 | Fix URL for Healthcare Provider Taxonomy Valueset | Update references for both practitionerRole and organizationAffiliation specialty to match references in the PlantNet IG |
 FHIR-38235 | Duplicate links to CapabilityStatement in Artifact Summary | Fixed in Combined IG |
 FHIR-38234 | Use Case Page incomplete for Attestation and Verification | **** will complete Attestation and verification in combined IG|
 FHIR-38092 | PractitionerRole.code element is confusing | **** will add clarification for PractitionerRole.code |
 FHIR-38093 | In PractitionerRole, what does "Service Site" mean? | **** |
 FHIR-38089 | How do non-licensed administrative/support staff attest? | **** will add clarification regarding attestation and verification to the IG |
 FHIR-38193 | Multiple networks for PractitionerRole | ****The guidance is a different practitionerRole instance for each participation in a different network to avoid the issues of managing differences. Example will be provided |
 FHIR-38095 | Active Dates for networks | ****Currently period is available for insurancePlan which references the network and for both practitionerrole and organizationaffiliation which determines the participation of the individual or organization in a network.  Network has an active element to determine if the network is currently active. Will add clarification to the IG regarding relationship between insuranceplan, network, practitionerrole and organizationaffiliation and use of period and activity flag. |
 FHIR-38417 | Conformance expectation should be less restrictive | ****Create two Capability Statements One for a national reference directory SHALL support profiles: organization, practitioner, location, practitionerRole, endpoint, validation, organizationAffiliation, restriction, healthcareService SHOULD support profiles: careTeam, network, insurancePlan One for a directory that wishes to implement the national directory concepts but will not have all of the information SHALL support profiles: organization, practitioner, location, practitionerRole, endpoint SHOULD support profiles: careTeam, validation, organizationAffiliation, restriction, healthcareServicenetwork, insurancePlan |
 FHIR-38375 | Comforance language in techinical guidance section does not align with capability statement | See FHIR-38327 |
 FHIR-38546 | PractitionerRole.code vs PractitionerRole.specialty | ****The National Directory has a need to expand the scope of both .code and .specialty value sets beyond that defined in either US core or Plan Net. We will change the binding of both value sets to extensible and expand the value sets based on feedback during the next ballot cycle. |
 FHIR-38271 | How will the National Directory address the issue of data accuracy? | ****The goal of attestation to only the national directory is to reduce the duplication of effort in maintaining data in multiple directories. This would allow providers to verify key elements and make the information available to distributed workflow directories. (Use Infomation from CMS RFI where approapriate) |
 FHIR-38167 | Empty CareTeam Profile | **** We are using careteam in the directory to describe careteam that are created for specific purposes independent of the connection to a patient or an encounter. (e.g., an oncology care team, post-surgical care team.) |
 FHIR-38279 | FHIR STU 3 is being referenced | **** Update link to the logical view to point to the R4.0.1 version |
 FHIR-38301 | Require TIN                                      | Add TIN slice to Base Profile for Organization.identifier, make it (0..1) and MS |
 FHIR-38303 | Location address vs Organization address         | ****Add guidance for use location address vs organization address |
 FHIR-38304 | Examples does not appear to reflect Tiered OAuth | ****Include brief description and reference to Tiered Auth |                       
 FHIR-38619 | Expand on the Terminology Section                | ****Update Terminology section with more robust description for this IG |
 FHIR-38620 | Correct endpoint capability statement reference  | Correct endpoint capability statement reference |
 FHIR-38608 | Add system flow diagrams to exchange methods     | ****Add system flow diagrams to exchange methods |
 FHIR-38611 | Expand description of Subscription exchange methods | ****Expand description of Subscription exchange methods |
 FHIR-38610 | Incorrect Numbering and chapter titles | Encsure the IG has clear section titles and numbering |
 FHIR-38373 | The technical guidance page includes section that do not appear to pertain to this IG | This IG combing the three IGs into one, which reflects the overall approach to the National Directory and each section adds additional description information as well as specific use cases and examples. |
  
