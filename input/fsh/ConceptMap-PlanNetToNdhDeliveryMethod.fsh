Instance: PlanNetToNdhDeliveryMethodCM
InstanceOf: ConceptMap
Title: "Plan-Net to NDH Delivery Method ConceptMap"
Description: "Maps Plan-Net Delivery Method codes to NDH Delivery Method codes used from THO.

This ConceptMap should not be needed, but Plan-Net replicates the codeSystem that is in THO (TODO FHIR-?????). If Plan-Net aligns to THO directly, this ConceptMap should be retired."
Usage: #definition
* name = "PlanNetToNdhDeliveryMethod"
* title = "Plan-Net to NDH Delivery Method ConceptMap"
* status = #active
* experimental = false
* description = "Maps Plan-Net Delivery Method codes to NDH Delivery Method codes used from THO.

This ConceptMap should not be needed, but Plan-Net replicates the codeSystem that is in THO. If Plan-Net aligns to THO directly, this ConceptMap should be retired."
* sourceUri = "http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/DeliveryMethodVS"
* targetUri = "http://terminology.hl7.org/ValueSet/service-delivery-method"

* group[+].source = "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/DeliveryMethodCS"
* group[=].target = "http://terminology.hl7.org/CodeSystem/service-delivery-method"

* group[=].element[+].code = #physical
* group[=].element[=].target[+].code = #physical
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #virtual
* group[=].element[=].target[+].code = #virtual
* group[=].element[=].target[=].equivalence = #equal
