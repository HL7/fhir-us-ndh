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
* group[=].element[=].target[+].code = #at
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

* group[=].element[+].code = #apn
* group[=].element[=].target[+].code = #apn
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #au
* group[=].element[=].target[+].code = #au
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #bh
* group[=].element[=].target[+].code = #bh
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #ba
* group[=].element[=].target[+].code = #ba
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #cnw
* group[=].element[=].target[+].code = #cnw
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #crnp
* group[=].element[=].target[+].code = #crnp
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #ch
* group[=].element[=].target[+].code = #ch
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #cs
* group[=].element[=].target[+].code = #cs
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #dp
* group[=].element[=].target[+].code = #dp
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #de
* group[=].element[=].target[+].code = #de
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #drr
* group[=].element[=].target[+].code = #drr
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #dn
* group[=].element[=].target[+].code = #dn
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #om
* group[=].element[=].target[+].code = #om
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #em
* group[=].element[=].target[+].code = #em
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #ho
* group[=].element[=].target[+].code = #ho
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #lpn
* group[=].element[=].target[+].code = #lpn
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #mt
* group[=].element[=].target[+].code = #mt
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #ma
* group[=].element[=].target[+].code = #ma
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #nh
* group[=].element[=].target[+].code = #nh
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #na
* group[=].element[=].target[+].code = #na
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #nu
* group[=].element[=].target[+].code = #nu
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #ot
* group[=].element[=].target[+].code = #ot
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #op
* group[=].element[=].target[+].code = #op
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #oo
* group[=].element[=].target[+].code = #oo
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #os
* group[=].element[=].target[+].code = #os
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #pt
* group[=].element[=].target[+].code = #pt
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #pa
* group[=].element[=].target[+].code = #pa
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #po
* group[=].element[=].target[+].code = #po
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #py
* group[=].element[=].target[+].code = #py
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #rn
* group[=].element[=].target[+].code = #rn
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #rt
* group[=].element[=].target[+].code = #rt
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #sw
* group[=].element[=].target[+].code = #sw
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #sp
* group[=].element[=].target[+].code = #sp
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #sh
* group[=].element[=].target[+].code = #sh
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #te
* group[=].element[=].target[+].code = #te
* group[=].element[=].target[=].equivalence = #equal
