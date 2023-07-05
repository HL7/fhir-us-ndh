Instance: HealthcareServiceIncluedLocationNearBundle
InstanceOf: Bundle
Description: "HealthcareServiceIncluedLocationNearBundle"
Usage: #example
* meta.lastUpdated = "2023-07-05T13:28:53.118+00:00"
* type = #searchset
* total = 5
* link.relation = "self"
* link.url = "https://national-directory.fast.hl7.org/fhir/HealthcareService?_include=Location%3A*&category=group&location%3ALocation.near=41.809006%7C-71.41177%7C3%7Cmi"
* entry[0].fullUrl = "https://national-directory.fast.hl7.org/fhir/HealthcareService/group-healthcareservice-1235731321"
* entry[=].resource = group-healthcareservice-1235731321
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://national-directory.fast.hl7.org/fhir/HealthcareService/group-healthcareservice-1237955733"
* entry[=].resource = group-healthcareservice-1237955733
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://national-directory.fast.hl7.org/fhir/HealthcareService/group-healthcareservice-1234521488"
* entry[=].resource = group-healthcareservice-1234521488
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://national-directory.fast.hl7.org/fhir/HealthcareService/group-healthcareservice-1233319368"
* entry[=].resource = group-healthcareservice-1233319368
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://national-directory.fast.hl7.org/fhir/HealthcareService/group-healthcareservice-1230085657"
* entry[=].resource = group-healthcareservice-1230085657
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://national-directory.fast.hl7.org/fhir/Location/ndh-location-1237955733"
* entry[=].resource = ndh-location-1237955733
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://national-directory.fast.hl7.org/fhir/Organization/ndh-organization-1230085657"
* entry[=].resource = ndh-organization-1230085657
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://national-directory.fast.hl7.org/fhir/Location/ndh-location-1235731321"
* entry[=].resource = ndh-location-1235731321
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://national-directory.fast.hl7.org/fhir/Location/ndh-location-1233319368"
* entry[=].resource = ndh-location-1233319368
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://national-directory.fast.hl7.org/fhir/Organization/ndh-organization-1233319368"
* entry[=].resource = ndh-organization-1233319368
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://national-directory.fast.hl7.org/fhir/Organization/ndh-organization-1234521488"
* entry[=].resource = ndh-organization-1234521488
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://national-directory.fast.hl7.org/fhir/Location/ndh-location-1234521488"
* entry[=].resource = ndh-location-1234521488
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://national-directory.fast.hl7.org/fhir/Organization/ndh-organization-1237955733"
* entry[=].resource = ndh-organization-1237955733
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://national-directory.fast.hl7.org/fhir/Location/ndh-location-1230085657"
* entry[=].resource = ndh-location-1230085657
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://national-directory.fast.hl7.org/fhir/Organization/ndh-organization-1235731321"
* entry[=].resource = ndh-organization-1235731321
* entry[=].search.mode = #include

Instance: group-healthcareservice-1235731321
InstanceOf: NdhHealthcareService
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2022-12-20T19:28:24.671+00:00"
* meta.source = "#5W4kw8uMs4mA7G1S"
* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-HealthcareService"
* extension[newpatients][0].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#nopt
* extension[deliverymethod][0].extension[deliveryMethodtype].valueCodeableConcept = DeliveryMethodCS#physical "Physical"
* active = true
* providedBy = Reference(ndh-organization-1235731321) "CODAC INC"
* category = HealthcareServiceCategoryCS#group
* category.text = "group"
* location = Reference(ndh-location-1235731321) "CODAC INC"
* name = "CODAC INC"
* telecom[0].system = #phone
* telecom[=].value = "808.992.0900"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "967-286-5272 x60089"
* telecom[=].use = #work
* appointmentRequired = true
* availableTime.daysOfWeek[0] = #mon
* availableTime.daysOfWeek[+] = #tue
* availableTime.daysOfWeek[+] = #wed
* availableTime.daysOfWeek[+] = #thu
* availableTime.daysOfWeek[+] = #fri
* availableTime.allDay = false
* availableTime.availableStartTime = "08:00:00"
* availableTime.availableEndTime = "18:00:00"

