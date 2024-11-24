Instance: Organization-Social-Towson-Food
InstanceOf: NdhNdApiOrganization
Description: "A food dispensary entity"
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:45:21.526+00:00"
//* meta.source = "#054uQQFhinTrMfW0"
* meta.profile = Canonical(NdhNdApiOrganization)
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[NPI].use = #official
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value = "1407215734"
* identifier[NPI].assigner.display = "Centers for Medicare and Medicaid Services"
* identifier[NPI].extension[identifier-status].valueCode = $CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "Organization-Social-Towson-Food"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* active = true
* type = OrgTypeCS#prvgrp "Provider Group"
* type.text = "A food dispensary entity"
* name = "Hope INC"
* telecom[0].system = #phone
* telecom[=].value = "410.237.8591"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "1-443-786-1542"
* telecom[=].use = #work
* address.extension[geolocation].extension[latitude].valueDecimal = 39.33634
* address.extension[geolocation].extension[longitude].valueDecimal = -76.53353
* address.use = #work
* address.type = #both
* address.text = "4803 VALLEY VIEW AVE, BALTIMORE, MD 21206"
* address.line = "4803 VALLEY VIEW AVE"
* address.city = "BALTIMORE"
* address.state = "MD"
* address.postalCode = "21206"
* address.country = "USA"
* contact.purpose = $ContactEntityType#ADMIN "Administrative"
* contact.name.use = #official
* contact.name.text = "HERROL BLAKE"
* contact.name.family = "Blake"
* contact.name.given = "Herrol"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon "Monday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #tue "Tuesday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #wed "Wednesday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #thu "Thursday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #fri "Friday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #sat "Saturday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #sun "Sunday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[availableStartTime][0].valueTime = "07:00:00"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[availableEndTime][0].valueTime = "18:00:00"
* contact.telecom.system = #phone
* contact.telecom.value = "410.237.8591"
* contact.telecom.use = #work
* contact.address.use = #work
* contact.address.type = #both
* contact.address.text = "4803 VALLEY VIEW AVE, BALTIMORE, MD 21206"
* contact.address.line = "4803 VALLEY VIEW AVE"
* contact.address.city = "BALTIMORE"
* contact.address.state = "MD"
* contact.address.postalCode = "21206"
* contact.address.country = "USA"


Instance: Organization-Social-Hope-CBO
InstanceOf: NdhNdApiOrganization
Description: "A food dispensary entity"
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:45:21.526+00:00"
//* meta.source = "#054uQQFhinTrMfW0"
* meta.profile = Canonical(NdhNdApiOrganization)
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
//* identifier[NPI].use = #official
//* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
//* identifier[NPI].value = "1234521488"
//* identifier[NPI].assigner.display = "Centers for Medicare and Medicaid Services"
//* identifier[NPI].extension[identifier-status].valueCode = $CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "Organization-Social-Hope-CBO"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* active = true
* type = OrgTypeCS#prvgrp "Provider Group"
* type.text = "A food dispensary entity"
* name = "Hope INC"
* telecom[0].system = #phone
* telecom[=].value = "410.237.8591"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "1-443-786-1542"
* telecom[=].use = #work
* address.extension[geolocation].extension[latitude].valueDecimal = 39.33634
* address.extension[geolocation].extension[longitude].valueDecimal = -76.53353
* address.use = #work
* address.type = #both
* address.text = "4803 VALLEY VIEW AVE, BALTIMORE, MD 21206"
* address.line = "4803 VALLEY VIEW AVE"
* address.city = "BALTIMORE"
* address.state = "MD"
* address.postalCode = "21206"
* address.country = "USA"
* contact.purpose = $ContactEntityType#ADMIN "Administrative"
* contact.name.use = #official
* contact.name.text = "HERROL BLAKE"
* contact.name.family = "Blake"
* contact.name.given = "Herrol"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][0].valueCode = #mon "Monday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #tue "Tuesday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #wed "Wednesday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #thu "Thursday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #fri "Friday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #sat "Saturday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[daysOfWeek][+].valueCode = #sun "Sunday"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[availableStartTime][0].valueTime = "07:00:00"
* contact[0].telecom[0].extension[contactpoint-availabletime][0].extension[availableEndTime][0].valueTime = "18:00:00"
* contact.telecom.system = #phone
* contact.telecom.value = "410.237.8591"
* contact.telecom.use = #work
* contact.address.use = #work
* contact.address.type = #both
* contact.address.text = "4803 VALLEY VIEW AVE, BALTIMORE, MD 21206"
* contact.address.line = "4803 VALLEY VIEW AVE"
* contact.address.city = "BALTIMORE"
* contact.address.state = "MD"
* contact.address.postalCode = "21206"
* contact.address.country = "USA"

