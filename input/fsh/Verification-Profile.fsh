
//NdhVerificationResult


Profile: NdhVeVerification
Parent: NdhVerification
Id: ndhVe-Verification
Title: "NDH Verification Verification"
Description: "Describes Verification requirements, source(s), status and dates for one or more elements"
//* ^date = "2022-11-03T12:42:47.483-05:00"
//* ^status = #active
//* . ^short = "Verification"
//* . ^definition = "Describes Verification requirements, source(s), status and dates for one or more elements"
//* target 1..* MS
//* targetLocation MS
//* need 1..1 MS
//* status MS
//* statusDate 1..1 MS
//* validationType 1..1 MS
//* validationType from $verificationresult-validation-type
//* validationType ^short = "nothing|single|multiple"
//* validationType ^definition = "What the target is validated against (nothing|single source|multiple sources)"
//* validationProcess 1..* MS
//* validationProcess from NdhVerificationProcessVS(example)
//* validationProcess ^short = "The process(es) by which the target is validated"
//* validationProcess ^definition = "The process(es) by which the target is validated"
//* frequency MS
//* lastPerformed MS
//* nextScheduled MS
//* failureAction 1..1 MS
//* primarySource MS
//* primarySource.who MS
//* primarySource.type 1..* MS
//* primarySource.type from $verificationresult-primary-source-type (example)
//* primarySource.type ^short = "Type of primary source"
//* primarySource.type ^definition = "Type of primary source"
//* primarySource.communicationMethod 0..* MS
//* primarySource.communicationMethod from $verificationresult-communication-method_1 (example)
//* primarySource.validationStatus MS
//* primarySource.validationDate MS
//* primarySource.canPushUpdates MS
//* primarySource.pushTypeAvailable MS
//* attestation 1..1 MS
//* attestation.who 1..1 MS
//* attestation.onBehalfOf MS
//* attestation.communicationMethod 1..1 MS
//* attestation.communicationMethod only CodeableConcept
//* attestation.communicationMethod from $verificationresult-communication-method_1 (example)
//* attestation.date 1..1 MS
//* attestation.sourceIdentityCertificate MS
//* attestation.proxyIdentityCertificate MS
//* attestation.proxySignature MS
//* attestation.sourceSignature MS
//* validator MS
//* validator.organization MS
//* validator.identityCertificate MS
//* validator.attestationSignature MS
//Restriction