#### Search Parameters
##### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** |**Type**| **Example** |
| [eligibility](SearchParameter-healthcareservice-eligibility.html) | token |`GET [base]/HealthcareService?eligibility=2403008` |
| [new-patient](SearchParameter-healthcareservice-new-patient.html) | token |`GET [base]/HealthcareService?new-patient=newpt` |
| [new-patient-from-network](SearchParameter-healthcareservice-new-patient-from-network.html) | reference |`GET [base]/HealthcareService?new-patient-from-network.type=ntwk&new-patient-from-network.address-state=CT` |
| [verification-status](SearchParameter-healthcareservice-verification-status.html) | token |`GET [base]/HealthcareService?verification-status=complete` |
| [network](SearchParameter-healthcareservice-network.html) | reference |`GET [base]/HealthcareService?network.type=ntwk&network.address-state=CT` |
| [social-service-age-group](SearchParameter-healthcareservice-social-service-age-group.html) | token |`GET [base]/HealthcareService?social-service-age-group=teens&program=42` |
| [social-service-birthsex](SearchParameter-healthcareservice-social-service-birthsex.html) | token |`GET [base]/HealthcareService?social-service-birthsex=F` |
| [social-service-employment-status](SearchParameter-healthcareservice-social-service-employment-status.html) | token |`GET [base]/HealthcareService?social-service-employment-status=unemployed`	 |
| [social-service-gender-identity](SearchParameter-healthcareservice-social-service-gender-identity.html) | token |`GET [base]/HealthcareService?social-service-gender-identity=OTH` |
| [social-service-insurance-status](SearchParameter-healthcareservice-social-service-insurance-status.html) | token |`GET [base]/HealthcareService?social-service-insurance-status=uninsured` |
| [social-service-preferred-language](SearchParameter-healthcareservice-social-service-preferred-language.html) | token |`GET [base]/HealthcareService?social-service-preferred-language=en` |
| [social-service-va-status](SearchParameter-healthcareservice-social-service-va-status.html) | token |`GET [base]/HealthcareService?social-service-va-status=true` |
| [program-requirement-age-group](SearchParameter-healthcareservice-program-requirement-age-group.html) | token |`GET [base]/HealthcareService?program-requirement-age-group=teens` |
| [program-requirement-birthsex](SearchParameter-healthcareservice-program-requirement-birthsex.html) | token |`GET [base]/HealthcareService?program-requirement-birthsex=M` |
| [program-requirement-employment-status](SearchParameter-healthcareservice-program-requirement-employment-status.html) | token |`GET [base]/HealthcareService?program-requirement-employment-status=employed` |
| [program-requirement-gender-identity](SearchParameter-healthcareservice-program-requirement-gender-identity.html) | token |`GET [base]/HealthcareService?program-requirement-gender-identity=ASKU` |
| [program-requirement-insurance-status](SearchParameter-healthcareservice-program-requirement-insurance-status.html) | token |`GET [base]/HealthcareService?program-requirement-insurance-status=uninsured` |
| [program-requirement-preferred-language](SearchParameter-healthcareservice-program-requirement-preferred-language.html) | token |`GET [base]/HealthcareService?program-requirement-preferred-language=sp` |
| [program-requirement-va-status](SearchParameter-healthcareservice-program-requirement-va-status.html) | token |`GET [base]/HealthcareService?program-requirement-va-status=false` |



##### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
Since there is no direct individual url for each Search Parameter defined by FHIR Serach Parameter Registry, we have provided the following links for you to access more information about them.

- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)
- [Healthcareservice Search Parameter from Registry](https://hl7.org/fhir/R4/healthcareservice.html#search)

<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|--------------------------|----------|-------------|
| active | token |`GET [base]/HealthcareService?active=true` |
| coverage-area | reference |`GET [base]/HealthcareService?coverage-area.address-state=CT` |
| endpoint | reference |`GET [base]/HealthcareService?endpoint.connection-type=hl7-fhir-rest` |
| identifier | token |`GET [base]/HealthcareService?identifier=1234567` |
| location | reference |`GET [base]/HealthcareService?location.address-state=CT` |
| name | string |`GET [base]/HealthcareService?name=HOPE INC` |
| organization | refernece |`GET [base]/HealthcareService?organization.name=HOPE INC` |
| program | token |`GET [base]/HealthcareService?prgram=6` |
| service-category | token |`GET [base]/HealthcareService?service-category=behav` |
| service-type | token |`GET [base]/HealthcareService?service-type=230` |
| specialty | token |`GET [base]/HealthcareService?specialty=101YS0200X` |

##### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| HealthcareService:coverage-area |`GET [base]/HealthcareService?_include=HealthcareService:coverage-area` |
| HealthcareService:endpoint |`GET [base]/HealthcareService?_include=HealthcareService:endpoint` |
| HealthcareService:location | `GET [base]/HealthcareService?_id=BurrClinicServices&_include=HealthcareService:location` |
| HealthcareService:new-patient-from-network |`GET [base]/HealthcareService?_include=HealthcareService:new-patient-from-network` |
| HealthcareService:organization | `GET [base]/HealthcareService?_id=BurrClinicServices&_include=HealthcareService:organization`|

##### _revinclude Search parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_revinclude** |
|-----------------|
| CareTeam:service |
| OrganizationAffiliation:service |
| PractitionerRole:service |

#### Special Search Parameters
The search parameters outlined are straightforward for basic scenarios but have limitations in handling complex combination queries. To enhance these capabilities, employing the special search parameters [_filter](https://hl7.org/fhir/R5/search_filter.html#3.2.3) is recommended.

##### Search use cases
###### Search for all organizations and locations provide a given HealthcareService
If you run the search below for the HealthcareService called `BurrClinicServices`, it should return a search bundle that includes the `BurrClinicServices` resource, as well as the associated `BurrClinic` Organization resource and the `HospLoc1` Location resource. This indicates that the `BurrClinic` organization provides the `BurrClinicServices` healthcare service at the `HospLoc1` location.

`GET [base]/HealthcareService?_id=BurrClinicServices&_include=HealthcareService:organization&_include=HealthcareService:location`

or 
`GET [base]/OrganizationAffiliation?service:HealthcareService._id=BurrClinicServices`

To search for a specific OrganizationAffiliation and its associated resources, you can use the following query:  

`GET [base]/OrganizationAffiliation?_id=BurrClinicAffil&_include=OrganizationAffiliation:service&_include=OrganizationAffiliation:location&_include=OrganizationAffiliation:participating-organization&_include=OrganizationAffiliation:network`

#### Usage
##### Network extension
The primary intention for the network extension of the HealthcareService is to cater to services related to social services. Typically, healthcare service networks are tied to insurance plans. However, in the realm of social services, the delivery or subscription of services often occurs through a hub. This hub embodies a similar concept to a network, but without an insurance plan attached. To simplify the process of locating such hubs (networks), NDH offers a connection from the healthcare server to the network. For instance, the Welcome Home organization provides housing services at the Welcome Home location. This service is subscribed to through the Social Service Housing Network.

##### Healthcare Service and Program Requirement extensions
The extension for Healthcare Service or Program Requirement is applied at both the Service and Program levels. Each Service or Program can have multiple requirements, and each requirement can have several constraints. For instance, one service could be specifically for teens, another for females, or even one designed exclusively for teenage girls. Restrictions should be utilized only when there are particular limitations, such as services solely for females or veterans.

##### Language Speak extension
If a service supports multiple languages, up to six for example, it's unlikely that these would be restricted within this extension. Instead, the languages spoken should be documented under the "healthcareService.communication" field.

##### User requests a healthcare service delivered by an organization at a location
The recommended approach for a user requesting a healthcare service provided by an organization at a location is to use the healthcare service resource. This depends on whether the nature of the service is offered at a single location or across multiple locations.

If a healthcare service is available at multiple locations, each location may have unique endpoints, operating hours, and telecom. The specific data for each location concerning endpoints, operating hours, and telecom (HealthcareService.location => Location.endpoint, Location.hoursOfOperation, Location.telecom ...) will supersede the general data provided at the healthcare service resource instance level (HealthcareService.endpoint, HealthcareService.availabeTime, HealthcareService.telecom ...). This approach provides flexibility: it permits the use of unified endpoints, operating hours, and telephones for the healthcare service when the information is consistent across all locations, while also allowing for differences in endpoints and operating hours at various locations.
