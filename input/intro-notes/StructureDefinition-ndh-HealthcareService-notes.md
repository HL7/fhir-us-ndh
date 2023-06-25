### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|--------------------------|----------|-------------|
| [healthcareservice-eligibility](SearchParameter-healthcareservice-eligibility.html) | token | |
| [healthcareservice-new-patient](SearchParameter-healthcareservice-new-patient.html) | token | |
| [healthcareservice-new-patient-from-network](SearchParameter-healthcareservice-new-patient-from-network.html) | reference | |
| [healthcareservice-verification-status](SearchParameter-healthcareservice-verification-status.html) | token | |
| [healthcareservice-network](SearchParameter-healthcareservice-network.html) | reference | |
| [healthcareservice-social-service-age-group](SearchParameter-healthcareservice-social-service-age-group.html) | token | |
| [healthcareservice-social-service-birthsex](SearchParameter-healthcareservice-social-service-birthsex.html) | token | |
| [healthcareservice-social-service-employment-status](SearchParameter-healthcareservice-social-service-employment-status.html) | token | |
| [healthcareservice-social-service-gender-identity](SearchParameter-healthcareservice-social-service-gender-identity.html) | token | |
| [healthcareservice-social-service-insurance-status](SearchParameter-healthcareservice-social-service-insurance-status.html) | token | |
| [healthcareservice-social-service-preferred-language](SearchParameter-healthcareservice-social-service-preferred-language.html) | token | |
| [healthcareservice-social-service-va-status](SearchParameter-healthcareservice-social-service-va-status.html) | token | |
| [healthcareservice-program-requirement-age-group](SearchParameter-healthcareservice-program-requirement-age-group.html) | token | |
| [healthcareservice-program-requirement-birthsex](SearchParameter-healthcareservice-program-requirement-birthsex.html) | token | |
| [healthcareservice-program-requirement-employment-status](SearchParameter-healthcareservice-program-requirement-employment-status.html) | token | |
| [healthcareservice-program-requirement-gender-identity](SearchParameter-healthcareservice-program-requirement-gender-identity.html) | token | |
| [healthcareservice-program-requirement-insurance-status](SearchParameter-healthcareservice-program-requirement-insurance-status.html) | token | |
| [healthcareservice-program-requirement-preferred-language](SearchParameter-healthcareservice-program-requirement-preferred-language.html) | token | |
| [healthcareservice-program-requirement-va-status](SearchParameter-healthcareservice-program-requirement-va-status.html) | token | |



#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)
- [Healthcareservice Search Parameter from Registry](https://hl7.org/fhir/R4/healthcareservice.html#search)

<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** | **Type** | **Example** |
|--------------------------|----------|-------------|
| active | token | |
| coverage-area | reference | |
| endpoint | reference | |
| identifier | token | |
| location | reference | |
| name | string | |
| organization | refernece | |
| program | token | |
| service-category | token | |
| service-type | token | |
| specialty | token | |

#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| HealthcareService:coverage-area | |
| HealthcareService:endpoint | |
| HealthcareService:location | `GET [base]/HealthcareService?_id=BurrClinicServices&_include=HealthcareService:location` |
| HealthcareService:healthcareservice-new-patient-from-network | |
| HealthcareService:organization | `GET [base]/HealthcareService?_id=BurrClinicServices&_include=HealthcareService:organization`|

#### _revinclude Search parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_revinclude** | **Example** |
|-----------------|-------------|
| CareTeam:careteam-service | |
| OrganizationAffiliation:service | |
| PractitionerRole:service | |



#### Search Examples
##### Search for all organizations and locations provide a given HealthcareService
If you run the search below for the HealthcareService called `BurrClinicServices`, it should return a search bundle that includes the `BurrClinicServices` resource, as well as the associated `BurrClinic` Organization resource and the `HospLoc1` Location resource. This indicates that the `BurrClinic` organization provides the `BurrClinicServices` healthcare service at the `HospLoc1` location.

`GET [base]/HealthcareService?_id=BurrClinicServices&_include=HealthcareService:organization&_include=HealthcareService:location`

or 
`GET [base]/OrganizationAffiliation?service:HealthcareService._id=BurrClinicServices`

To search for a specific OrganizationAffiliation and its associated resources, you can use the following query:  

`GET [base]/OrganizationAffiliation?_id=BurrClinicAffil&_include=OrganizationAffiliation:service&_include=OrganizationAffiliation:location&_include=OrganizationAffiliation:participating-organization&_include=OrganizationAffiliation:network`

