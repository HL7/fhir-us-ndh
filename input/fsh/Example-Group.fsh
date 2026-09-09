

Instance: BehavioralHealthGroupAtBurrClinic
InstanceOf: NdhGroup
Title: "Example Behavioral Health Group"
Description: "This is an example of a group of practitioners that provide behavioral health services to patients at the Burr Clinic."
Usage: #example
* active = true
* type = #practitioner
* code = $loinc#LA27978-8 "Condition-focused care team"
* name = "Behavioral Health Group"
* managingEntity = Reference(BurrClinic)
* member[0].entity = Reference(JoeSmith)
* member[0].period.start = "2020-01-01"
* member[0].period.end = "2025-12-31"
* member[0].inactive = false
* member[1].entity = Reference(HansSolo)
* member[1].period.start = "2020-01-01"
* member[1].period.end = "2025-12-31"
* member[1].inactive = false
* extension[service-offered].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/ndh-healthcare-service-category#behav
* extension[location].valueReference = Reference(HospLoc1)
* extension[endpoint].valueReference = Reference(CoordinationOfCareEndpoint)
* extension[artifact-description].valueMarkdown = "This is a group of practitioners that provide behavioral health services to patients at the Burr Clinic."
* extension[artifact-effectivePeriod].valuePeriod.start = "2020-01-01"
* extension[artifact-effectivePeriod].valuePeriod.end = "2025-12-31"
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
