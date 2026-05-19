Instance: PlanNetToNdhHealthcareServiceCategoryCM
InstanceOf: ConceptMap
Usage: #definition
//* url = "http://hl7.org/fhir/us/ndh/ConceptMap/plannet-to-ndh-healthcare-service-category"
* name = "PlanNetToNdhHealthcareServiceCategory"
* title = "Plan-Net to NDH Healthcare Service Category ConceptMap"
* status = #active
* experimental = false
* description = "Maps Plan-Net HealthcareService category codes to NDH healthcare service category codes."
* sourceUri = "http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/HealthcareServiceCategoryVS"
* targetUri = "http://hl7.org/fhir/us/ndh/ValueSet/HealthcareServiceCategoryVS"

* group[+].source = "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/HealthcareServiceCategoryCS"
* group[=].target = "http://terminology.hl7.org/CodeSystem/ndh-healthcare-service-category"

* group[=].element[+].code = #behav
* group[=].element[=].target[+].code = #behav
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #dent
* group[=].element[=].target[+].code = #dent
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #dme
* group[=].element[=].target[+].code = #dme
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #emerg
* group[=].element[=].target[+].code = #emerg
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #group
* group[=].element[=].target[+].code = #group
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #home
* group[=].element[=].target[+].code = #home
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #hosp
* group[=].element[=].target[+].code = #hosp
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #lab
* group[=].element[=].target[+].code = #lab
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #outpat
* group[=].element[=].target[+].code = #outpat
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #prov
* group[=].element[=].target[+].code = #prov
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #pharm
* group[=].element[=].target[+].code = #pharm
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #trans
* group[=].element[=].target[+].code = #trans
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #urg
* group[=].element[=].target[+].code = #urg
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #vis
* group[=].element[=].target[+].code = #vis
* group[=].element[=].target[=].equivalence = #equal


