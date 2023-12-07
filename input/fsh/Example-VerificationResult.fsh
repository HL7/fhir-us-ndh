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
* attestation.communicationMethod = $VerificationCommunicationMethodCS#manual
* attestation.date = "2023-03-28"

Instance: Verify-JoeSmith
InstanceOf: NdhVerification
Description: "Verify Practitioner Joe Smith"
Usage: #example
* meta.profile = Canonical(NdhVerification)
* meta.lastUpdated = "2023-06-03T13:26:22.0314215+00:00"
* target[0] = Reference(Practitioner/JoeSmith)
* target[=].display = "Practitioner Joe Smith"
* targetLocation[0] = "Practitioner.qualifications"
* need = $VerificationResultNeedCS#periodic "Periodic"
* need.text = "The frequency the target(s) need to be verified is Periodic"
* status = $VerificationResultStatusCS#validated
* statusDate = "2023-06-03T13:26:22.0314215+00:00"
* validationType = $VerificationTypeCS#primary "Primary Source"
* validationType.text = "The verification type is via Primary Source"
* validationProcess = NdhVerificationProcessCS#primary "primary source"
* validationProcess.text = "The verification process is via primary source"
* frequency.repeat.frequency = 1
* frequency.repeat.period = 1
* frequency.repeat.periodUnit = #a
* lastPerformed = "2023-06-03T13:26:22.0314215+00:00"
* nextScheduled = "2024-06-03"
* failureAction = $VerificationFailureActionCS#fatal "Fatal"
* primarySource[0].who.display = "State of Illinois Licensing Board"
* primarySource[=].type = $VerificationresultPrimarySourceTypeCS#lic-board "License Board"
* primarySource[=].validationStatus = $ValidationstatusCS#successful "Successful"
* primarySource[=].validationDate = "2023-06-03T13:26:22.0314215+00:00"
* attestation.who = Reference(Practitioner/JoeSmith)
* attestation.who.display = "Joe Smith"
* attestation.communicationMethod = $VerificationCommunicationMethodCS#manual
* attestation.communicationMethod.coding[0].display = "Manual"
* attestation.date = "2023-03-28"

Instance: Verify-JoeSmith-2
InstanceOf: NdhVerification
Description: "Verify Practitioner Joe Smith"
Usage: #example
* meta.profile = Canonical(NdhVerification)
* meta.lastUpdated = "2023-06-03T13:26:22.0314215+00:00"
* target[0] = Reference(Practitioner/JoeSmith)
* target[=].display = "Practitioner Joe Smith"
* targetLocation[0] = "Practitioner.qualifications"
* targetLocation[+] = "Practitioner.address"
* targetLocation[+] = "Practitioner.identifier.where(system='http://hl7.org/fhir/sid/us-npi')"
* need = $VerificationResultNeedCS#periodic "Periodic"
* need.text = "The frequency the target(s) need to be verified is Periodic"
* status = $VerificationResultStatusCS#validated
* statusDate = "2023-06-03T13:26:22.0314215+00:00"
* validationType = $VerificationTypeCS#primary "Primary Source"
* validationType.text = "The verification type is via Primary Source"
* validationProcess = NdhVerificationProcessCS#primary "primary source"
* validationProcess.text = "The verification process is via primary source"
* failureAction = $VerificationFailureActionCS#fatal "Fatal"
* primarySource[0].who.display = "Medical School"
* primarySource[=].type = $VerificationresultPrimarySourceTypeCS#prim "Primary Education"
* primarySource[=].validationStatus = $ValidationstatusCS#successful "Successful"
* primarySource[=].validationDate = "2023-06-03T13:26:22.0314215+00:00"
* primarySource[+].who.display = "Physical address"
* primarySource[=].type = $VerificationresultPrimarySourceTypeCS#post-serv "Postal Service"
* primarySource[=].validationStatus = $ValidationstatusCS#successful "Successful"
* primarySource[=].validationDate = "2023-06-03T13:26:22.0314215+00:00"
* primarySource[+].who.display = "NPI Registry"
* primarySource[=].type = $VerificationresultPrimarySourceTypeCS#issuer "Issuing source"
* primarySource[=].validationStatus = $ValidationstatusCS#successful "Successful"
* primarySource[=].validationDate = "2023-06-03T13:26:22.0314215+00:00"
* attestation.who = Reference(Practitioner/JoeSmith)
* attestation.who.display = "Joe Smith"
* attestation.communicationMethod = $VerificationCommunicationMethodCS#manual
* attestation.communicationMethod.coding[0].display = "Manual"
* attestation.date = "2023-03-28"

