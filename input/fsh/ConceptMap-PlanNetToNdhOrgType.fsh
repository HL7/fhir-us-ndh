Instance: PlanNetToNdhOrgTypeCM
InstanceOf: ConceptMap
Title: "Plan-Net to NDH Organization Type ConceptMap"
Description: "Maps Plan-Net organization type codes to NDH organization and network type codes."
Usage: #definition
* name = "PlanNetToNdhOrgType"
* title = "Plan-Net to NDH Organization Type ConceptMap"
* status = #active
* experimental = false
* description = "Maps Plan-Net organization type codes to NDH organization and network type codes."
* sourceUri = "http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/OrgTypeVS"
* targetUri = "http://hl7.org/fhir/us/ndh/ValueSet/OrgTypeVS"

* group[+].source = "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrgTypeCS"
* group[=].target = "http://hl7.org/fhir/us/ndh/CodeSystem/NdhOrgTypeCS"

* group[=].element[+].code = #fac
* group[=].element[=].target[+].code = #fac
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #prvgrp
* group[=].element[=].target[+].code = #prvgrp
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #atyprv
* group[=].element[=].target[+].code = #atyprv
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #bus

* group[=].element[+].code = #payer

