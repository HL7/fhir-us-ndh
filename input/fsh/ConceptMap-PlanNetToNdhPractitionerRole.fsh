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

* group[+].source = "http://terminology.hl7.org/CodeSystem/practitioner-role"
* group[=].target = "http://hl7.org/fhir/us/ndh/CodeSystem/NdhPractitionerRoleCS"

* group[=].element[+].code = #doctor
* group[=].element[=].target[+].code = #doctor
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #nurse
* group[=].element[=].target[+].code = #nurse
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #pharmacist
* group[=].element[=].target[+].code = #pharmacist
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #researcher
* group[=].element[=].target[+].code = #researcher
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #teacher
* group[=].element[=].target[+].code = #teacher
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #ict
* group[=].element[=].target[+].code = #ict
* group[=].element[=].target[=].equivalence = #equal