Instance: group-healthcareservice-1237955733
InstanceOf: NdhHealthcareService
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2022-12-20T19:28:24.671+00:00"
* meta.source = "#5W4kw8uMs4mA7G1S"
* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-HealthcareService"
* extension[newpatients][0].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#newpt
* extension[deliverymethod][0].extension[deliveryMethodtype].valueCodeableConcept = DeliveryMethodCS#physical "Physical"
//* extension[0].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients"
//* extension[=].extension.url = "acceptingPatients"
//* extension[=].extension.valueCodeableConcept = AcceptingPatientsCS#newpt
//* extension[+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-delivery-method"
//* extension[=].extension.url = "type"
//* extension[=].extension.valueCodeableConcept = DeliveryMethodCS#physical "Physical"
* active = true
* providedBy = Reference(ndh-organization-1237955733) "DISCOVERY HOUSE UTAH"
* category = HealthcareServiceCategoryCS#group
* category.text = "group"
* location = Reference(ndh-location-1237955733) "DISCOVERY HOUSE UTAH"
* name = "DISCOVERY HOUSE UTAH"
* telecom[0].system = #phone
* telecom[=].value = "1-328-829-5873 x75788"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "(693) 749-0386"
* telecom[=].use = #work
* appointmentRequired = true
* availableTime.daysOfWeek[0] = #mon
* availableTime.daysOfWeek[+] = #tue
* availableTime.daysOfWeek[+] = #wed
* availableTime.daysOfWeek[+] = #thu
* availableTime.daysOfWeek[+] = #fri
* availableTime.allDay = false
* availableTime.availableStartTime = "08:00:00"
* availableTime.availableEndTime = "18:00:00"

Instance: group-healthcareservice-1234521488
InstanceOf: NdhHealthcareService
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2022-12-20T19:28:24.671+00:00"
* meta.source = "#5W4kw8uMs4mA7G1S"
* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-HealthcareService"
* extension[newpatients][0].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#existptonly
* extension[deliverymethod][0].extension[deliveryMethodtype].valueCodeableConcept = DeliveryMethodCS#physical "Physical"
//* extension[0].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients"
//* extension[=].extension.url = "acceptingPatients"
//* extension[=].extension.valueCodeableConcept = AcceptingPatientsCS#existptonly
//* extension[+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-delivery-method"
//* extension[=].extension.url = "type"
//* extension[=].extension.valueCodeableConcept = DeliveryMethodCS#physical "Physical"
* active = true
* providedBy = Reference(ndh-organization-1234521488) "RHODE ISLAND SUBSTANCE ABUSE TREATMENT INC"
* category = HealthcareServiceCategoryCS#group
* category.text = "group"
* location = Reference(ndh-location-1234521488) "RHODE ISLAND SUBSTANCE ABUSE TREATMENT INC"
* name = "RHODE ISLAND SUBSTANCE ABUSE TREATMENT INC"
* telecom[0].system = #phone
* telecom[=].value = "845.237.8591"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "1-745-786-1542"
* telecom[=].use = #work
* appointmentRequired = true
* availableTime.daysOfWeek[0] = #mon
* availableTime.daysOfWeek[+] = #tue
* availableTime.daysOfWeek[+] = #wed
* availableTime.daysOfWeek[+] = #thu
* availableTime.daysOfWeek[+] = #fri
* availableTime.allDay = false
* availableTime.availableStartTime = "08:00:00"
* availableTime.availableEndTime = "18:00:00"

Instance: group-healthcareservice-1233319368
InstanceOf: NdhHealthcareService
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2022-12-20T19:28:24.671+00:00"
* meta.source = "#5W4kw8uMs4mA7G1S"
* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-HealthcareService"
* extension[newpatients][0].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#newpt
* extension[deliverymethod][0].extension[deliveryMethodtype].valueCodeableConcept = DeliveryMethodCS#physical "Physical"
//* extension[0].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients"
//* extension[=].extension.url = "acceptingPatients"
//* extension[=].extension.valueCodeableConcept = AcceptingPatientsCS#newpt
//* extension[+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-delivery-method"
//* extension[=].extension.url = "type"
//* extension[=].extension.valueCodeableConcept = DeliveryMethodCS#physical "Physical"
* active = true
* providedBy = Reference(ndh-organization-1233319368) "RHODE ISLAND SUBSTANCE ABUSE TREATMENT, INC."
* category = HealthcareServiceCategoryCS#group
* category.text = "group"
* location = Reference(ndh-location-1233319368) "RHODE ISLAND SUBSTANCE ABUSE TREATMENT, INC."
* name = "RHODE ISLAND SUBSTANCE ABUSE TREATMENT, INC."
* telecom[0].system = #phone
* telecom[=].value = "1-248-018-5386"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "282.639.8629"
* telecom[=].use = #work
* appointmentRequired = true
* availableTime.daysOfWeek[0] = #mon
* availableTime.daysOfWeek[+] = #tue
* availableTime.daysOfWeek[+] = #wed
* availableTime.daysOfWeek[+] = #thu
* availableTime.daysOfWeek[+] = #fri
* availableTime.allDay = false
* availableTime.availableStartTime = "08:00:00"
* availableTime.availableEndTime = "18:00:00"

