Instance: OrganizationGen1
InstanceOf: NdhOrganization
Description: "NdhOrganization OrganizationGen1"
Usage: #example
* meta.profile = Canonical(NdhOrganization)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[+].system = "http://example.org/ndh-identifiers"
* identifier[=].value = "OrganizationGen1"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* name = "OrganizationGen1"
* type = $NdhOrgTypeCS#fac "Facility"
* type.text = "A physical healthcare facility."

Instance: OrganizationGen2
InstanceOf: NdhOrganization
Description: "NdhOrganization OrganizationGen2"
Usage: #example
* meta.profile = Canonical(NdhOrganization)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[+].system = "http://example.org/ndh-identifiers"
* identifier[=].value = "OrganizationGen2"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* name = "OrganizationGen2"
* type = $NdhOrgTypeCS#fac "Facility"
* type.text = "A physical healthcare facility."



Instance: NetworkGen1
InstanceOf: NdhNetwork
Description: "NdhNetwork NetworkGen1"
Usage: #example
* meta.profile = Canonical(NdhNetwork)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[+].system = "http://example.org/ndh-identifiers"
* identifier[=].value = "NetworkGen1"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* name = "NetworkGen1"
* type = $OrgTypeCS#ntwk "Network"
* type.text = "A healthcare provider insurance network"
* partOf = Reference(OrganizationGen1)

Instance: NetworkGen2
InstanceOf: NdhNetwork
Description: "NdhNetwork NetworkGen2"
Usage: #example
* meta.profile = Canonical(NdhNetwork)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[+].system = "http://example.org/ndh-identifiers"
* identifier[=].value = "NetworkGen2"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* name = "NetworkGen2"
* type = $OrgTypeCS#ntwk "Network"
* type.text = "A healthcare provider insurance network"
* partOf = Reference(OrganizationGen2)

Instance: LocationGen1
InstanceOf: NdhLocation
Description: "NdhLocation LocationGen1"
Usage: #example
* meta.profile = Canonical(NdhLocation)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* status = #active
* extension[newpatients][+].extension[acceptingPatients].valueCodeableConcept = $AcceptingPatientsCS#newpt "Accepting new and existing patients"
* extension[newpatients][=].extension[fromNetwork].valueReference = Reference(NetworkGen1)
* extension[newpatients][+].extension[acceptingPatients].valueCodeableConcept = $AcceptingPatientsCS#nopt "Not Accepting"
* extension[newpatients][=].extension[fromNetwork].valueReference = Reference(NetworkGen2)
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[+].system = "http://example.org/ndh-identifiers"
* identifier[=].value = "LocationGen1"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* name = "LocationGen1"


Instance: LocationGen2
InstanceOf: NdhLocation
Description: "NdhLocation LocationGen2"
Usage: #example
* meta.profile = Canonical(NdhLocation)
* meta.lastUpdated = "2022-06-25T13:26:22.0314215+00:00"
* language = #en-US
* status = #active
* extension[newpatients][+].extension[acceptingPatients].valueCodeableConcept = $AcceptingPatientsCS#newpt "Accepting new and existing patients"
* extension[newpatients][=].extension[fromNetwork].valueReference = Reference(NetworkGen1)
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[+].system = "http://example.org/ndh-identifiers"
* identifier[=].value = "LocationGen2"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* name = "LocationGen2"