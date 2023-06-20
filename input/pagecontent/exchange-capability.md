### Exchange Capability Statements


### Conformance Requirements
The primary focus of this implementation guide is a RESTful API for obtaining data from a FHIR-enabled Exchange Directory of National Directory of Healthcare Providers & Services (NDH). This API currently only supports a one-directional flow of information from a FHIR-enabled NDH Exchange Directory into distributed/local environments (i.e., HTTP GETs).

In order to facilitate the progressive advancement of the NDH and ensure its application in various essential domains, this Implementation Guide (IG) offers supplementary Capability Statements tailored to different use cases. These statements aim to support the ongoing development of NDH and enable its integration into other core directories.

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

|Profile/Capability         | NDH Exchange | Limited Exchange | Other Core Directory |
| ---------------- ---------| ------------ | ---------------- | -------------------- |
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


#### The NDH Exchange Capability Statement
***[ndh-exchange-CapabilityStatement]***

#### The Limited Exchange Capability Statement

#### Other Core Directory Capability Statement

{% include markdown-link-references.md %}

