Instance: PlanNetToNdhAcceptingPatientsCM
InstanceOf: ConceptMap
Title: "Plan-Net to NDH Accepting Patients ConceptMap"
Description: "Maps Plan-Net Accepting Patients codes to NDH Accepting Patients codes used from THO.

This ConceptMap should not be needed, but Plan-Net replicates the codeSystem that is in THO. If Plan-Net aligns to THO directly, this ConceptMap should be retired."
Usage: #definition
* name = "PlanNetToNdhAcceptingPatients"
* title = "Plan-Net to NDH Accepting Patients ConceptMap"
* status = #active
* experimental = false
* description = "Maps Plan-Net Accepting Patients codes to NDH Accepting Patients codes used from THO.

This ConceptMap should not be needed, but Plan-Net replicates the codeSystem that is in THO [FHIR-57456](https://jira.hl7.org/browse/FHIR-57456). If Plan-Net aligns to THO directly, this ConceptMap should be retired."
* sourceUri = "http://hl7.org/fhir/us/davinci-pdex-plan-net/ValueSet/AcceptingPatientsVS"
* targetUri = "http://terminology.hl7.org/ValueSet/accepting-patients"

* group[+].source = "http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/AcceptingPatientsCS"
* group[=].target = "http://terminology.hl7.org/CodeSystem/accepting-patients"

* group[=].element[+].code = #nopt
* group[=].element[=].target[+].code = #nopt
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #newpt
* group[=].element[=].target[+].code = #newpt
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #existptonly
* group[=].element[=].target[+].code = #existptonly
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #existptfam
* group[=].element[=].target[+].code = #existptfam
* group[=].element[=].target[=].equivalence = #equal
