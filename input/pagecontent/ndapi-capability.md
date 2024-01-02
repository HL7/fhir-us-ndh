### National Directory API Capability Statements
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

|Profile/Capability         | [National Directory API]   | [National Directory API Base Expanded] | [National Directory API Base] |
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
The primary focus of this implementation guide is a RESTful API for obtaining data from a FHIR-enabled API from a National Directory of Healthcare Providers & Services (NDH). This API supports a unidirectional flow of information from a FHIR-enabled National Directory to Local Directories and/or Applications. (e.g., supports GET but not PUT or POST)

The capability statement for NDH requires support of all of the associated resources defined for the NDH.  However, to facilitate the use of the NDH IG by local environments that may act, in their sphere of influence as reference directories, this IG supports two less restrictive National Directory API capability statements:

1. National Directory API Base Expanded requires that all resources be supported, indicated by **SHALL**, except for CareTeam, InsurancePlan, and Network, which are designated as **SHOULD support**.
2. National Directory API Base limits the required support, denoted by **SHALL**, to the following resources: Endpoint, Location, Organization, Practitioner, and PractitionerRole, primarily focusing on providing endpoint location services such as DirectTrust. The remaining resources are designated as **SHOULD** support.










{% include markdown-link-references.md %}

