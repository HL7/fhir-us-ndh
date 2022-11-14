
Profile:        NdhExEndpoint
Parent:         $NdhEndpoint
Id:             ndhEx-Endpoint
Title:          "NDH Exchange Endpoint"
Description:    "The technical details of an endpoint that can be used for electronic services, such as a portal or FHIR REST services, messaging or operations, 
or DIRECT messaging."
* extension[associated-servers] MS
* extension[secured-endpoint] MS
* identifier MS
* identifier.assigner MS

Profile:        NdhExHealthcareService
Parent:         $NdhHealthcareService
Id:             ndhEx-HealthcareService
Title:          "NDH Exchange HealthcareService"
Description:    "The HealthCareService resource typically describes services offered by an organization/practitioner at a location. 
The resource may be used to encompass a variety of services covering the entire healthcare spectrum, including promotion, prevention, diagnostics, pharmacy, 
hospital and ambulatory care, home care, long-term care, and other health-related and community services."
* extension[newpatients] MS
* identifier MS
* serviceProvisionCode MS
* eligibility MS
* program MS 
* communication MS
* referralMethod MS
* characteristic MS
* communication MS
* referralMethod MS


Profile:        NdhExLocation
Parent:         $NdhLocation
Id:             ndhEx-Location
Title:          "NDH Exchange Location"
Description:    "A Location is the physical place where healthcare services are provided, practitioners are employed, 
                 organizations are based, etc. Locations can range in scope from a room in a building to a geographic region/area."
* identifier MS


Profile:        NdhExOrganizationAffiliation
Parent:         $NdhOrganizationAffiliation
Id:             ndhEx-OrganizationAffiliation
Title:          "NDH OrganizationAffiliation"
Description:    "The OrganizationAffiliation resource describes relationships between two or more organizations, including the services one organization provides another, 
the location(s) where they provide services, the availability of those services, electronic endpoints, and other relevant information."
* identifier.type MS
* identifier.value MS
* identifier.assigner MS 


Profile:        NdhExPractitionerRole
Parent:         $NdhPractitionerRole
Id:             ndhEx-PractitionerRole
Title:          "NDH Exchange PractitionerRole"
Description:    "PractionerRole describes details about a provider, which can be a practitioner or an organization. When the provider is a practitioner, 
there may be a relationship to an organization. A provider renders services to patients at a location. When the provider is a practitioner, there may also 
be a relationship to an organization. Practitioner participation in healthcare provider insurance networks may be direct or through their role at an organization."
* identifier.type MS
* identifier.value MS
* identifier.assigner MS 