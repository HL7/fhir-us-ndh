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
