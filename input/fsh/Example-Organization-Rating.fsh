
Instance: ExampleHospitalRating
InstanceOf: NdhOrganization
Title: "Example Rated Hospital"
Description: "Example Hospital organization with ratings"
Usage: #example
* extension[rating][0].extension[ratingType].valueCodeableConcept.coding[0] = NdhExampleRatingTypeCS#cms-care-compare-hospital-overall
* extension[rating][=].extension[ratingValue].valueQuantity.value = 4
* extension[rating][=].extension[ratingValue].valueQuantity.unit = "stars"

* extension[rating][=].extension[rating-details][0].extension[ratingSystem].valueUrl = "https://www.medicare.example.com/care-compare/"
* extension[rating][=].extension[rating-details][=].extension[ratingType].valueUrl = "https://www.medicare.example.com/care-compare/resources/hospital/overall-star-rating/"
* extension[rating][=].extension[rating-details][=].extension[ratingValue].valueString = "Composite of multiple domains/measures per CMS methodology"

* extension[rating][=].extension[rating-details][+].extension[ratingSystem].valueUrl = "https://www.medicare.example.com/care-compare/"
* extension[rating][=].extension[rating-details][=].extension[ratingType].valueUrl = "http://example.com/cms-care-compare/rating-component/safety"
* extension[rating][=].extension[rating-details][=].extension[ratingValue].valueQuantity.value = 5
* extension[rating][=].extension[rating-details][=].extension[ratingValue].valueQuantity.unit = "stars"

* extension[rating][=].extension[rating-details][+].extension[ratingSystem].valueUrl = "https://www.medicare.example.com/care-compare/"
* extension[rating][=].extension[rating-details][=].extension[ratingType].valueUrl = "http://example.com/cms-care-compare/rating-component/readmission"
* extension[rating][=].extension[rating-details][=].extension[ratingValue].valueQuantity.value = 4
* extension[rating][=].extension[rating-details][=].extension[ratingValue].valueQuantity.unit = "stars"

* extension[rating][=].extension[rating-details][+].extension[ratingSystem].valueUrl = "https://www.medicare.example.com/care-compare/"
* extension[rating][=].extension[rating-details][=].extension[ratingType].valueUrl = "http://example.com/cms-care-compare/rating-component/patient-experience"
* extension[rating][=].extension[rating-details][=].extension[ratingValue].valueQuantity.value = 4
* extension[rating][=].extension[rating-details][=].extension[ratingValue].valueQuantity.unit = "stars"
* meta.lastUpdated = "2024-06-01T12:00:00.000Z"
* language = #en-US
* active = true
* name = "Example Rated Hospital"
* type = $NdhOrgTypeCS#fac "Facility"
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[+].system = #url
* telecom[=].value = "https://www.examplehospital.com"
* telecom[=].rank = 1
* address.line[0] = "123 Main Street"
* address.city = "Anytown"
* address.state = "CT"
* address.postalCode = "00014-1234"
* contact.telecom[0].system = #phone
* contact.telecom[=].value = "(111)-222-3333"
* contact.telecom[=].rank = 1