Instance: group-healthcareservice-1230085657
InstanceOf: NdhHealthcareService
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2022-12-20T19:28:24.671+00:00"
* meta.source = "#5W4kw8uMs4mA7G1S"
* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-HealthcareService"
* extension[newpatients][0].extension[acceptingPatients].valueCodeableConcept = AcceptingPatientsCS#existptonly
* extension[deliverymethod][0].extension[deliveryMethodtype].valueCodeableConcept = DeliveryMethodCS#physical "Physical"
//* extension[0].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients"
//* extension[=].extension.url = "acceptingPatients"
//* extension[=].extension.valueCodeableConcept = AcceptingPatientsCS#existptonly
//* extension[+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-delivery-method"
//* extension[=].extension.url = "type"
//* extension[=].extension.valueCodeableConcept = DeliveryMethodCS#physical "Physical"
* active = true
* providedBy = Reference(ndh-organization-1230085657) "BAYSIDE ENDOSCOPY, LLC"
* category = HealthcareServiceCategoryCS#group
* category.text = "group"
* location = Reference(ndh-location-1230085657) "BAYSIDE ENDOSCOPY, LLC"
* name = "BAYSIDE ENDOSCOPY, LLC"
* telecom[0].system = #phone
* telecom[=].value = "1-934-216-7826 x8756"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "1-700-615-4062 x03108"
* telecom[=].use = #work
* appointmentRequired = true
* availableTime.daysOfWeek[0] = #mon
* availableTime.daysOfWeek[+] = #tue
* availableTime.daysOfWeek[+] = #wed
* availableTime.daysOfWeek[+] = #thu
* availableTime.daysOfWeek[+] = #fri
* availableTime.allDay = false
* availableTime.availableStartTime = "08:00:00"
* availableTime.availableEndTime = "18:00:00"

