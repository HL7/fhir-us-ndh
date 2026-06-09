Instance: PlanNetToNdhVirtualModalitiesCM
InstanceOf: ConceptMap
Title: "Plan-Net to NDH Virtual Modalities ConceptMap"
Description: "Maps Plan-Net Virtual Modalities codes to NDH Virtual Modalities codes used from THO.

This ConceptMap should not be needed, but Plan-Net replicates the codeSystem that is in THO (TODO FHIR-?????). If Plan-Net aligns to THO directly, this ConceptMap should be retired."
Usage: #definition
* name = "PlanNetToNdhVirtualModalities"
* title = "Plan-Net to NDH Virtual Modalities ConceptMap"
* status = #active
* experimental = false
* description = "Maps Plan-Net Virtual Modalities codes to NDH Virtual Modalities codes used from THO.

This ConceptMap should not be needed, but Plan-Net replicates the codeSystem that is in THO. If Plan-Net aligns to THO directly, this ConceptMap should be retired."
* sourceUri = "http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/VirtualModalitiesVS"
* targetUri = "http://hl7.org/fhir/us/ndh/ValueSet/VirtualModalitiesVS"

* group[+].source = "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/VirtualModalitiesCS"
* group[=].target = "http://terminology.hl7.org/CodeSystem/virtual-healthcare-delivery-method"

* group[=].element[+].code = #web
* group[=].element[=].target[+].code = #web
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #app
* group[=].element[=].target[+].code = #app
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #tdd
* group[=].element[=].target[+].code = #tdd
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #phone
* group[=].element[=].target[+].code = #phone
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #sms
* group[=].element[=].target[+].code = #sms
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #video
* group[=].element[=].target[+].code = #video
* group[=].element[=].target[=].equivalence = #equal
