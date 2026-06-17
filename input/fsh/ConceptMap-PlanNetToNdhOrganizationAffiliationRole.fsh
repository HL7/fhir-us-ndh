Instance: PlanNetToNdhOrganizationAffiliationRoleCM
InstanceOf: ConceptMap
Title: "Plan-Net to NDH OrganizationAffiliationRole ConceptMap"
Description: "Maps Plan-Net OrganizationAffiliation role codes to NDH OrganizationAffiliation role codes."
Usage: #definition
* name = "PlanNetToNdhOrganizationAffiliationRole"
* title = "Plan-Net to NDH OrganizationAffiliationRole ConceptMap"
* status = #active
* experimental = false
* description = "Maps Plan-Net OrganizationAffiliation role codes to NDH OrganizationAffiliation role codes.

This ConceptMap should not be needed, but Plan-Net replicates the codeSystem that is in THO. [FHIR-57633](https://jira.hl7.org/browse/FHIR-57633) requests Plan-Net change. If that is done, then this ConceptMap should be retired."
* sourceUri = "http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/OrganizationAffiliationRoleVS"
* targetUri = "http://hl7.org/fhir/us/ndh/ValueSet/OrganizationAffiliationRoleVS"

* group[+].source = "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrganizationAffiliationRoleCS"
* group[=].target = "http://terminology.hl7.org/CodeSystem/organization-affiliation-role"

* group[=].element[+].code = #outpatient
* group[=].element[=].target[+].code = #outpatient
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #pharmacy
* group[=].element[=].target[+].code = #pharmacy
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #bt
* group[=].element[=].target[+].code = #bt
* group[=].element[=].target[=].equivalence = #equivalent