Instance: HealthcareService-Social-Hope-CBO
InstanceOf: NdhNdApiHealthcareService
Description: "HOPE INC Healthcare Service"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-06-29T22:45:21.526+00:00"
//* meta.source = "#054uQQFhinTrMfW0"
* meta.profile = Canonical(NdhNdApiHealthcareService)
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* extension[social-service-requirement].extension[birthsex].valueCode = $V3AdministrativeGender#F "Female"
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "HealthcareService-Social-Hope-CBO"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* extension[social-service-requirement].extension[age-range].valueRange.low = 18 'a' "years"
* extension[social-service-requirement].extension[age-range].valueRange.high = 65 'a' "years"
* active = true
* providedBy = Reference(Organization/Organization-Social-Hope-CBO) "HOPE INC"
* category = HealthcareServiceCategoryCS#food "Food"
* category.text = "group"
* location = Reference(Location/Location-Social-Hope-CBO) "HOPE INC"
* name = "HOPE INC"
* telecom[0].system = #phone
* telecom[=].value = "410.237.8591"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "1-443-786-1542"
* telecom[=].use = #work
* appointmentRequired = false
* availableTime.daysOfWeek[0] = #mon
* availableTime.daysOfWeek[+] = #tue
* availableTime.daysOfWeek[+] = #wed
* availableTime.daysOfWeek[+] = #thu
* availableTime.daysOfWeek[+] = #fri
* availableTime.daysOfWeek[+] = #sat
* availableTime.daysOfWeek[+] = #sun
* availableTime.allDay = false
* availableTime.availableStartTime = "06:00:00"
* availableTime.availableEndTime = "18:00:00"
* extension[newpatients].extension[acceptingPatients].valueCodeableConcept = $NdhAcceptingPatientsCS#existptonly
* extension[newpatients].extension[fromNetwork].valueReference = Reference(AcmeofCTStdNet)
* extension[deliverymethod].extension[deliveryMethodtype].valueCodeableConcept = $DeliveryMethodCS#physical "Physical"


Instance: HealthcareService-Social-Towson-Food
InstanceOf: NdhNdApiHealthcareService
Description: "Towson Healthcare Service"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2022-12-20T19:28:24.671+00:00"
//* meta.source = "#5W4kw8uMs4mA7G1S"
* meta.profile = Canonical(NdhNdApiHealthcareService)
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "HealthcareService-Social-Towson-Food"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* extension[newpatients].extension[acceptingPatients].valueCodeableConcept = $NdhAcceptingPatientsCS#existptonly
* extension[newpatients].extension[fromNetwork].valueReference = Reference(AcmeofCTStdNet)
* extension[deliverymethod].extension[deliveryMethodtype].valueCodeableConcept = $DeliveryMethodCS#physical "Physical"
* extension[social-service-requirement].extension[age-group].valueCodeableConcept = AgeGroupCS#children "Children"
* active = true
* providedBy = Reference(Organization/Organization-Social-Towson-Food) "Towson Food INC"
* category = HealthcareServiceCategoryCS#food "Food"
* category.text = "Food"
* type[0] = $ServiceTypeCS#345 "Food Vouchers"
* type[+] = $ServiceTypeCS#548 "Food Relief/Food/Meals"
* type[+] = $ServiceTypeCS#344 "Food"
* location = Reference(Location/Location-Social-Towson-Food) "Towson Food INC"
* name = "Towson Food INC"
* telecom[0].system = #phone
* telecom[=].value = "410.237.8592"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "1-443-786-1543"
* telecom[=].use = #work
* appointmentRequired = false
* availableTime.daysOfWeek[0] = #mon
* availableTime.daysOfWeek[+] = #tue
* availableTime.daysOfWeek[+] = #wed
* availableTime.daysOfWeek[+] = #thu
* availableTime.daysOfWeek[+] = #fri
* availableTime.daysOfWeek[+] = #sat
* availableTime.daysOfWeek[+] = #sun
* availableTime.allDay = false
* availableTime.availableStartTime = "08:00:00"
* availableTime.availableEndTime = "18:00:00"
* extension[social-service-requirement].extension[age-group].valueCodeableConcept = AgeGroupCS#adults "Adults"

