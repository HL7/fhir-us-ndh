
Instance: AcmeofCTPremNet
InstanceOf: NdhNetwork
Description: "Acme of CT Premium Premium Network"
Usage: #example
* meta.profile = Canonical(NdhNetwork) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* partOf = Reference(Acme)
* type = OrgTypeCS#ntwk "Network"
* name = "ACME CT Premium Preferred Provider Network"
* contact.telecom.extension[via-intermediary].valueReference = Reference(Acme)
* contact.name.family = "Kawasaki"
* contact.name.given = "Jane"
* extension[location-reference].valueReference = Reference(StateOfCTLocation)


Instance: AcmeofCTStdNet
InstanceOf: NdhNetwork
Description: "Acme of CT Standard Network"
Usage: #example
* meta.profile = Canonical(NdhNetwork) 
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* partOf = Reference(Acme)
* type = OrgTypeCS#ntwk "Network"
* name = "ACME CT Preferred Provider Network"
* contact.telecom.extension[via-intermediary].valueReference = Reference(Acme)
* contact.name.family = "Kawasaki"
* contact.name.given = "Jane"

