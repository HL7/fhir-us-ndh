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

* group[=].element[+].code = #behavioral
* group[=].element[=].target[+].code = #behavioral
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #dme
* group[=].element[=].target[+].code = #dme
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #group
* group[=].element[=].target[+].code = #group
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #home
* group[=].element[=].target[+].code = #home
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #hospital
* group[=].element[=].target[+].code = #hospital
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #laboratory
* group[=].element[=].target[+].code = #laboratory
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #transport
* group[=].element[=].target[+].code = #transport
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #urgent
* group[=].element[=].target[+].code = #urgent
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #hospice
* group[=].element[=].target[+].code = #hospice
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #nurseCustodial
* group[=].element[=].target[+].code = #nurseCustodial
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #residential
* group[=].element[=].target[+].code = #residential
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #respite
* group[=].element[=].target[+].code = #respite
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #retail
* group[=].element[=].target[+].code = #retail
* group[=].element[=].target[=].equivalence = #equal

* group[+].source = "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrganizationAffiliationRoleCS"
* group[=].target = "http://terminology.hl7.org/CodeSystem/organization-affiliation-role"
* group[=].element[+].code = #other
* group[=].element[=].target[+].equivalence = #unmatched