Instance: Location-Social-Towson-Food
InstanceOf: NdhNdApiLocation
Description: "Towson Food INC"
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:44:22.239+00:00"
//* meta.source = "#yfN9tWGDGnomhl8A"
* meta.profile = Canonical(NdhNdApiLocation)
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[0].use = #secondary
* identifier[=].system = "https://hope-dispensary-of-greater-bridgeport.com"
* identifier[=].value = "main campus"
* identifier[=].assigner = Reference(Organization/Organization-Social-Towson-Food) "TOWSON FOOD DISPENSARY"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "Location-Social-Towson-Food"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* status = #active
* name = "TOWSON FOOD DISPENSARY OF GREATER BALTIMORE COUNTY"
* description = "Main campus of TOWSON FOOD DISPENSARY OF GREATER BALTIMORE COUNTY"
* type = $V3RoleCode#CSC "community service center"
* type.text = "Community Service Center"
* telecom[0].extension[contactpoint-availabletime][0].extension[allDay].valueBoolean = true
* telecom[=].system = #phone
* telecom[=].value = "410.237.8592"
* telecom[=].use = #work
* telecom[+].extension[contactpoint-availabletime][0].extension[allDay].valueBoolean = true
* telecom[=].system = #fax
* telecom[=].value = "1-443-786-1543"
* telecom[=].use = #work
* address.use = #work
* address.type = #both
* address.text = "521 E Joppa Rd, Towson, MD 21286"
* address.line = "521 E Joppa Rd"
* address.city = "TOWSON"
* address.state = "MD"
* address.postalCode = "21286"
* address.country = "USA"
* position.longitude = -76.5754
* position.latitude = 39.39259
* managingOrganization = Reference(Organization/Organization-Social-Towson-Food) "TOWSON FOOD DISPENSARY"
* hoursOfOperation.daysOfWeek[0] = #mon
* hoursOfOperation.daysOfWeek[+] = #tue
* hoursOfOperation.daysOfWeek[+] = #wed
* hoursOfOperation.daysOfWeek[+] = #thu
* hoursOfOperation.daysOfWeek[+] = #fri
* hoursOfOperation.daysOfWeek[+] = #sat
* hoursOfOperation.daysOfWeek[+] = #sun
* hoursOfOperation.allDay = true
* availabilityExceptions = "visiting hours from 6:00 am - 6:00 pm"



Instance: Location-Social-Hope-CBO
InstanceOf: NdhNdApiLocation
Description: "HOPE FOOD DISPENSARY"
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2022-12-20T22:44:22.239+00:00"
//* meta.source = "#yfN9tWGDGnomhl8A"
//* meta.profile = "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Location"
* meta.profile = Canonical(NdhNdApiLocation)
* extension[verification-status].valueCodeableConcept = NdhVerificationStatusCS#complete "Complete"
* identifier[0].use = #secondary
* identifier[=].system = "https://hope-dispensary-of-greater-bridgeport.com"
* identifier[=].value = "main campus"
* identifier[=].assigner = Reference(Organization/Organization-Social-Hope-CBO) "HOPE FOOD DISPENSARY"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* identifier[+].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "Location-Social-Hope-CBO"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* status = #active
* name = "HOPE FOOD DISPENSARY OF GREATER BALTIMORE"
* description = "Main campus of HOPE FOOD DISPENSARY OF GREATER BALTIMORE"
* type = $V3RoleCode#CSC "community service center"
* type.text = "Community Service Center"
* telecom[0].extension[contactpoint-availabletime][0].extension[allDay].valueBoolean = true
* telecom[=].system = #phone
* telecom[=].value = "410.237.8591"
* telecom[=].use = #work
* telecom[+].extension[contactpoint-availabletime][0].extension[allDay].valueBoolean = true
* telecom[=].system = #fax
* telecom[=].value = "1-443-786-1542"
* telecom[=].use = #work
* address.use = #work
* address.type = #both
* address.text = "4803 VALLEY VIEW AVE, BALTIMORE, MD 21206"
* address.line = "4803 VALLEY VIEW AVE"
* address.city = "BALTIMORE"
* address.state = "MD"
* address.postalCode = "21206"
* address.country = "USA"
* position.longitude = -76.53353
* position.latitude = 39.33634
* managingOrganization = Reference(Organization/Organization-Social-Hope-CBO) "HOPE FOOD DISPENSARY"
* hoursOfOperation.daysOfWeek[0] = #mon
* hoursOfOperation.daysOfWeek[+] = #tue
* hoursOfOperation.daysOfWeek[+] = #wed
* hoursOfOperation.daysOfWeek[+] = #thu
* hoursOfOperation.daysOfWeek[+] = #fri
* hoursOfOperation.daysOfWeek[+] = #sat
* hoursOfOperation.daysOfWeek[+] = #sun
* hoursOfOperation.allDay = true
* availabilityExceptions = "visiting hours from 6:00 am - 6:00 pm"

