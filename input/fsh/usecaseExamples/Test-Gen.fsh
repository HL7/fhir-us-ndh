Instance: location-gen-1
InstanceOf: NdhExLocation
Description: "NdhExLocation location-gen-1"
Usage: #example
* meta.profile = Canonical(NdhExLocation)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* status = #active
* extension[newpatients][+].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#newpt "Accepting"
* extension[newpatients][=].extension[fromNetwork].valueReference = Reference(Organization/network-gen-1)
* extension[newpatients][+].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#nopt "Not Accepting"
* extension[newpatients][=].extension[fromNetwork].valueReference = Reference(Organization/network-gen-2)
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "location-gen-1"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name = "location-gen-1"

Instance: network-gen-1
InstanceOf: NdhExNetwork
Description: "NdhExNetwork network-gen-1"
Usage: #example
* meta.profile = Canonical(NdhExNetwork)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "network-gen-1"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name = "network-gen-1"
* type = OrgTypeCS#ntwk "Network"
* type.text = "A healthcare provider insurance network"
* partOf = Reference(Acme)

Instance: network-gen-2
InstanceOf: NdhExNetwork
Description: "NdhExNetwork network-gen-2"
Usage: #example
* meta.profile = Canonical(NdhExNetwork)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "network-gen-2"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name = "network-gen-2"
* type = OrgTypeCS#ntwk "Network"
* type.text = "A healthcare provider insurance network"
* partOf = Reference(Acme)