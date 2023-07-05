### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** |**Type**| **Example** |
| [healthcareservice-eligibility](SearchParameter-healthcareservice-eligibility.html) | token |`GET [base]/HealthcareService?healthcareservice-eligibility=2403008` |
| [healthcareservice-new-patient](SearchParameter-healthcareservice-new-patient.html) | token |`GET [base]/HealthcareService?healthcareservice-new-patient=newpt` |
| [healthcareservice-new-patient-from-network](SearchParameter-healthcareservice-new-patient-from-network.html) | reference |`GET [base]/HealthcareService?healthcareservice-new-patient-from-network.type=ntwk&healthcareservice-new-patient-from-network.address-state=CT` |
| [healthcareservice-verification-status](SearchParameter-healthcareservice-verification-status.html) | token |`GET [base]/HealthcareService?healthcareservice-verification-status=complete` |
| [healthcareservice-network](SearchParameter-healthcareservice-network.html) | reference |`GET [base]/HealthcareService?healthcareservice-network.type=ntwk&healthcareservice-network.address-state=CT` |
| [healthcareservice-social-service-age-group](SearchParameter-healthcareservice-social-service-age-group.html) | token |`GET [base]/HealthcareService?healthcareservice-social-service-age-group=teens&program=42` |
| [healthcareservice-social-service-birthsex](SearchParameter-healthcareservice-social-service-birthsex.html) | token |`GET [base]/HealthcareService?healthcareservice-social-service-birthsex=F` |
| [healthcareservice-social-service-employment-status](SearchParameter-healthcareservice-social-service-employment-status.html) | token |`GET [base]/HealthcareService?healthcareservice-social-service-employment-status=unemployed`	 |
| [healthcareservice-social-service-gender-identity](SearchParameter-healthcareservice-social-service-gender-identity.html) | token |`GET [base]/HealthcareService?healthcareservice-social-service-gender-identity=OTH` |
| [healthcareservice-social-service-insurance-status](SearchParameter-healthcareservice-social-service-insurance-status.html) | token |`GET [base]/HealthcareService?healthcareservice-social-service-insurance-status=uninsured` |
| [healthcareservice-social-service-preferred-language](SearchParameter-healthcareservice-social-service-preferred-language.html) | token |`GET [base]/HealthcareService?healthcareservice-social-service-preferred-language=en` |
| [healthcareservice-social-service-va-status](SearchParameter-healthcareservice-social-service-va-status.html) | token |`GET [base]/HealthcareService?healthcareservice-social-service-va-status=true` |
| [healthcareservice-program-requirement-age-group](SearchParameter-healthcareservice-program-requirement-age-group.html) | token |`GET [base]/HealthcareService?healthcareservice-program-requirement-age-group=teens` |
| [healthcareservice-program-requirement-birthsex](SearchParameter-healthcareservice-program-requirement-birthsex.html) | token |`GET [base]/HealthcareService?healthcareservice-program-requirement-birthsex=M` |
| [healthcareservice-program-requirement-employment-status](SearchParameter-healthcareservice-program-requirement-employment-status.html) | token |`GET [base]/HealthcareService?healthcareservice-program-requirement-employment-status=employed` |
| [healthcareservice-program-requirement-gender-identity](SearchParameter-healthcareservice-program-requirement-gender-identity.html) | token |`GET [base]/HealthcareService?healthcareservice-program-requirement-gender-identity=ASKU` |
| [healthcareservice-program-requirement-insurance-status](SearchParameter-healthcareservice-program-requirement-insurance-status.html) | token |`GET [base]/HealthcareService?healthcareservice-program-requirement-insurance-status=uninsured` |
| [healthcareservice-program-requirement-preferred-language](SearchParameter-healthcareservice-program-requirement-preferred-language.html) | token |`GET [base]/HealthcareService?healthcareservice-program-requirement-preferred-language=sp` |
| [healthcareservice-program-requirement-va-status](SearchParameter-healthcareservice-program-requirement-va-status.html) | token |`GET [base]/HealthcareService?healthcareservice-program-requirement-va-status=false` |



#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
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

#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| HealthcareService:coverage-area |`GET [base]/HealthcareService?_include=HealthcareService:coverage-area` |
| HealthcareService:endpoint |`GET [base]/HealthcareService?_include=HealthcareService:endpoint` |
| HealthcareService:location | `GET [base]/HealthcareService?_id=BurrClinicServices&_include=HealthcareService:location` |
| HealthcareService:healthcareservice-new-patient-from-network |`GET [base]/HealthcareService?_include=HealthcareService:healthcareservice-new-patient-from-network` |
| HealthcareService:organization | `GET [base]/HealthcareService?_id=BurrClinicServices&_include=HealthcareService:organization`|

#### _revinclude Search parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_revinclude** |
|-----------------|
| CareTeam:careteam-service |
| OrganizationAffiliation:service |
| PractitionerRole:service |

#### Search use cases
##### Search for all organizations and locations provide a given HealthcareService
If you run the search below for the HealthcareService called `BurrClinicServices`, it should return a search bundle that includes the `BurrClinicServices` resource, as well as the associated `BurrClinic` Organization resource and the `HospLoc1` Location resource. This indicates that the `BurrClinic` organization provides the `BurrClinicServices` healthcare service at the `HospLoc1` location.

`GET [base]/HealthcareService?_id=BurrClinicServices&_include=HealthcareService:organization&_include=HealthcareService:location`

or 
`GET [base]/OrganizationAffiliation?service:HealthcareService._id=BurrClinicServices`

To search for a specific OrganizationAffiliation and its associated resources, you can use the following query:  

`GET [base]/OrganizationAffiliation?_id=BurrClinicAffil&_include=OrganizationAffiliation:service&_include=OrganizationAffiliation:location&_include=OrganizationAffiliation:participating-organization&_include=OrganizationAffiliation:network`

