Instance: PlanNetToNdhInsuranceProductTypeCM
InstanceOf: ConceptMap
Title: "Plan-Net to NDH Insurance Product Type ConceptMap"
Description: "Maps Plan-Net Insurance Product Type codes to NDH Insurance Product Type codes used from THO.

This ConceptMap should not be needed, but Plan-Net replicates the codeSystem that is in THO. [FHIR-57453](https://jira.hl7.org/browse/FHIR-57453) requests Plan-Net change. If that is done, then this ConceptMap should be retired."
Usage: #definition
//* url = "http://hl7.org/fhir/us/ndh/ConceptMap/plannet-to-ndh-insurance-product-type"
* name = "PlanNetToNdhInsuranceProductType"
* title = "Plan-Net to NDH Insurance Product Type ConceptMap"
* status = #active
* experimental = false
* description = "Maps Plan-Net Insurance Product Type codes to NDH Insurance Product Type codes used from THO.

This ConceptMap should not be needed, but Plan-Net replicates the codeSystem that is in THO. [FHIR-57453](https://jira.hl7.org/browse/FHIR-57453) requests Plan-Net change. If that is done, then this ConceptMap should be retired."
* sourceUri = "http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/InsuranceProductTypeVS"
* targetUri = "http://terminology.hl7.org/ValueSet/insurance-product-type"

* group[+].source = "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/InsuranceProductTypeCS"
* group[=].target = "http://terminology.hl7.org/CodeSystem/insurance-product-type"

* group[=].element[+].code = #commppo
* group[=].element[=].target[+].code = #commppo
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #commhdhp
* group[=].element[=].target[+].code = #commhdhp
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #commpos
* group[=].element[=].target[+].code = #commpos
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #commhmo
* group[=].element[=].target[+].code = #commhmo
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #commepo
* group[=].element[=].target[+].code = #commepo
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #medi
* group[=].element[=].target[+].code = #medi
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #medihmo
* group[=].element[=].target[+].code = #medihmo
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #mediadv
* group[=].element[=].target[+].code = #mediadv
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #mediadvhmo
* group[=].element[=].target[+].code = #mediadvhmo
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #media
* group[=].element[=].target[+].code = #media
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #medib
* group[=].element[=].target[+].code = #medib
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #medid
* group[=].element[=].target[+].code = #medid
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #mediab
* group[=].element[=].target[+].code = #mediab
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #qhp
* group[=].element[=].target[+].code = #qhp
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #ihs
* group[=].element[=].target[+].code = #ihs
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #fep
* group[=].element[=].target[+].code = #fep
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #tri
* group[=].element[=].target[+].code = #tri
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #va
* group[=].element[=].target[+].code = #va
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #dent
* group[=].element[=].target[+].code = #dent
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #denthmo
* group[=].element[=].target[+].code = #denthmo
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #vis
* group[=].element[=].target[+].code = #vis
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #vishmo
* group[=].element[=].target[+].code = #vishmo
* group[=].element[=].target[=].equivalence = #equal
