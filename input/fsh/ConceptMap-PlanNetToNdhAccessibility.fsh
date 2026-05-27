Instance: PlanNetToNdhAccessibilityCM
InstanceOf: ConceptMap
Title: "Plan-Net to NDH Accessibility ConceptMap"
Description: "Maps Plan-Net Accessibility codes to NDH Accessibility codes used from THO.

This ConceptMap should not be needed, but Plan-Net replicates the codeSystem that is in THO. If Plan-Net aligns to THO directly, this ConceptMap should be retired."
Usage: #definition
* name = "PlanNetToNdhAccessibility"
* title = "Plan-Net to NDH Accessibility ConceptMap"
* status = #active
* experimental = false
* description = "Maps Plan-Net Accessibility codes to NDH Accessibility codes used from THO.

This ConceptMap should not be needed, but Plan-Net replicates the codeSystem that is in THO. If Plan-Net aligns to THO directly, this ConceptMap should be retired."
* sourceUri = "http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/AccessibilityVS"
* targetUri = "http://terminology.hl7.org/ValueSet/care-service-accessibility"

* group[+].source = "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/AccessibilityCS"
* group[=].target = "http://terminology.hl7.org/CodeSystem/care-service-accessibility"

* group[=].element[+].code = #cultcomp
* group[=].element[=].target[+].code = #cultcomp
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #handiaccess
* group[=].element[=].target[+].code = #handiaccess
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #adacomp
* group[=].element[=].target[+].code = #adacomp
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #pubtrans
* group[=].element[=].target[+].code = #pubtrans
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #anssrvc
* group[=].element[=].target[+].code = #anssrvc
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #cognitive
* group[=].element[=].target[+].code = #cognitive
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #mobility
* group[=].element[=].target[+].code = #mobility
* group[=].element[=].target[=].equivalence = #equal
