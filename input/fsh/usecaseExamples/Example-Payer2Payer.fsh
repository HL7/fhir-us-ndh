/*
Instance: careevolution
InstanceOf: NdhPnLdApiOrganization
Description: "This is a test payer organization for the MTLS example. It is a duplicate of the careevolution organization,"
Usage: #example
* meta.profile = Canonical(NdhPnLdApiOrganization)
* meta.lastUpdated = "2022-07-04T15:00:00.000Z"
* identifier[0].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "careevolution"
* active = true
* type = $OrgTypeCS #pay "Payer"
* name = "CareEvolution"
* address.line[0] = "100 Main Street"
* address.city = "Norwalk"
* address.state = "CT"
* address.postalCode = "00014-2345"
// endpoint = Reference(careevolution)
*/


//network and insuranceplan may not have need to use endpoints
Instance: diamondonyxhealth2
InstanceOf: NdhPnLdApiOrganization
Description: "This is a test organization for the MTLS example"
Usage: #example
* meta.lastUpdated = "2022-07-04T15:00:00.000Z"
* meta.profile = Canonical(NdhPnLdApiOrganization)
* identifier[0].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "diamondonyxhealth2"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* identifier[+].system = "https://diamond.2.onyxhealth.io"
* identifier[=].value = "diamondonyxhealth2"
* type = $OrgTypeCS#pay "Payer"
//* partOf = Reference(careevolution)
* name = "DiamondOnyxHealth"
* telecom.system = #url
* telecom.value = "https://diamond.2.onyxhealth.io"
* address.line[0] = "100 Main Street"
* address.city = "Norwalk"
* address.state = "CT"
* address.postalCode = "00014-2345"
* endpoint = Reference(Endpoint/diamond-mtls-endpoint2)

