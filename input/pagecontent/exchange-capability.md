### Exchange Capability Statements
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

|Profile/Capability         | [Exchange ]   | [Exchange Base Expanded] | [Exchange Base] |
|**CareTeam**               |  SHALL | SHOULD | SHOULD |
|**Endpoint**               |  SHALL | SHALL  | SHALL  | 
|**HealthcareService**      |  SHALL | SHALL  | SHOULD | 
|**InsurancePlan**          |  SHALL | SHOULD | SHOULD | 
|**Location**               |  SHALL | SHALL  | SHALL  | 
|**Network**                |  SHALL | SHOULD | SHOULD | 
|**Organization**           |  SHALL | SHALL  | SHALL  | 
|**OrganizationAffiliation**|  SHALL | SHALL  | SHOULD | 
|**Practitioner**           |  SHALL | SHALL  | SHALL  | 
|**PractitionerRole**       |  SHALL | SHALL  | SHALL  | 
|**Restriction**            |  SHALL | SHALL  | SHOULD | 
|**Validation**             |  SHALL | SHALL  | SHOULD | 


### Conformance Requirements
The primary focus of this implementation guide is a RESTful API for obtaining data from a FHIR-enabled Exchange from a National Directory of Healthcare Providers & Services (NDH). This API supports a unidirectional flow of information from a FHIR-enabled NDH Exchange Directory to distributed directories and/or applications. (e.g., supports GET but not PUT or POST)

The capability statement for NDH requires support of all of the associated resources defined for the NDH.  However, to facilitate the use of the NDH IG by local environments that may act, in their sphere of influence as reference directories, this IG supports two less restrictive exchange capability statements:

1. NDH Exchange Base Expanded – requires **SHALL** support all of the resources except for CareTeam, InsurancePlan, and Network which are **SHOULD** support.
2. NDH Exchange Base – limits required **SHALL** support to the following resources: Endpoint, Location, Organization, Practitioner, and PractitionerRole.   The remaining resources are noted as **SHOULD** support.




{% include markdown-link-references.md %}

