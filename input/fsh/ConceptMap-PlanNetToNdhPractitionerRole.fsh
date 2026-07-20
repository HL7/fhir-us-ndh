Instance: PlanNetToNdhPractitionerRoleCM
InstanceOf: ConceptMap
Title: "Plan-Net to NDH PractitionerRole ConceptMap"
Description: "Maps Plan-Net PractitionerRole codes to NDH PractitionerRole codes."
Usage: #definition
* name = "PlanNetToNdhPractitionerRole"
* title = "Plan-Net to NDH PractitionerRole ConceptMap"
* status = #active
* experimental = false
* description = "Maps Plan-Net PractitionerRole codes to NDH PractitionerRole codes."
* sourceUri = "http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/PractitionerRoleVS"
* targetUri = "http://hl7.org/fhir/us/ndh/ValueSet/PractitionerRoleVS"

* group[+].source = "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/ProviderRoleCS"
* group[=].target = "http://hl7.org/fhir/us/ndh/CodeSystem/NdhPractitionerRoleCS"

* group[=].element[+].code = #ap
* group[=].element[=].target[+].code = #ap
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #at
* group[=].element[=].target[+].code = #att
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #co
* group[=].element[=].target[+].code = #co
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #ph
* group[=].element[=].target[+].code = #ph
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #rx
* group[=].element[=].target[+].code = #rx
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #bt
* group[=].element[=].target[+].code = #bt
* group[=].element[=].target[=].equivalence = #equal
