// The following is a NamingSystem for a new Federated Payer Identifier (FPI).
Instance: FederatedPayerIdentifier
InstanceOf: NamingSystem
Title: "Federated Payer Identifier"
Description: "A unique identifier (UUID) for a payer that is created by the Payer and federated across multiple systems."
Usage: #definition
* name = "FederatedPayerIdentifier"
* status = #active
* kind = #identifier
* date = "2026-07-01"
* publisher = "None"
* contact[+].name = "CMS"
* contact[+].telecom[+].system = #url
* contact[+].telecom[+].value = "https://www.cms.gov"
* responsible = "CMS"
* description = "A unique identifier (UUID) for a payer that is created by the Payer and federated across multiple systems."
//* useContext[+].
* jurisdiction[+].coding = http://terminology.hl7.org/CodeSystem/iso3166-1#US
* usage = "This unique payer identifier is used as a federated identifier across multiple systems to identify a payer."
* uniqueId[+].type = #oid
* uniqueId[=].value = "2.16.840.1.113883.4.642.40.43.31.1" // assigned by IG Publisher to OID for this IG

Instance: SamplePayer
InstanceOf: NdhOrganization
Title: "Sample Payer Organization"
Description: "Sample Payer Organization with an FPI"
Usage: #example
* meta.lastUpdated = "2026-07-01T13:26:22.0314215+00:00"
* language = #en-US
* active = true
* name = "Sample of Medicare Payer"
* type = $OrgTypeCS#pay "Payer"
//* extension[qualification][0].extension[code].valueCodeableConcept =   $NUCCProviderTaxonomy#3336C0003X "Community/Retail Pharmacy"
//* extension[qualification][=].extension[status].valueCode = $CredentialStatusCS#active
//* alias[0].extension[org-alias-type].valueCodeableConcept = $OrgAliasTypeCS#historical
//* alias[=].extension[org-alias-period].valuePeriod.start = 2011-05-23
//* alias[=].extension[org-alias-period].valuePeriod.end = 2011-05-27
//* alias[=].value = "Acme History"
//* extension[insurance-reference][0].valueReference = Reference(AcmeQHPBronze)
* extension[insuranceplan].valueReference = Reference(AcmeQHPBronze)
//* extension[endpoint].valueReference = Reference(AcmeOfCTPortalEndpoint) 
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[+].system = #url
* telecom[=].value = "https://www.example.com"
* telecom[=].rank = 1
* address.line[0] = "456 Main Street"
* address.city = "Norwalk"
* address.state = "CT"
* address.postalCode = "00014-1234"
//* extension[org-description].valueString = "Acme of CT is a leading provider of health and other insurance products."
* identifier[FPI].system = Canonical(FederatedPayerIdentifier)
* identifier[FPI].value = "123e4567-e89b-12d3-a456-426614174000"
//* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
//* identifier[CLIA].system = "urn:oid:2.16.840.1.113883.4.7"
//* identifier[NAIC].system = "urn:oid:2.16.840.1.113883.6.300"
