Instance: Example-license
InstanceOf: NdhVerification
Description: "Example license"
Usage: #example
* meta.profile = Canonical(NdhVerification)
* meta.lastUpdated = "2023-03-28T13:26:22.0314215+00:00"
* target[0] = Reference(Practitioner/HansSolo)
* targetLocation[0] = "Practitioner.qualifications[0]"
* need.coding[0] = $VerificationResultNeedCS#periodic
* status = $VerificationResultStatusCS#validated
* statusDate = "2023-03-28T13:26:22.0314215+00:00"
* validationType[0] = $VerificationTypeCS#primary
* validationProcess[0] = NdhVerificationProcessCS#primary
* failureAction = $VerificationFailureActionCS#none
* attestation.who = Reference(Practitioner/HansSolo)
* attestation.communicationMethod = NdhVerificationCommunicationMethodCS#manual
* attestation.date = "2023-03-28"

Instance: Verify-JoeSmith
InstanceOf: NdhVerification
Description: "Verify Practitioner Joe Smith"
Usage: #example
* meta.profile = Canonical(NdhVerification)
* meta.lastUpdated = "2023-06-03T13:26:22.0314215+00:00"
* target[0] = Reference(Practitioner/JoeSmith)
* target[=].display = "Joe Smith"
* targetLocation[0] = "Practitioner.qualifications[0]"
* need.coding[0] = $VerificationResultNeedCS#periodic "Periodic"
//* need.coding[=].display = "Periodic"
* status = $VerificationResultStatusCS#validated
* statusDate = "2023-06-03T13:26:22.0314215+00:00"
* validationType[0] = $VerificationTypeCS#primary
* validationType[=].coding[0].display = "Primary Source"
* validationProcess[0] = NdhVerificationProcessCS#primary
* validationProcess[=].coding[0].display = "primary source"
* frequency.repeat.frequency = 1
* frequency.repeat.period = 1
* frequency.repeat.periodUnit = #a
* lastPerformed = "2023-06-03T13:26:22.0314215+00:00"
* nextScheduled = "2024-06-03"
* failureAction = $VerificationFailureActionCS#fatal
* failureAction.coding[0].display = "Fatal"
* primarySource[0].who = Reference(Organization/StateOfIllinoisLicBoard)
* primarySource[=].type = $VerificationresultPrimarySourceTypeCS#lic-board "License Board"
//* primarySource[=].type.coding[0].display = "Licensing Board"
* attestation.who = Reference(Practitioner/JoeSmith)
* attestation.who.display = "Joe Smith"
* attestation.communicationMethod = NdhVerificationCommunicationMethodCS#manual
* attestation.communicationMethod.coding[0].display = "Manual"
* attestation.date = "2023-03-28"
* validator[0].organization = Reference(Organization/StateOfIllinoisLicBoard)
* validator[=].organization.display = "State of Illinois Licensing Board"
