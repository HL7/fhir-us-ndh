#### Search Parameters

{% include StructureDefinition-ndh-HealthcareService-search-params.xhtml %}

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
| OrganizationAffiliation:service |
| PractitionerRole:service |

#### Special Search Parameters

The search parameters outlined above are straightforward for basic scenarios but have limitations in handling complex combination queries. To enhance these capabilities, employing the special search parameters [_filter](https://hl7.org/fhir/R5/search_filter.html#3.2.3) is recommended.

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

The extension for Healthcare Service or Program Requirement is applied at both the Service and Program levels. Each Service or Program can have multiple requirements, and each requirement can have several constraints. For instance, one service could be specifically for teens, another for females, or even one designed exclusively for teenage girls. 

##### Language Speak extension

If a service supports multiple languages, up to six for example, it's unlikely that these would be restricted within this extension. Instead, the languages spoken should be documented under the "healthcareService.communication" field.

##### User requests a healthcare service delivered by an organization at a location

The recommended approach for a user requesting a healthcare service provided by an organization at a location is to use the healthcare service resource. This depends on whether the nature of the service is offered at a single location or across multiple locations.

If a healthcare service is available at multiple locations, each location may have unique endpoints, operating hours, and telecom. The specific data for each location concerning endpoints, operating hours, and telecom (HealthcareService.location => Location.endpoint, Location.hoursOfOperation, Location.telecom ...) will supersede the general data provided at the healthcare service resource instance level (HealthcareService.endpoint, HealthcareService.availableTime, HealthcareService.telecom ...). This approach provides flexibility: it permits the use of unified endpoints, operating hours, and telephones for the healthcare service when the information is consistent across all locations, while also allowing for differences in endpoints and operating hours at various locations.