//payer organization has endpoints to support payer2payer communication
//the use case is 1. new payer to request member data from old payer. 2. two payers to keep synchoronized with each other for benetifit coordination for example
//a member participates in both medicare and medicaid.  the two payers need to keep synchronized with each other to coordinate benefits
//Three Certificates are used for payer2payer endpoints
//1. public certificate (leaf certificate) is the identity certificate for endpoint it tells who you are
//2. signed artifact (intermediate cert) is the certificate that signs the public certificate. which could be used to trace back to the root certificate
//3. mutual TLS certificate the certificate issued by the mutual TLS trust framework CA. it is used to verify the identity of the endpoint to participate in the mutual 
//TLS trust network. In order to get the mutual TLS certificate, the endpoint needs to have identity certificate.
Instance: diamond-mtls-endpoint2
InstanceOf: NdhPnLdApiEndpoint
Description: "This is a test endpoint for the MTLS example"
Usage: #example
* meta.lastUpdated = "2022-07-04T15:00:00.000Z"
* meta.profile = Canonical(NdhPnLdApiEndpoint)
* identifier[0].system = "http://www.ndh.org/identifiers"
* identifier[=].value = "diamond-mtls-endpoint2"
* identifier[=].extension[identifier-status].valueCode = $CredentialStatusCS#active
* identifier[+].system = "https://diamond.2.onyxhealth.io"
* identifier[=].value = "diamond-mtls-endpoint2"
* extension[testing-certification].extension[method].valueCodeableConcept = NdhEndpointTestingMethodCS#attestation
* status = #active
* name = "DiamondOnyxHealth"
* extension[endpoint-usecase][0].extension[endpointUsecasetype].valueCodeableConcept = NdhFhirEndpointUseCaseCS#payerToPayer "Payer to Payer"
* extension[trust-framework][0].extension[trustFrameworkType].valueCodeableConcept = NdhTrustFrameworkTypeCS#PayerToPayer "Payer to Payer Trust Network"
* extension[trust-framework][=].extension[signedArtifact].valueBase64Binary = "ewogICAibGlicmFyeSIgOiB7CiAgICAgICJhbm5vdGF0aW9uIiA6IFsgewogICAgICAgICAidHJhbnNsYXRvck9wdGlvbnMiIDogIiIsCiAgICAgICAgICJ0eXBlIiA6ICJDcWxUb0VsbUluZm8iCiAgICAgIH0gXSwKICAgICAgImlkZW50aWZpZXIiIDogewogICAgICAgICAiaWQiIDogIlRlc3RpbmdDcWxMaWJyYXJ5IiwKICAgICAgICAgInZlcnNpb24iIDogIjEuMC4wIgogICAgICB9LAogICAgICAic2NoZW1hSWRlbnRpZmllciIgOiB7CiAgICAgICAgICJpZCIgOiAidXJuOmhsNy1vcmc6ZWxtIiwKICAgICAgICAgInZlcnNpb24iIDogInIxIgogICAgICB9LAogICAgICAidXNpbmdzIiA6IHsKICAgICAgICAgImRlZiIgOiBbIHsKICAgICAgICAgICAgImxvY2FsSWRlbnRpZmllciIgOiAiU3lzdGVtIiwKICAgICAgICAgICAgInVyaSIgOiAidXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxIgogICAgICAgICB9LCB7CiAgICAgICAgICAgICJsb2NhbElkZW50aWZpZXIiIDogIkZISVIiLAogICAgICAgICAgICAidXJpIiA6ICJodHRwOi8vaGw3Lm9yZy9maGlyIiwKICAgICAgICAgICAgInZlcnNpb24iIDogIjQuMC4xIgogICAgICAgICB9IF0KICAgICAgfSwKICAgICAgImluY2x1ZGVzIiA6IHsKICAgICAgICAgImRlZiIgOiBbIHsKICAgICAgICAgICAgImxvY2FsSWRlbnRpZmllciIgOiAiRkhJUkhlbHBlcnMiLAogICAgICAgICAgICAicGF0aCIgOiAiRkhJUkhlbHBlcnMiLAogICAgICAgICAgICAidmVyc2lvbiIgOiAiNC4wLjEiCiAgICAgICAgIH0gXQogICAgICB9LAogICAgICAic3RhdGVtZW50cyIgOiB7CiAgICAgICAgICJkZWYiIDogWyB7CiAgICAgICAgICAgICJuYW1lIiA6ICJSZXR1cm5zVHJ1ZSIsCiAgICAgICAgICAgICJjb250ZXh0IiA6ICJQYXRpZW50IiwKICAgICAgICAgICAgImFjY2Vzc0xldmVsIiA6ICJQdWJsaWMiLAogICAgICAgICAgICAiZXhwcmVzc2lvbiIgOiB7CiAgICAgICAgICAgICAgICJ2YWx1ZVR5cGUiIDogInt1cm46aGw3LW9yZzplbG0tdHlwZXM6cjF9Qm9vbGVhbiIsCiAgICAgICAgICAgICAgICJ2YWx1ZSIgOiAidHJ1ZSIsCiAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMaXRlcmFsIgogICAgICAgICAgICB9CiAgICAgICAgIH0sIHsKICAgICAgICAgICAgIm5hbWUiIDogIlJldHVybnNGYWxzZSIsCiAgICAgICAgICAgICJjb250ZXh0IiA6ICJQYXRpZW50IiwKICAgICAgICAgICAgImFjY2Vzc0xldmVsIiA6ICJQdWJsaWMiLAogICAgICAgICAgICAiZXhwcmVzc2lvbiIgOiB7CiAgICAgICAgICAgICAgICJ2YWx1ZVR5cGUiIDogInt1cm46aGw3LW9yZzplbG0tdHlwZXM6cjF9Qm9vbGVhbiIsCiAgICAgICAgICAgICAgICJ2YWx1ZSIgOiAiZmFsc2UiLAogICAgICAgICAgICAgICAidHlwZSIgOiAiTGl0ZXJhbCIKICAgICAgICAgICAgfQogICAgICAgICB9LCB7CiAgICAgICAgICAgICJuYW1lIiA6ICJBbHNvUmV0dXJuc1RydWUiLAogICAgICAgICAgICAiY29udGV4dCIgOiAiUGF0aWVudCIsCiAgICAgICAgICAgICJhY2Nlc3NMZXZlbCIgOiAiUHVibGljIiwKICAgICAgICAgICAgImV4cHJlc3Npb24iIDogewogICAgICAgICAgICAgICAidmFsdWVUeXBlIiA6ICJ7dXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxfUJvb2xlYW4iLAogICAgICAgICAgICAgICAidmFsdWUiIDogInRydWUiLAogICAgICAgICAgICAgICAidHlwZSIgOiAiTGl0ZXJhbCIKICAgICAgICAgICAgfQogICAgICAgICB9LCB7CiAgICAgICAgICAgICJuYW1lIiA6ICJBbm90aGVyVHJ1ZVN0YXRlbWVudCIsCiAgICAgICAgICAgICJjb250ZXh0IiA6ICJQYXRpZW50IiwKICAgICAgICAgICAgImFjY2Vzc0xldmVsIiA6ICJQdWJsaWMiLAogICAgICAgICAgICAiZXhwcmVzc2lvbiIgOiB7CiAgICAgICAgICAgICAgICJ2YWx1ZVR5cGUiIDogInt1cm46aGw3LW9yZzplbG0tdHlwZXM6cjF9Qm9vbGVhbiIsCiAgICAgICAgICAgICAgICJ2YWx1ZSIgOiAidHJ1ZSIsCiAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMaXRlcmFsIgogICAgICAgICAgICB9CiAgICAgICAgIH0sIHsKICAgICAgICAgICAgIm5hbWUiIDogIkJ1dElBbUZhbHNlIiwKICAgICAgICAgICAgImNvbnRleHQiIDogIlBhdGllbnQiLAogICAgICAgICAgICAiYWNjZXNzTGV2ZWwiIDogIlB1YmxpYyIsCiAgICAgICAgICAgICJleHByZXNzaW9uIiA6IHsKICAgICAgICAgICAgICAgInZhbHVlVHlwZSIgOiAie3VybjpobDctb3JnOmVsbS10eXBlczpyMX1Cb29sZWFuIiwKICAgICAgICAgICAgICAgInZhbHVlIiA6ICJmYWxzZSIsCiAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMaXRlcmFsIgogICAgICAgICAgICB9CiAgICAgICAgIH0sIHsKICAgICAgICAgICAgIm5hbWUiIDogIkFsc29GYWxzZUhlcmUiLAogICAgICAgICAgICAiY29udGV4dCIgOiAiUGF0aWVudCIsCiAgICAgICAgICAgICJhY2Nlc3NMZXZlbCIgOiAiUHVibGljIiwKICAgICAgICAgICAgImV4cHJlc3Npb24iIDogewogICAgICAgICAgICAgICAidmFsdWVUeXBlIiA6ICJ7dXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxfUJvb2xlYW4iLAogICAgICAgICAgICAgICAidmFsdWUiIDogImZhbHNlIiwKICAgICAgICAgICAgICAgInR5cGUiIDogIkxpdGVyYWwiCiAgICAgICAgICAgIH0KICAgICAgICAgfSwgewogICAgICAgICAgICAibmFtZSIgOiAiTWF0aENhbGN1bGF0aW9uIiwKICAgICAgICAgICAgImNvbnRleHQiIDogIlBhdGllbnQiLAogICAgICAgICAgICAiYWNjZXNzTGV2ZWwiIDogIlB1YmxpYyIsCiAgICAgICAgICAgICJleHByZXNzaW9uIiA6IHsKICAgICAgICAgICAgICAgInR5cGUiIDogIkFkZCIsCiAgICAgICAgICAgICAgICJvcGVyYW5kIiA6IFsgewogICAgICAgICAgICAgICAgICAidmFsdWVUeXBlIiA6ICJ7dXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxfURlY2ltYWwiLAogICAgICAgICAgICAgICAgICAidmFsdWUiIDogIjQwLjAiLAogICAgICAgICAgICAgICAgICAidHlwZSIgOiAiTGl0ZXJhbCIKICAgICAgICAgICAgICAgfSwgewogICAgICAgICAgICAgICAgICAidmFsdWVUeXBlIiA6ICJ7dXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxfURlY2ltYWwiLAogICAgICAgICAgICAgICAgICAidmFsdWUiIDogIjIuMCIsCiAgICAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMaXRlcmFsIgogICAgICAgICAgICAgICB9IF0KICAgICAgICAgICAgfQogICAgICAgICB9LCB7CiAgICAgICAgICAgICJuYW1lIiA6ICJUcnVlTWF0aFN0YXRlbWVudCIsCiAgICAgICAgICAgICJjb250ZXh0IiA6ICJQYXRpZW50IiwKICAgICAgICAgICAgImFjY2Vzc0xldmVsIiA6ICJQdWJsaWMiLAogICAgICAgICAgICAiZXhwcmVzc2lvbiIgOiB7CiAgICAgICAgICAgICAgICJ0eXBlIiA6ICJHcmVhdGVyIiwKICAgICAgICAgICAgICAgIm9wZXJhbmQiIDogWyB7CiAgICAgICAgICAgICAgICAgICJuYW1lIiA6ICJNYXRoQ2FsY3VsYXRpb24iLAogICAgICAgICAgICAgICAgICAidHlwZSIgOiAiRXhwcmVzc2lvblJlZiIKICAgICAgICAgICAgICAgfSwgewogICAgICAgICAgICAgICAgICAidmFsdWVUeXBlIiA6ICJ7dXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxfURlY2ltYWwiLAogICAgICAgICAgICAgICAgICAidmFsdWUiIDogIjAuMCIsCiAgICAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMaXRlcmFsIgogICAgICAgICAgICAgICB9IF0KICAgICAgICAgICAgfQogICAgICAgICB9LCB7CiAgICAgICAgICAgICJuYW1lIiA6ICJGYWxzZU1hdGhTdGF0ZW1lbnQiLAogICAgICAgICAgICAiY29udGV4dCIgOiAiUGF0aWVudCIsCiAgICAgICAgICAgICJhY2Nlc3NMZXZlbCIgOiAiUHVibGljIiwKICAgICAgICAgICAgImV4cHJlc3Npb24iIDogewogICAgICAgICAgICAgICAidHlwZSIgOiAiTGVzcyIsCiAgICAgICAgICAgICAgICJvcGVyYW5kIiA6IFsgewogICAgICAgICAgICAgICAgICAibmFtZSIgOiAiTWF0aENhbGN1bGF0aW9uIiwKICAgICAgICAgICAgICAgICAgInR5cGUiIDogIkV4cHJlc3Npb25SZWYiCiAgICAgICAgICAgICAgIH0sIHsKICAgICAgICAgICAgICAgICAgInZhbHVlVHlwZSIgOiAie3VybjpobDctb3JnOmVsbS10eXBlczpyMX1EZWNpbWFsIiwKICAgICAgICAgICAgICAgICAgInZhbHVlIiA6ICIwLjAiLAogICAgICAgICAgICAgICAgICAidHlwZSIgOiAiTGl0ZXJhbCIKICAgICAgICAgICAgICAgfSBdCiAgICAgICAgICAgIH0KICAgICAgICAgfSwgewogICAgICAgICAgICAibmFtZSIgOiAiTmVzdGVkTWF0aENhbGN1bGF0aW9uIiwKICAgICAgICAgICAgImNvbnRleHQiIDogIlBhdGllbnQiLAogICAgICAgICAgICAiYWNjZXNzTGV2ZWwiIDogIlB1YmxpYyIsCiAgICAgICAgICAgICJleHByZXNzaW9uIiA6IHsKICAgICAgICAgICAgICAgInR5cGUiIDogIkFkZCIsCiAgICAgICAgICAgICAgICJvcGVyYW5kIiA6IFsgewogICAgICAgICAgICAgICAgICAibmFtZSIgOiAiTWF0aENhbGN1bGF0aW9uIiwKICAgICAgICAgICAgICAgICAgInR5cGUiIDogIkV4cHJlc3Npb25SZWYiCiAgICAgICAgICAgICAgIH0sIHsKICAgICAgICAgICAgICAgICAgInZhbHVlVHlwZSIgOiAie3VybjpobDctb3JnOmVsbS10eXBlczpyMX1EZWNpbWFsIiwKICAgICAgICAgICAgICAgICAgInZhbHVlIiA6ICIxMDAuMCIsCiAgICAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMaXRlcmFsIgogICAgICAgICAgICAgICB9IF0KICAgICAgICAgICAgfQogICAgICAgICB9LCB7CiAgICAgICAgICAgICJuYW1lIiA6ICJOZXN0ZWRNYXRoU3RhdGVtZW50IiwKICAgICAgICAgICAgImNvbnRleHQiIDogIlBhdGllbnQiLAogICAgICAgICAgICAiYWNjZXNzTGV2ZWwiIDogIlB1YmxpYyIsCiAgICAgICAgICAgICJleHByZXNzaW9uIiA6IHsKICAgICAgICAgICAgICAgInR5cGUiIDogIkFuZCIsCiAgICAgICAgICAgICAgICJvcGVyYW5kIiA6IFsgewogICAgICAgICAgICAgICAgICAibmFtZSIgOiAiVHJ1ZU1hdGhTdGF0ZW1lbnQiLAogICAgICAgICAgICAgICAgICAidHlwZSIgOiAiRXhwcmVzc2lvblJlZiIKICAgICAgICAgICAgICAgfSwgewogICAgICAgICAgICAgICAgICAidHlwZSIgOiAiR3JlYXRlciIsCiAgICAgICAgICAgICAgICAgICJvcGVyYW5kIiA6IFsgewogICAgICAgICAgICAgICAgICAgICAibmFtZSIgOiAiTmVzdGVkTWF0aENhbGN1bGF0aW9uIiwKICAgICAgICAgICAgICAgICAgICAgInR5cGUiIDogIkV4cHJlc3Npb25SZWYiCiAgICAgICAgICAgICAgICAgIH0sIHsKICAgICAgICAgICAgICAgICAgICAgInZhbHVlVHlwZSIgOiAie3VybjpobDctb3JnOmVsbS10eXBlczpyMX1EZWNpbWFsIiwKICAgICAgICAgICAgICAgICAgICAgInZhbHVlIiA6ICIwLjAiLAogICAgICAgICAgICAgICAgICAgICAidHlwZSIgOiAiTGl0ZXJhbCIKICAgICAgICAgICAgICAgICAgfSBdCiAgICAgICAgICAgICAgIH0gXQogICAgICAgICAgICB9CiAgICAgICAgIH0sIHsKICAgICAgICAgICAgIm5hbWUiIDogIkFub3RoZXJOZXN0ZWRNYXRoU3RhdGVtZW50IiwKICAgICAgICAgICAgImNvbnRleHQiIDogIlBhdGllbnQiLAogICAgICAgICAgICAiYWNjZXNzTGV2ZWwiIDogIlB1YmxpYyIsCiAgICAgICAgICAgICJleHByZXNzaW9uIiA6IHsKICAgICAgICAgICAgICAgInR5cGUiIDogIkFuZCIsCiAgICAgICAgICAgICAgICJvcGVyYW5kIiA6IFsgewogICAgICAgICAgICAgICAgICAibmFtZSIgOiAiTmVzdGVkTWF0aFN0YXRlbWVudCIsCiAgICAgICAgICAgICAgICAgICJ0eXBlIiA6ICJFeHByZXNzaW9uUmVmIgogICAgICAgICAgICAgICB9LCB7CiAgICAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMZXNzIiwKICAgICAgICAgICAgICAgICAgIm9wZXJhbmQiIDogWyB7CiAgICAgICAgICAgICAgICAgICAgICJuYW1lIiA6ICJOZXN0ZWRNYXRoQ2FsY3VsYXRpb24iLAogICAgICAgICAgICAgICAgICAgICAidHlwZSIgOiAiRXhwcmVzc2lvblJlZiIKICAgICAgICAgICAgICAgICAgfSwgewogICAgICAgICAgICAgICAgICAgICAidmFsdWVUeXBlIiA6ICJ7dXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxfURlY2ltYWwiLAogICAgICAgICAgICAgICAgICAgICAidmFsdWUiIDogIjAuMCIsCiAgICAgICAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMaXRlcmFsIgogICAgICAgICAgICAgICAgICB9IF0KICAgICAgICAgICAgICAgfSBdCiAgICAgICAgICAgIH0KICAgICAgICAgfSwgewogICAgICAgICAgICAibmFtZSIgOiAiUmV0dXJuc0FDb2RlIiwKICAgICAgICAgICAgImNvbnRleHQiIDogIlBhdGllbnQiLAogICAgICAgICAgICAiYWNjZXNzTGV2ZWwiIDogIlB1YmxpYyIsCiAgICAgICAgICAgICJleHByZXNzaW9uIiA6IHsKICAgICAgICAgICAgICAgInR5cGUiIDogIlR1cGxlIiwKICAgICAgICAgICAgICAgImVsZW1lbnQiIDogWyB7CiAgICAgICAgICAgICAgICAgICJuYW1lIiA6ICJjb2RpbmciLAogICAgICAgICAgICAgICAgICAidmFsdWUiIDogewogICAgICAgICAgICAgICAgICAgICAidHlwZSIgOiAiTGlzdCIsCiAgICAgICAgICAgICAgICAgICAgICJlbGVtZW50IiA6IFsgewogICAgICAgICAgICAgICAgICAgICAgICAidHlwZSIgOiAiVHVwbGUiLAogICAgICAgICAgICAgICAgICAgICAgICAiZWxlbWVudCIgOiBbIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIm5hbWUiIDogInN5c3RlbSIsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICJ2YWx1ZSIgOiB7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ2YWx1ZVR5cGUiIDogInt1cm46aGw3LW9yZzplbG0tdHlwZXM6cjF9U3RyaW5nIiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInZhbHVlIiA6ICJodHRwOi8vc25vbWVkLmluZm8vc2N0IiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInR5cGUiIDogIkxpdGVyYWwiCiAgICAgICAgICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgICAgICAgICAgfSwgewogICAgICAgICAgICAgICAgICAgICAgICAgICAibmFtZSIgOiAiY29kZSIsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICJ2YWx1ZSIgOiB7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ2YWx1ZVR5cGUiIDogInt1cm46aGw3LW9yZzplbG0tdHlwZXM6cjF9U3RyaW5nIiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInZhbHVlIiA6ICIxMDgyODAwNCIsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMaXRlcmFsIgogICAgICAgICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICAgICAgICAgIH0sIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIm5hbWUiIDogImRpc3BsYXkiLAogICAgICAgICAgICAgICAgICAgICAgICAgICAidmFsdWUiIDogewogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAidmFsdWVUeXBlIiA6ICJ7dXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxfVN0cmluZyIsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ2YWx1ZSIgOiAiUG9zaXRpdmUiLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAidHlwZSIgOiAiTGl0ZXJhbCIKICAgICAgICAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgICAgICAgICB9IF0KICAgICAgICAgICAgICAgICAgICAgfSBdCiAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgfSwgewogICAgICAgICAgICAgICAgICAibmFtZSIgOiAidGV4dCIsCiAgICAgICAgICAgICAgICAgICJ2YWx1ZSIgOiB7CiAgICAgICAgICAgICAgICAgICAgICJ2YWx1ZVR5cGUiIDogInt1cm46aGw3LW9yZzplbG0tdHlwZXM6cjF9U3RyaW5nIiwKICAgICAgICAgICAgICAgICAgICAgInZhbHVlIiA6ICJJJ20gc29tZXRoaW5nIiwKICAgICAgICAgICAgICAgICAgICAgInR5cGUiIDogIkxpdGVyYWwiCiAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgfSBdCiAgICAgICAgICAgIH0KICAgICAgICAgfSBdCiAgICAgIH0KICAgfQp9Cgo="
* extension[trust-framework][=].extension[publicCertificate].valueBase64Binary = "ewogICAibGlicmFyeSIgOiB7CiAgICAgICJhbm5vdGF0aW9uIiA6IFsgewogICAgICAgICAidHJhbnNsYXRvck9wdGlvbnMiIDogIiIsCiAgICAgICAgICJ0eXBlIiA6ICJDcWxUb0VsbUluZm8iCiAgICAgIH0gXSwKICAgICAgImlkZW50aWZpZXIiIDogewogICAgICAgICAiaWQiIDogIlRlc3RpbmdDcWxMaWJyYXJ5IiwKICAgICAgICAgInZlcnNpb24iIDogIjEuMC4wIgogICAgICB9LAogICAgICAic2NoZW1hSWRlbnRpZmllciIgOiB7CiAgICAgICAgICJpZCIgOiAidXJuOmhsNy1vcmc6ZWxtIiwKICAgICAgICAgInZlcnNpb24iIDogInIxIgogICAgICB9LAogICAgICAidXNpbmdzIiA6IHsKICAgICAgICAgImRlZiIgOiBbIHsKICAgICAgICAgICAgImxvY2FsSWRlbnRpZmllciIgOiAiU3lzdGVtIiwKICAgICAgICAgICAgInVyaSIgOiAidXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxIgogICAgICAgICB9LCB7CiAgICAgICAgICAgICJsb2NhbElkZW50aWZpZXIiIDogIkZISVIiLAogICAgICAgICAgICAidXJpIiA6ICJodHRwOi8vaGw3Lm9yZy9maGlyIiwKICAgICAgICAgICAgInZlcnNpb24iIDogIjQuMC4xIgogICAgICAgICB9IF0KICAgICAgfSwKICAgICAgImluY2x1ZGVzIiA6IHsKICAgICAgICAgImRlZiIgOiBbIHsKICAgICAgICAgICAgImxvY2FsSWRlbnRpZmllciIgOiAiRkhJUkhlbHBlcnMiLAogICAgICAgICAgICAicGF0aCIgOiAiRkhJUkhlbHBlcnMiLAogICAgICAgICAgICAidmVyc2lvbiIgOiAiNC4wLjEiCiAgICAgICAgIH0gXQogICAgICB9LAogICAgICAic3RhdGVtZW50cyIgOiB7CiAgICAgICAgICJkZWYiIDogWyB7CiAgICAgICAgICAgICJuYW1lIiA6ICJSZXR1cm5zVHJ1ZSIsCiAgICAgICAgICAgICJjb250ZXh0IiA6ICJQYXRpZW50IiwKICAgICAgICAgICAgImFjY2Vzc0xldmVsIiA6ICJQdWJsaWMiLAogICAgICAgICAgICAiZXhwcmVzc2lvbiIgOiB7CiAgICAgICAgICAgICAgICJ2YWx1ZVR5cGUiIDogInt1cm46aGw3LW9yZzplbG0tdHlwZXM6cjF9Qm9vbGVhbiIsCiAgICAgICAgICAgICAgICJ2YWx1ZSIgOiAidHJ1ZSIsCiAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMaXRlcmFsIgogICAgICAgICAgICB9CiAgICAgICAgIH0sIHsKICAgICAgICAgICAgIm5hbWUiIDogIlJldHVybnNGYWxzZSIsCiAgICAgICAgICAgICJjb250ZXh0IiA6ICJQYXRpZW50IiwKICAgICAgICAgICAgImFjY2Vzc0xldmVsIiA6ICJQdWJsaWMiLAogICAgICAgICAgICAiZXhwcmVzc2lvbiIgOiB7CiAgICAgICAgICAgICAgICJ2YWx1ZVR5cGUiIDogInt1cm46aGw3LW9yZzplbG0tdHlwZXM6cjF9Qm9vbGVhbiIsCiAgICAgICAgICAgICAgICJ2YWx1ZSIgOiAiZmFsc2UiLAogICAgICAgICAgICAgICAidHlwZSIgOiAiTGl0ZXJhbCIKICAgICAgICAgICAgfQogICAgICAgICB9LCB7CiAgICAgICAgICAgICJuYW1lIiA6ICJBbHNvUmV0dXJuc1RydWUiLAogICAgICAgICAgICAiY29udGV4dCIgOiAiUGF0aWVudCIsCiAgICAgICAgICAgICJhY2Nlc3NMZXZlbCIgOiAiUHVibGljIiwKICAgICAgICAgICAgImV4cHJlc3Npb24iIDogewogICAgICAgICAgICAgICAidmFsdWVUeXBlIiA6ICJ7dXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxfUJvb2xlYW4iLAogICAgICAgICAgICAgICAidmFsdWUiIDogInRydWUiLAogICAgICAgICAgICAgICAidHlwZSIgOiAiTGl0ZXJhbCIKICAgICAgICAgICAgfQogICAgICAgICB9LCB7CiAgICAgICAgICAgICJuYW1lIiA6ICJBbm90aGVyVHJ1ZVN0YXRlbWVudCIsCiAgICAgICAgICAgICJjb250ZXh0IiA6ICJQYXRpZW50IiwKICAgICAgICAgICAgImFjY2Vzc0xldmVsIiA6ICJQdWJsaWMiLAogICAgICAgICAgICAiZXhwcmVzc2lvbiIgOiB7CiAgICAgICAgICAgICAgICJ2YWx1ZVR5cGUiIDogInt1cm46aGw3LW9yZzplbG0tdHlwZXM6cjF9Qm9vbGVhbiIsCiAgICAgICAgICAgICAgICJ2YWx1ZSIgOiAidHJ1ZSIsCiAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMaXRlcmFsIgogICAgICAgICAgICB9CiAgICAgICAgIH0sIHsKICAgICAgICAgICAgIm5hbWUiIDogIkJ1dElBbUZhbHNlIiwKICAgICAgICAgICAgImNvbnRleHQiIDogIlBhdGllbnQiLAogICAgICAgICAgICAiYWNjZXNzTGV2ZWwiIDogIlB1YmxpYyIsCiAgICAgICAgICAgICJleHByZXNzaW9uIiA6IHsKICAgICAgICAgICAgICAgInZhbHVlVHlwZSIgOiAie3VybjpobDctb3JnOmVsbS10eXBlczpyMX1Cb29sZWFuIiwKICAgICAgICAgICAgICAgInZhbHVlIiA6ICJmYWxzZSIsCiAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMaXRlcmFsIgogICAgICAgICAgICB9CiAgICAgICAgIH0sIHsKICAgICAgICAgICAgIm5hbWUiIDogIkFsc29GYWxzZUhlcmUiLAogICAgICAgICAgICAiY29udGV4dCIgOiAiUGF0aWVudCIsCiAgICAgICAgICAgICJhY2Nlc3NMZXZlbCIgOiAiUHVibGljIiwKICAgICAgICAgICAgImV4cHJlc3Npb24iIDogewogICAgICAgICAgICAgICAidmFsdWVUeXBlIiA6ICJ7dXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxfUJvb2xlYW4iLAogICAgICAgICAgICAgICAidmFsdWUiIDogImZhbHNlIiwKICAgICAgICAgICAgICAgInR5cGUiIDogIkxpdGVyYWwiCiAgICAgICAgICAgIH0KICAgICAgICAgfSwgewogICAgICAgICAgICAibmFtZSIgOiAiTWF0aENhbGN1bGF0aW9uIiwKICAgICAgICAgICAgImNvbnRleHQiIDogIlBhdGllbnQiLAogICAgICAgICAgICAiYWNjZXNzTGV2ZWwiIDogIlB1YmxpYyIsCiAgICAgICAgICAgICJleHByZXNzaW9uIiA6IHsKICAgICAgICAgICAgICAgInR5cGUiIDogIkFkZCIsCiAgICAgICAgICAgICAgICJvcGVyYW5kIiA6IFsgewogICAgICAgICAgICAgICAgICAidmFsdWVUeXBlIiA6ICJ7dXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxfURlY2ltYWwiLAogICAgICAgICAgICAgICAgICAidmFsdWUiIDogIjQwLjAiLAogICAgICAgICAgICAgICAgICAidHlwZSIgOiAiTGl0ZXJhbCIKICAgICAgICAgICAgICAgfSwgewogICAgICAgICAgICAgICAgICAidmFsdWVUeXBlIiA6ICJ7dXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxfURlY2ltYWwiLAogICAgICAgICAgICAgICAgICAidmFsdWUiIDogIjIuMCIsCiAgICAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMaXRlcmFsIgogICAgICAgICAgICAgICB9IF0KICAgICAgICAgICAgfQogICAgICAgICB9LCB7CiAgICAgICAgICAgICJuYW1lIiA6ICJUcnVlTWF0aFN0YXRlbWVudCIsCiAgICAgICAgICAgICJjb250ZXh0IiA6ICJQYXRpZW50IiwKICAgICAgICAgICAgImFjY2Vzc0xldmVsIiA6ICJQdWJsaWMiLAogICAgICAgICAgICAiZXhwcmVzc2lvbiIgOiB7CiAgICAgICAgICAgICAgICJ0eXBlIiA6ICJHcmVhdGVyIiwKICAgICAgICAgICAgICAgIm9wZXJhbmQiIDogWyB7CiAgICAgICAgICAgICAgICAgICJuYW1lIiA6ICJNYXRoQ2FsY3VsYXRpb24iLAogICAgICAgICAgICAgICAgICAidHlwZSIgOiAiRXhwcmVzc2lvblJlZiIKICAgICAgICAgICAgICAgfSwgewogICAgICAgICAgICAgICAgICAidmFsdWVUeXBlIiA6ICJ7dXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxfURlY2ltYWwiLAogICAgICAgICAgICAgICAgICAidmFsdWUiIDogIjAuMCIsCiAgICAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMaXRlcmFsIgogICAgICAgICAgICAgICB9IF0KICAgICAgICAgICAgfQogICAgICAgICB9LCB7CiAgICAgICAgICAgICJuYW1lIiA6ICJGYWxzZU1hdGhTdGF0ZW1lbnQiLAogICAgICAgICAgICAiY29udGV4dCIgOiAiUGF0aWVudCIsCiAgICAgICAgICAgICJhY2Nlc3NMZXZlbCIgOiAiUHVibGljIiwKICAgICAgICAgICAgImV4cHJlc3Npb24iIDogewogICAgICAgICAgICAgICAidHlwZSIgOiAiTGVzcyIsCiAgICAgICAgICAgICAgICJvcGVyYW5kIiA6IFsgewogICAgICAgICAgICAgICAgICAibmFtZSIgOiAiTWF0aENhbGN1bGF0aW9uIiwKICAgICAgICAgICAgICAgICAgInR5cGUiIDogIkV4cHJlc3Npb25SZWYiCiAgICAgICAgICAgICAgIH0sIHsKICAgICAgICAgICAgICAgICAgInZhbHVlVHlwZSIgOiAie3VybjpobDctb3JnOmVsbS10eXBlczpyMX1EZWNpbWFsIiwKICAgICAgICAgICAgICAgICAgInZhbHVlIiA6ICIwLjAiLAogICAgICAgICAgICAgICAgICAidHlwZSIgOiAiTGl0ZXJhbCIKICAgICAgICAgICAgICAgfSBdCiAgICAgICAgICAgIH0KICAgICAgICAgfSwgewogICAgICAgICAgICAibmFtZSIgOiAiTmVzdGVkTWF0aENhbGN1bGF0aW9uIiwKICAgICAgICAgICAgImNvbnRleHQiIDogIlBhdGllbnQiLAogICAgICAgICAgICAiYWNjZXNzTGV2ZWwiIDogIlB1YmxpYyIsCiAgICAgICAgICAgICJleHByZXNzaW9uIiA6IHsKICAgICAgICAgICAgICAgInR5cGUiIDogIkFkZCIsCiAgICAgICAgICAgICAgICJvcGVyYW5kIiA6IFsgewogICAgICAgICAgICAgICAgICAibmFtZSIgOiAiTWF0aENhbGN1bGF0aW9uIiwKICAgICAgICAgICAgICAgICAgInR5cGUiIDogIkV4cHJlc3Npb25SZWYiCiAgICAgICAgICAgICAgIH0sIHsKICAgICAgICAgICAgICAgICAgInZhbHVlVHlwZSIgOiAie3VybjpobDctb3JnOmVsbS10eXBlczpyMX1EZWNpbWFsIiwKICAgICAgICAgICAgICAgICAgInZhbHVlIiA6ICIxMDAuMCIsCiAgICAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMaXRlcmFsIgogICAgICAgICAgICAgICB9IF0KICAgICAgICAgICAgfQogICAgICAgICB9LCB7CiAgICAgICAgICAgICJuYW1lIiA6ICJOZXN0ZWRNYXRoU3RhdGVtZW50IiwKICAgICAgICAgICAgImNvbnRleHQiIDogIlBhdGllbnQiLAogICAgICAgICAgICAiYWNjZXNzTGV2ZWwiIDogIlB1YmxpYyIsCiAgICAgICAgICAgICJleHByZXNzaW9uIiA6IHsKICAgICAgICAgICAgICAgInR5cGUiIDogIkFuZCIsCiAgICAgICAgICAgICAgICJvcGVyYW5kIiA6IFsgewogICAgICAgICAgICAgICAgICAibmFtZSIgOiAiVHJ1ZU1hdGhTdGF0ZW1lbnQiLAogICAgICAgICAgICAgICAgICAidHlwZSIgOiAiRXhwcmVzc2lvblJlZiIKICAgICAgICAgICAgICAgfSwgewogICAgICAgICAgICAgICAgICAidHlwZSIgOiAiR3JlYXRlciIsCiAgICAgICAgICAgICAgICAgICJvcGVyYW5kIiA6IFsgewogICAgICAgICAgICAgICAgICAgICAibmFtZSIgOiAiTmVzdGVkTWF0aENhbGN1bGF0aW9uIiwKICAgICAgICAgICAgICAgICAgICAgInR5cGUiIDogIkV4cHJlc3Npb25SZWYiCiAgICAgICAgICAgICAgICAgIH0sIHsKICAgICAgICAgICAgICAgICAgICAgInZhbHVlVHlwZSIgOiAie3VybjpobDctb3JnOmVsbS10eXBlczpyMX1EZWNpbWFsIiwKICAgICAgICAgICAgICAgICAgICAgInZhbHVlIiA6ICIwLjAiLAogICAgICAgICAgICAgICAgICAgICAidHlwZSIgOiAiTGl0ZXJhbCIKICAgICAgICAgICAgICAgICAgfSBdCiAgICAgICAgICAgICAgIH0gXQogICAgICAgICAgICB9CiAgICAgICAgIH0sIHsKICAgICAgICAgICAgIm5hbWUiIDogIkFub3RoZXJOZXN0ZWRNYXRoU3RhdGVtZW50IiwKICAgICAgICAgICAgImNvbnRleHQiIDogIlBhdGllbnQiLAogICAgICAgICAgICAiYWNjZXNzTGV2ZWwiIDogIlB1YmxpYyIsCiAgICAgICAgICAgICJleHByZXNzaW9uIiA6IHsKICAgICAgICAgICAgICAgInR5cGUiIDogIkFuZCIsCiAgICAgICAgICAgICAgICJvcGVyYW5kIiA6IFsgewogICAgICAgICAgICAgICAgICAibmFtZSIgOiAiTmVzdGVkTWF0aFN0YXRlbWVudCIsCiAgICAgICAgICAgICAgICAgICJ0eXBlIiA6ICJFeHByZXNzaW9uUmVmIgogICAgICAgICAgICAgICB9LCB7CiAgICAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMZXNzIiwKICAgICAgICAgICAgICAgICAgIm9wZXJhbmQiIDogWyB7CiAgICAgICAgICAgICAgICAgICAgICJuYW1lIiA6ICJOZXN0ZWRNYXRoQ2FsY3VsYXRpb24iLAogICAgICAgICAgICAgICAgICAgICAidHlwZSIgOiAiRXhwcmVzc2lvblJlZiIKICAgICAgICAgICAgICAgICAgfSwgewogICAgICAgICAgICAgICAgICAgICAidmFsdWVUeXBlIiA6ICJ7dXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxfURlY2ltYWwiLAogICAgICAgICAgICAgICAgICAgICAidmFsdWUiIDogIjAuMCIsCiAgICAgICAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMaXRlcmFsIgogICAgICAgICAgICAgICAgICB9IF0KICAgICAgICAgICAgICAgfSBdCiAgICAgICAgICAgIH0KICAgICAgICAgfSwgewogICAgICAgICAgICAibmFtZSIgOiAiUmV0dXJuc0FDb2RlIiwKICAgICAgICAgICAgImNvbnRleHQiIDogIlBhdGllbnQiLAogICAgICAgICAgICAiYWNjZXNzTGV2ZWwiIDogIlB1YmxpYyIsCiAgICAgICAgICAgICJleHByZXNzaW9uIiA6IHsKICAgICAgICAgICAgICAgInR5cGUiIDogIlR1cGxlIiwKICAgICAgICAgICAgICAgImVsZW1lbnQiIDogWyB7CiAgICAgICAgICAgICAgICAgICJuYW1lIiA6ICJjb2RpbmciLAogICAgICAgICAgICAgICAgICAidmFsdWUiIDogewogICAgICAgICAgICAgICAgICAgICAidHlwZSIgOiAiTGlzdCIsCiAgICAgICAgICAgICAgICAgICAgICJlbGVtZW50IiA6IFsgewogICAgICAgICAgICAgICAgICAgICAgICAidHlwZSIgOiAiVHVwbGUiLAogICAgICAgICAgICAgICAgICAgICAgICAiZWxlbWVudCIgOiBbIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIm5hbWUiIDogInN5c3RlbSIsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICJ2YWx1ZSIgOiB7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ2YWx1ZVR5cGUiIDogInt1cm46aGw3LW9yZzplbG0tdHlwZXM6cjF9U3RyaW5nIiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInZhbHVlIiA6ICJodHRwOi8vc25vbWVkLmluZm8vc2N0IiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInR5cGUiIDogIkxpdGVyYWwiCiAgICAgICAgICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgICAgICAgICAgfSwgewogICAgICAgICAgICAgICAgICAgICAgICAgICAibmFtZSIgOiAiY29kZSIsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICJ2YWx1ZSIgOiB7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ2YWx1ZVR5cGUiIDogInt1cm46aGw3LW9yZzplbG0tdHlwZXM6cjF9U3RyaW5nIiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInZhbHVlIiA6ICIxMDgyODAwNCIsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ0eXBlIiA6ICJMaXRlcmFsIgogICAgICAgICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICAgICAgICAgIH0sIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgIm5hbWUiIDogImRpc3BsYXkiLAogICAgICAgICAgICAgICAgICAgICAgICAgICAidmFsdWUiIDogewogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAidmFsdWVUeXBlIiA6ICJ7dXJuOmhsNy1vcmc6ZWxtLXR5cGVzOnIxfVN0cmluZyIsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ2YWx1ZSIgOiAiUG9zaXRpdmUiLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAidHlwZSIgOiAiTGl0ZXJhbCIKICAgICAgICAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgICAgICAgICB9IF0KICAgICAgICAgICAgICAgICAgICAgfSBdCiAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgfSwgewogICAgICAgICAgICAgICAgICAibmFtZSIgOiAidGV4dCIsCiAgICAgICAgICAgICAgICAgICJ2YWx1ZSIgOiB7CiAgICAgICAgICAgICAgICAgICAgICJ2YWx1ZVR5cGUiIDogInt1cm46aGw3LW9yZzplbG0tdHlwZXM6cjF9U3RyaW5nIiwKICAgICAgICAgICAgICAgICAgICAgInZhbHVlIiA6ICJJJ20gc29tZXRoaW5nIiwKICAgICAgICAgICAgICAgICAgICAgInR5cGUiIDogIkxpdGVyYWwiCiAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgfSBdCiAgICAgICAgICAgIH0KICAgICAgICAgfSBdCiAgICAgIH0KICAgfQp9Cgo="
* extension[secure-exchange-artifacts][0].extension[secureExchangeArtifactsType].valueCodeableConcept = NdhSecureExchangeArtifactsCS#x509-mtls-certificate
* extension[secure-exchange-artifacts][=].extension[certificate].valueBase64Binary = "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"
* extension[secure-exchange-artifacts][=].extension[expirationDate].valueDateTime = "2024-08-10T15:00:00.000Z"
* connectionType = $ConnectionTypeCS#hl7-fhir-rest
* payloadType = $DataAbsentReasonCS#not-applicable
* payloadMimeType[+] = $BCP13#application/fhir+json
* payloadMimeType[+] = $BCP13#application/fhir+xml
* address = "https://p2p.diamondonyx.example.com/mtlsendpoint"
* managingOrganization = Reference(diamondonyxhealth2)