Instance: Verify-Hospital
InstanceOf: NdhVerification
Description: "Verify Hartford General Hospital"
Usage: #example
* meta.profile = Canonical(NdhVerification)
* meta.lastUpdated = "2023-06-03T13:26:22.0314215+00:00"
* target[0] = Reference(Organization/Hospital)
* target[=].display = "Organization Hartford General Hospital"
* targetLocation[0] = "Organization.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-qualification')"
* targetLocation[+] = "Organization.address"
* targetLocation[+] = "Organization.identifier.where(system='http://hl7.org/fhir/sid/us-npi')"
* need = $VerificationResultNeedCS#periodic "Periodic"
* need.text = "The frequency the target(s) need to be verified is Periodic"
* status = $VerificationResultStatusCS#validated
* statusDate = "2023-06-03T13:26:22.0314215+00:00"
* validationType = $VerificationTypeCS#primary "Primary Source"
* validationType.text = "The verification type is via Primary Source"
* validationProcess = NdhVerificationProcessCS#primary "primary source"
* validationProcess.text = "The verification process is via primary source"
* frequency.repeat.frequency = 1
* frequency.repeat.period = 1
* frequency.repeat.periodUnit = #a
* lastPerformed = "2023-06-03T13:26:22.0314215+00:00"
* nextScheduled = "2024-06-03"
* failureAction = $VerificationFailureActionCS#fatal "Fatal"
* primarySource[0].who.display = "The Joint Commission"
* primarySource[=].type = $VerificationresultPrimarySourceTypeCS#issuer "Issuing source"
* primarySource[=].validationStatus = $ValidationstatusCS#successful "Successful"
* primarySource[=].validationDate = "2023-06-03T13:26:22.0314215+00:00"
* attestation.who = Reference(Organization/Hospital)
* attestation.who.display = "Hartford General Hospital"
* attestation.communicationMethod = $VerificationCommunicationMethodCS#manual
* attestation.communicationMethod.coding[0].display = "Manual"
* attestation.date = "2023-03-28"


Instance: Verify-Hospital-2
InstanceOf: NdhVerification
Description: "Verify Hartford General Hospital"
Usage: #example
* meta.profile = Canonical(NdhVerification)
* meta.lastUpdated = "2023-06-03T13:26:22.0314215+00:00"
* target[0] = Reference(Organization/Hospital)
* target[=].display = "Organization Hartford General Hospital"
* targetLocation[0] = "Organization.extension.where(url='http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-qualification')"
* targetLocation[+] = "Organization.address"
* targetLocation[+] = "Organization.identifier.where(system='http://hl7.org/fhir/sid/us-npi')"
* need = $VerificationResultNeedCS#periodic "Periodic"
* need.text = "The frequency the target(s) need to be verified is Periodic"
* status = $VerificationResultStatusCS#validated
* statusDate = "2023-06-03T13:26:22.0314215+00:00"
* validationType = $VerificationTypeCS#primary "Primary Source"
* validationType.text = "The verification type is via Primary Source"
* validationProcess = NdhVerificationProcessCS#primary "primary source"
* validationProcess.text = "The verification process is via primary source"
* failureAction = $VerificationFailureActionCS#fatal "Fatal"
* primarySource[+].who.display = "Physical address"
* primarySource[=].type = $VerificationresultPrimarySourceTypeCS#post-serv "Postal Service"
* primarySource[=].validationStatus = $ValidationstatusCS#successful "Successful"
* primarySource[=].validationDate = "2023-06-03T13:26:22.0314215+00:00"
* primarySource[+].who.display = "NPI Registry"
* primarySource[=].type = $VerificationresultPrimarySourceTypeCS#issuer "Issuing source"
* primarySource[=].validationStatus = $ValidationstatusCS#successful "Successful"
* primarySource[=].validationDate = "2023-06-03T13:26:22.0314215+00:00"
* attestation.who = Reference(Organization/Hospital)
* attestation.who.display = "Hartford General Hospital"
* attestation.communicationMethod = $VerificationCommunicationMethodCS#manual
* attestation.communicationMethod.coding[0].display = "Manual"
* attestation.date = "2023-03-28"

Instance: Verify-JoeSmithHospitalRole
InstanceOf: NdhVerification
Description: "Verify Joe Smith's role at Hartford General Hospital"
Usage: #example
* meta.profile = Canonical(NdhVerification)
* meta.lastUpdated = "2023-06-03T13:26:22.0314215+00:00"
* target[0] = Reference(PractitionerRole/JoeSmithHospitalRole)
* target[=].display = "PractitionerRole Joe Smith's role at Hartford General Hospital"
* targetLocation[0] = "PractitionerRole.practitioner"
* targetLocation[+] = "PractitionerRole.organization"
* need = $VerificationResultNeedCS#periodic "Periodic"
* need.text = "The frequency the target(s) need to be verified is Periodic"
* status = $VerificationResultStatusCS#attested
* statusDate = "2023-06-03T13:26:22.0314215+00:00"
* validationType = $VerificationTypeCS#multiple "Multiple Sources"
* validationType.text = "Attested by multiple sources"
* validationProcess = NdhVerificationProcessCS#in-context "In-context"
* validationProcess.text = "Mutual relationship between practitioner and organization"
* frequency.repeat.frequency = 1
* frequency.repeat.period = 1
* frequency.repeat.periodUnit = #a
* lastPerformed = "2023-06-03T13:26:22.0314215+00:00"
* nextScheduled = "2024-06-03"
* failureAction = $VerificationFailureActionCS#none "None"
* attestation.who = Reference(Organization/Hospital)
* attestation.who.display = "Hartford General Hospital"
* attestation.communicationMethod = $VerificationCommunicationMethodCS#manual
* attestation.communicationMethod.coding[0].display = "Manual"
* attestation.date = "2023-03-28"
