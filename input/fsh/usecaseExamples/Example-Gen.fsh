Instance: OrganizationGen1
InstanceOf: NdhExOrganization
Description: "NdhExOrganization OrganizationGen1"
Usage: #example
* meta.profile = Canonical(NdhExOrganization)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "OrganizationGen1"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name = "OrganizationGen1"
* type = OrgTypeCS#fac "Facility"
* type.text = "A physical healthcare facility."

Instance: OrganizationGen2
InstanceOf: NdhExOrganization
Description: "NdhExOrganization OrganizationGen2"
Usage: #example
* meta.profile = Canonical(NdhExOrganization)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "OrganizationGen2"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name = "OrganizationGen2"
* type = OrgTypeCS#fac "Facility"
* type.text = "A physical healthcare facility."



Instance: NetworkGen1
InstanceOf: NdhExNetwork
Description: "NdhExNetwork NetworkGen1"
Usage: #example
* meta.profile = Canonical(NdhExNetwork)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "NetworkGen1"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name = "NetworkGen1"
* type = OrgTypeCS#ntwk "Network"
* type.text = "A healthcare provider insurance network"
* partOf = Reference(OrganizationGen1)

Instance: NetworkGen2
InstanceOf: NdhExNetwork
Description: "NdhExNetwork NetworkGen2"
Usage: #example
* meta.profile = Canonical(NdhExNetwork)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "NetworkGen2"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name = "NetworkGen2"
* type = OrgTypeCS#ntwk "Network"
* type.text = "A healthcare provider insurance network"
* partOf = Reference(OrganizationGen2)

Instance: LocationGen1
InstanceOf: NdhExLocation
Description: "NdhExLocation LocationGen1"
Usage: #example
* meta.profile = Canonical(NdhExLocation)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* status = #active
* extension[newpatients][+].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#newpt "Accepting"
* extension[newpatients][=].extension[fromNetwork].valueReference = Reference(NetworkGen1)
* extension[newpatients][+].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#nopt "Not Accepting"
* extension[newpatients][=].extension[fromNetwork].valueReference = Reference(NetworkGen2)
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "LocationGen1"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name = "LocationGen1"


Instance: LocationGen2
InstanceOf: NdhExLocation
Description: "NdhExLocation LocationGen2"
Usage: #example
* meta.profile = Canonical(NdhExLocation)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* status = #active
* extension[newpatients][+].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#newpt "Accepting"
* extension[newpatients][=].extension[fromNetwork].valueReference = Reference(NetworkGen1)
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "LocationGen2"
* identifier[=].extension[identifier-status].valueCode = CredentialStatusCS#active
* name = "LocationGen2"