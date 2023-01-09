Instance: base-practitioner-1
InstanceOf: NdhPractitioner
Description: "Counselor Susie Smith"
Usage: #example
* meta.profile = Canonical(NdhPractitioner)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* identifier[NPI].value = "NPI3238"
* identifier[NPI].system = $NPICS
* identifier[NPI].extension[identifier-status].valueCode = CredentialStatusCS#active
* name.text = "Susie Smith, LPC"
* name.family = "Smith"
* name.given[+] = "Susie"
* qualification[+].code.coding.display = "LPC"
* qualification[=].code.text = "LPC"
* qualification[=].issuer.display = "State of Illinois"
* qualification[=].code.text = "IL"
* qualification[=].extension[practitioner-qualification].extension[status].valueCode = $NdhQualificationStatusCS#active 
* qualification[=].extension[practitioner-qualification].extension[whereValid].valueCodeableConcept = $USPSStateCS#IL 
* communication[+].extension[communication-proficiency].valueCodeableConcept = $NdhLanguageProficiencyCS#30
* communication = $BCP47#ru 
* extension[rating].extension[ratingType].valueCodeableConcept = $USPSStateCS#IL 
* extension[rating].extension[ratingValue].valueString = "5"