Instance: ndh-location-1237955733
InstanceOf: NdhLocation
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:44:22.239+00:00"
* meta.source = "#yfN9tWGDGnomhl8A"
* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Location"
* extension[0].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-accessibility"
* extension[=].valueCodeableConcept = AccessibilityCS#handiaccess "handicap accessible"
* extension[=].valueCodeableConcept.text = "Offers a variety of services and programs for persons with disabilities"
* extension[+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients"
* extension[=].extension.url = "acceptingPatients"
* extension[=].extension.valueCodeableConcept = AcceptingPatientsCS#newpt
* identifier.use = #secondary
* identifier.system = "https://discovery-house-utah.com"
* identifier.value = "main campus"
* identifier.assigner = Reference(ndh-organization-1237955733) "DISCOVERY HOUSE UTAH"
* status = #active
* name = "DISCOVERY HOUSE UTAH"
* description = "Main campus of DISCOVERY HOUSE UTAH"
* telecom[0].extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-contactpoint-availabletime"
* telecom[=].extension.extension.url = "allDay"
* telecom[=].extension.extension.valueBoolean = true
* telecom[=].system = #phone
* telecom[=].value = "1-328-829-5873 x75788"
* telecom[=].use = #work
* telecom[+].extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-contactpoint-availabletime"
* telecom[=].extension.extension.url = "allDay"
* telecom[=].extension.extension.valueBoolean = true
* telecom[=].system = #fax
* telecom[=].value = "(693) 749-0386"
* telecom[=].use = #work
* address.use = #work
* address.type = #both
* address.text = "66 PAVILION AVE, PROVIDENCE, RI 029051522"
* address.line = "66 PAVILION AVE"
* address.city = "PROVIDENCE"
* address.state = "RI"
* address.postalCode = "029051522"
* address.country = "USA"
* position.longitude = -71.40409
* position.latitude = 41.79822
* managingOrganization = Reference(ndh-organization-1237955733) "DISCOVERY HOUSE UTAH"
* hoursOfOperation.daysOfWeek[0] = #mon
* hoursOfOperation.daysOfWeek[+] = #tue
* hoursOfOperation.daysOfWeek[+] = #wed
* hoursOfOperation.daysOfWeek[+] = #thu
* hoursOfOperation.daysOfWeek[+] = #fri
* hoursOfOperation.daysOfWeek[+] = #sat
* hoursOfOperation.daysOfWeek[+] = #sun
* hoursOfOperation.allDay = true
* availabilityExceptions = "visiting hours from 6:00 am - 10:00 pm"

Instance: ndh-organization-1230085657
InstanceOf: NdhOrganization
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:45:21.526+00:00"
* meta.source = "#054uQQFhinTrMfW0"
* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Organization"
* identifier.use = #official
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1230085657"
* identifier.assigner.display = "Centers for Medicare and Medicaid Services"
* active = true
* type = OrgTypeCS#prvgrp "Provider Group"
* type.text = "A healthcare provider entity"
* name = "BAYSIDE ENDOSCOPY, LLC"
* telecom[0].system = #phone
* telecom[=].value = "1-934-216-7826 x8756"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "1-700-615-4062 x03108"
* telecom[=].use = #work
* address.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* address.extension.extension[0].url = "latitude"
* address.extension.extension[=].valueDecimal = 41.809006
* address.extension.extension[+].url = "longitude"
* address.extension.extension[=].valueDecimal = -71.41177
* address.use = #work
* address.type = #both
* address.text = "33 STANIFORD ST, PROVIDENCE, RI 029053105"
* address.line = "33 STANIFORD ST"
* address.city = "PROVIDENCE"
* address.state = "RI"
* address.postalCode = "029053105"
* address.country = "USA"
* contact.purpose = $ContactEntityType#ADMIN "Administrative"
* contact.name.use = #official
* contact.name.text = "Edward Beatty"
* contact.name.family = "Beatty"
* contact.name.given = "Edward"
* contact.telecom.extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-contactpoint-availabletime"
* contact.telecom.extension.extension[0].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #mon
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #tue
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #wed
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #thu
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #fri
* contact.telecom.extension.extension[+].url = "availableStartTime"
* contact.telecom.extension.extension[=].valueTime = "07:00:00"
* contact.telecom.extension.extension[+].url = "availableEndTime"
* contact.telecom.extension.extension[=].valueTime = "18:00:00"
* contact.telecom.system = #phone
* contact.telecom.value = "1-934-216-7826 x8756"
* contact.telecom.use = #work
* contact.address.use = #work
* contact.address.type = #both
* contact.address.text = "33 STANIFORD ST, PROVIDENCE, RI 029053105"
* contact.address.line = "33 STANIFORD ST"
* contact.address.city = "PROVIDENCE"
* contact.address.state = "RI"
* contact.address.postalCode = "029053105"
* contact.address.country = "USA"

Instance: ndh-location-1235731321
InstanceOf: NdhLocation
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:44:22.239+00:00"
* meta.source = "#yfN9tWGDGnomhl8A"
* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Location"
* extension[0].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-accessibility"
* extension[=].valueCodeableConcept = AccessibilityCS#handiaccess "handicap accessible"
* extension[=].valueCodeableConcept.text = "Offers a variety of services and programs for persons with disabilities"
* extension[+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients"
* extension[=].extension.url = "acceptingPatients"
* extension[=].extension.valueCodeableConcept = AcceptingPatientsCS#nopt
* identifier.use = #secondary
* identifier.system = "https://codac-inc.com"
* identifier.value = "main campus"
* identifier.assigner = Reference(ndh-organization-1235731321) "CODAC INC"
* status = #active
* name = "CODAC INC"
* description = "Main campus of CODAC INC"
* telecom[0].extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-contactpoint-availabletime"
* telecom[=].extension.extension.url = "allDay"
* telecom[=].extension.extension.valueBoolean = true
* telecom[=].system = #phone
* telecom[=].value = "808.992.0900"
* telecom[=].use = #work
* telecom[+].extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-contactpoint-availabletime"
* telecom[=].extension.extension.url = "allDay"
* telecom[=].extension.extension.valueBoolean = true
* telecom[=].system = #fax
* telecom[=].value = "967-286-5272 x60089"
* telecom[=].use = #work
* address.use = #work
* address.type = #both
* address.text = "1052 PARK AVE, CRANSTON, RI 02910"
* address.line = "1052 PARK AVE"
* address.city = "CRANSTON"
* address.state = "RI"
* address.postalCode = "02910"
* address.country = "USA"
* position.longitude = -71.444954
* position.latitude = 41.782368
* managingOrganization = Reference(ndh-organization-1235731321) "CODAC INC"
* hoursOfOperation.daysOfWeek[0] = #mon
* hoursOfOperation.daysOfWeek[+] = #tue
* hoursOfOperation.daysOfWeek[+] = #wed
* hoursOfOperation.daysOfWeek[+] = #thu
* hoursOfOperation.daysOfWeek[+] = #fri
* hoursOfOperation.daysOfWeek[+] = #sat
* hoursOfOperation.daysOfWeek[+] = #sun
* hoursOfOperation.allDay = true
* availabilityExceptions = "visiting hours from 6:00 am - 10:00 pm"

Instance: ndh-location-1233319368
InstanceOf: NdhLocation
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:44:22.239+00:00"
* meta.source = "#yfN9tWGDGnomhl8A"
* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Location"
* extension[0].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-accessibility"
* extension[=].valueCodeableConcept = AccessibilityCS#handiaccess "handicap accessible"
* extension[=].valueCodeableConcept.text = "Offers a variety of services and programs for persons with disabilities"
* extension[+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients"
* extension[=].extension.url = "acceptingPatients"
* extension[=].extension.valueCodeableConcept = AcceptingPatientsCS#newpt
* identifier.use = #secondary
* identifier.system = "https://rhode-island-substance-abuse-treatment-inc.com"
* identifier.value = "main campus"
* identifier.assigner = Reference(ndh-organization-1233319368) "RHODE ISLAND SUBSTANCE ABUSE TREATMENT, INC."
* status = #active
* name = "RHODE ISLAND SUBSTANCE ABUSE TREATMENT, INC."
* description = "Main campus of RHODE ISLAND SUBSTANCE ABUSE TREATMENT, INC."
* telecom[0].extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-contactpoint-availabletime"
* telecom[=].extension.extension.url = "allDay"
* telecom[=].extension.extension.valueBoolean = true
* telecom[=].system = #phone
* telecom[=].value = "1-248-018-5386"
* telecom[=].use = #work
* telecom[+].extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-contactpoint-availabletime"
* telecom[=].extension.extension.url = "allDay"
* telecom[=].extension.extension.valueBoolean = true
* telecom[=].system = #fax
* telecom[=].value = "282.639.8629"
* telecom[=].use = #work
* address.use = #work
* address.type = #both
* address.text = "66 PAVILION AVE, PROVIDENCE, RI 029051522"
* address.line = "66 PAVILION AVE"
* address.city = "PROVIDENCE"
* address.state = "RI"
* address.postalCode = "029051522"
* address.country = "USA"
* position.longitude = -71.40409
* position.latitude = 41.79822
* managingOrganization = Reference(ndh-organization-1233319368) "RHODE ISLAND SUBSTANCE ABUSE TREATMENT, INC."
* hoursOfOperation.daysOfWeek[0] = #mon
* hoursOfOperation.daysOfWeek[+] = #tue
* hoursOfOperation.daysOfWeek[+] = #wed
* hoursOfOperation.daysOfWeek[+] = #thu
* hoursOfOperation.daysOfWeek[+] = #fri
* hoursOfOperation.daysOfWeek[+] = #sat
* hoursOfOperation.daysOfWeek[+] = #sun
* hoursOfOperation.allDay = true
* availabilityExceptions = "visiting hours from 6:00 am - 10:00 pm"

Instance: ndh-organization-1233319368
InstanceOf: NdhOrganization
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:45:21.526+00:00"
* meta.source = "#054uQQFhinTrMfW0"
* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Organization"
* identifier.use = #official
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1233319368"
* identifier.assigner.display = "Centers for Medicare and Medicaid Services"
* active = true
* type = OrgTypeCS#prvgrp "Provider Group"
* type.text = "A healthcare provider entity"
* name = "RHODE ISLAND SUBSTANCE ABUSE TREATMENT, INC."
* telecom[0].system = #phone
* telecom[=].value = "1-248-018-5386"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "282.639.8629"
* telecom[=].use = #work
* address.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* address.extension.extension[0].url = "latitude"
* address.extension.extension[=].valueDecimal = 41.79822
* address.extension.extension[+].url = "longitude"
* address.extension.extension[=].valueDecimal = -71.40409
* address.use = #work
* address.type = #both
* address.text = "66 PAVILION AVE, PROVIDENCE, RI 029051522"
* address.line = "66 PAVILION AVE"
* address.city = "PROVIDENCE"
* address.state = "RI"
* address.postalCode = "029051522"
* address.country = "USA"
* contact.purpose = $ContactEntityType#ADMIN "Administrative"
* contact.name.use = #official
* contact.name.text = "Ed Mohr"
* contact.name.family = "Mohr"
* contact.name.given = "Ed"
* contact.telecom.extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-contactpoint-availabletime"
* contact.telecom.extension.extension[0].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #mon
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #tue
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #wed
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #thu
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #fri
* contact.telecom.extension.extension[+].url = "availableStartTime"
* contact.telecom.extension.extension[=].valueTime = "07:00:00"
* contact.telecom.extension.extension[+].url = "availableEndTime"
* contact.telecom.extension.extension[=].valueTime = "18:00:00"
* contact.telecom.system = #phone
* contact.telecom.value = "1-248-018-5386"
* contact.telecom.use = #work
* contact.address.use = #work
* contact.address.type = #both
* contact.address.text = "66 PAVILION AVE, PROVIDENCE, RI 029051522"
* contact.address.line = "66 PAVILION AVE"
* contact.address.city = "PROVIDENCE"
* contact.address.state = "RI"
* contact.address.postalCode = "029051522"
* contact.address.country = "USA"

Instance: ndh-organization-1234521488
InstanceOf: NdhOrganization
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:45:21.526+00:00"
* meta.source = "#054uQQFhinTrMfW0"
* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Organization"
* identifier.use = #official
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1234521488"
* identifier.assigner.display = "Centers for Medicare and Medicaid Services"
* active = true
* type = OrgTypeCS#prvgrp "Provider Group"
* type.text = "A healthcare provider entity"
* name = "RHODE ISLAND SUBSTANCE ABUSE TREATMENT INC"
* telecom[0].system = #phone
* telecom[=].value = "845.237.8591"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "1-745-786-1542"
* telecom[=].use = #work
* address.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* address.extension.extension[0].url = "latitude"
* address.extension.extension[=].valueDecimal = 41.79822
* address.extension.extension[+].url = "longitude"
* address.extension.extension[=].valueDecimal = -71.40409
* address.use = #work
* address.type = #both
* address.text = "66 PAVILION AVE, PROVIDENCE, RI 029051522"
* address.line = "66 PAVILION AVE"
* address.city = "PROVIDENCE"
* address.state = "RI"
* address.postalCode = "029051522"
* address.country = "USA"
* contact.purpose = $ContactEntityType#ADMIN "Administrative"
* contact.name.use = #official
* contact.name.text = "Harlan Gottlieb"
* contact.name.family = "Gottlieb"
* contact.name.given = "Harlan"
* contact.telecom.extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-contactpoint-availabletime"
* contact.telecom.extension.extension[0].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #mon
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #tue
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #wed
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #thu
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #fri
* contact.telecom.extension.extension[+].url = "availableStartTime"
* contact.telecom.extension.extension[=].valueTime = "07:00:00"
* contact.telecom.extension.extension[+].url = "availableEndTime"
* contact.telecom.extension.extension[=].valueTime = "18:00:00"
* contact.telecom.system = #phone
* contact.telecom.value = "845.237.8591"
* contact.telecom.use = #work
* contact.address.use = #work
* contact.address.type = #both
* contact.address.text = "66 PAVILION AVE, PROVIDENCE, RI 029051522"
* contact.address.line = "66 PAVILION AVE"
* contact.address.city = "PROVIDENCE"
* contact.address.state = "RI"
* contact.address.postalCode = "029051522"
* contact.address.country = "USA"

Instance: ndh-location-1234521488
InstanceOf: NdhLocation
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:44:22.239+00:00"
* meta.source = "#yfN9tWGDGnomhl8A"
* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Location"
* extension[0].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-accessibility"
* extension[=].valueCodeableConcept = AccessibilityCS#handiaccess "handicap accessible"
* extension[=].valueCodeableConcept.text = "Offers a variety of services and programs for persons with disabilities"
* extension[+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients"
* extension[=].extension.url = "acceptingPatients"
* extension[=].extension.valueCodeableConcept = AcceptingPatientsCS#existptonly
* identifier.use = #secondary
* identifier.system = "https://rhode-island-substance-abuse-treatment-inc.com"
* identifier.value = "main campus"
* identifier.assigner = Reference(ndh-organization-1234521488) "RHODE ISLAND SUBSTANCE ABUSE TREATMENT INC"
* status = #active
* name = "RHODE ISLAND SUBSTANCE ABUSE TREATMENT INC"
* description = "Main campus of RHODE ISLAND SUBSTANCE ABUSE TREATMENT INC"
* telecom[0].extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-contactpoint-availabletime"
* telecom[=].extension.extension.url = "allDay"
* telecom[=].extension.extension.valueBoolean = true
* telecom[=].system = #phone
* telecom[=].value = "845.237.8591"
* telecom[=].use = #work
* telecom[+].extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-contactpoint-availabletime"
* telecom[=].extension.extension.url = "allDay"
* telecom[=].extension.extension.valueBoolean = true
* telecom[=].system = #fax
* telecom[=].value = "1-745-786-1542"
* telecom[=].use = #work
* address.use = #work
* address.type = #both
* address.text = "66 PAVILION AVE, PROVIDENCE, RI 029051522"
* address.line = "66 PAVILION AVE"
* address.city = "PROVIDENCE"
* address.state = "RI"
* address.postalCode = "029051522"
* address.country = "USA"
* position.longitude = -71.40409
* position.latitude = 41.79822
* managingOrganization = Reference(ndh-organization-1234521488) "RHODE ISLAND SUBSTANCE ABUSE TREATMENT INC"
* hoursOfOperation.daysOfWeek[0] = #mon
* hoursOfOperation.daysOfWeek[+] = #tue
* hoursOfOperation.daysOfWeek[+] = #wed
* hoursOfOperation.daysOfWeek[+] = #thu
* hoursOfOperation.daysOfWeek[+] = #fri
* hoursOfOperation.daysOfWeek[+] = #sat
* hoursOfOperation.daysOfWeek[+] = #sun
* hoursOfOperation.allDay = true
* availabilityExceptions = "visiting hours from 6:00 am - 10:00 pm"

Instance: ndh-organization-1237955733
InstanceOf: NdhOrganization
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:45:21.526+00:00"
* meta.source = "#054uQQFhinTrMfW0"
* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Organization"
* identifier.use = #official
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1237955733"
* identifier.assigner.display = "Centers for Medicare and Medicaid Services"
* active = true
* type = OrgTypeCS#prvgrp "Provider Group"
* type.text = "A healthcare provider entity"
* name = "DISCOVERY HOUSE UTAH"
* telecom[0].system = #phone
* telecom[=].value = "1-328-829-5873 x75788"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "(693) 749-0386"
* telecom[=].use = #work
* address.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* address.extension.extension[0].url = "latitude"
* address.extension.extension[=].valueDecimal = 41.79822
* address.extension.extension[+].url = "longitude"
* address.extension.extension[=].valueDecimal = -71.40409
* address.use = #work
* address.type = #both
* address.text = "66 PAVILION AVE, PROVIDENCE, RI 029051522"
* address.line = "66 PAVILION AVE"
* address.city = "PROVIDENCE"
* address.state = "RI"
* address.postalCode = "029051522"
* address.country = "USA"
* contact.purpose = $ContactEntityType#ADMIN "Administrative"
* contact.name.use = #official
* contact.name.text = "Keiko Nikolaus"
* contact.name.family = "Nikolaus"
* contact.name.given = "Keiko"
* contact.telecom.extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-contactpoint-availabletime"
* contact.telecom.extension.extension[0].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #mon
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #tue
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #wed
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #thu
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #fri
* contact.telecom.extension.extension[+].url = "availableStartTime"
* contact.telecom.extension.extension[=].valueTime = "07:00:00"
* contact.telecom.extension.extension[+].url = "availableEndTime"
* contact.telecom.extension.extension[=].valueTime = "18:00:00"
* contact.telecom.system = #phone
* contact.telecom.value = "1-328-829-5873 x75788"
* contact.telecom.use = #work
* contact.address.use = #work
* contact.address.type = #both
* contact.address.text = "66 PAVILION AVE, PROVIDENCE, RI 029051522"
* contact.address.line = "66 PAVILION AVE"
* contact.address.city = "PROVIDENCE"
* contact.address.state = "RI"
* contact.address.postalCode = "029051522"
* contact.address.country = "USA"

Instance: ndh-location-1230085657
InstanceOf: NdhLocation
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:44:22.239+00:00"
* meta.source = "#yfN9tWGDGnomhl8A"
* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Location"
* extension[0].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-accessibility"
* extension[=].valueCodeableConcept = AccessibilityCS#handiaccess "handicap accessible"
* extension[=].valueCodeableConcept.text = "Offers a variety of services and programs for persons with disabilities"
* extension[+].url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-newpatients"
* extension[=].extension.url = "acceptingPatients"
* extension[=].extension.valueCodeableConcept = AcceptingPatientsCS#existptonly
* identifier.use = #secondary
* identifier.system = "https://bayside-endoscopy-llc.com"
* identifier.value = "main campus"
* identifier.assigner = Reference(ndh-organization-1230085657) "BAYSIDE ENDOSCOPY, LLC"
* status = #active
* name = "BAYSIDE ENDOSCOPY, LLC"
* description = "Main campus of BAYSIDE ENDOSCOPY, LLC"
* telecom[0].extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-contactpoint-availabletime"
* telecom[=].extension.extension.url = "allDay"
* telecom[=].extension.extension.valueBoolean = true
* telecom[=].system = #phone
* telecom[=].value = "1-934-216-7826 x8756"
* telecom[=].use = #work
* telecom[+].extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-contactpoint-availabletime"
* telecom[=].extension.extension.url = "allDay"
* telecom[=].extension.extension.valueBoolean = true
* telecom[=].system = #fax
* telecom[=].value = "1-700-615-4062 x03108"
* telecom[=].use = #work
* address.use = #work
* address.type = #both
* address.text = "33 STANIFORD ST, PROVIDENCE, RI 029053105"
* address.line = "33 STANIFORD ST"
* address.city = "PROVIDENCE"
* address.state = "RI"
* address.postalCode = "029053105"
* address.country = "USA"
* position.longitude = -71.41177
* position.latitude = 41.809006
* managingOrganization = Reference(ndh-organization-1230085657) "BAYSIDE ENDOSCOPY, LLC"
* hoursOfOperation.daysOfWeek[0] = #mon
* hoursOfOperation.daysOfWeek[+] = #tue
* hoursOfOperation.daysOfWeek[+] = #wed
* hoursOfOperation.daysOfWeek[+] = #thu
* hoursOfOperation.daysOfWeek[+] = #fri
* hoursOfOperation.daysOfWeek[+] = #sat
* hoursOfOperation.daysOfWeek[+] = #sun
* hoursOfOperation.allDay = true
* availabilityExceptions = "visiting hours from 6:00 am - 10:00 pm"

Instance: ndh-organization-1235731321
InstanceOf: NdhOrganization
Usage: #inline
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:45:21.526+00:00"
* meta.source = "#054uQQFhinTrMfW0"
* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Organization"
* identifier.use = #official
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1235731321"
* identifier.assigner.display = "Centers for Medicare and Medicaid Services"
* active = true
* type = OrgTypeCS#prvgrp "Provider Group"
* type.text = "A healthcare provider entity"
* name = "CODAC INC"
* telecom[0].system = #phone
* telecom[=].value = "808.992.0900"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "967-286-5272 x60089"
* telecom[=].use = #work
* address.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* address.extension.extension[0].url = "latitude"
* address.extension.extension[=].valueDecimal = 41.782368
* address.extension.extension[+].url = "longitude"
* address.extension.extension[=].valueDecimal = -71.444954
* address.use = #work
* address.type = #both
* address.text = "1052 PARK AVE, CRANSTON, RI 02910"
* address.line = "1052 PARK AVE"
* address.city = "CRANSTON"
* address.state = "RI"
* address.postalCode = "02910"
* address.country = "USA"
* contact.purpose = $ContactEntityType#ADMIN "Administrative"
* contact.name.use = #official
* contact.name.text = "Berniece Kirlin"
* contact.name.family = "Kirlin"
* contact.name.given = "Berniece"
* contact.telecom.extension.url = "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-contactpoint-availabletime"
* contact.telecom.extension.extension[0].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #mon
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #tue
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #wed
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #thu
* contact.telecom.extension.extension[+].url = "daysOfWeek"
* contact.telecom.extension.extension[=].valueCode = #fri
* contact.telecom.extension.extension[+].url = "availableStartTime"
* contact.telecom.extension.extension[=].valueTime = "07:00:00"
* contact.telecom.extension.extension[+].url = "availableEndTime"
* contact.telecom.extension.extension[=].valueTime = "18:00:00"
* contact.telecom.system = #phone
* contact.telecom.value = "808.992.0900"
* contact.telecom.use = #work
* contact.address.use = #work
* contact.address.type = #both
* contact.address.text = "1052 PARK AVE, CRANSTON, RI 02910"
* contact.address.line = "1052 PARK AVE"
* contact.address.city = "CRANSTON"
* contact.address.state = "RI"
* contact.address.postalCode = "02910"
* contact.address.country = "USA"