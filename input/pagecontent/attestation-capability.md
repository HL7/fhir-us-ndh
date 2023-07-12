### Capability Statements
The attestation actor has two capability statements. The first pertains to the attestation client, which submits the attested information to the NDH and assumes the role of a client for the NDH. The second is related to the attestation server, which receives the attested information on behalf of the NDH.

### Attestation Actor Capability Statement Summary

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

|Profile/Capability         | Attestation Server | Attestation Client
|**CareTeam**               |  SHALL             | SHOULD         
|**Endpoint**               |  SHALL             | SHOULD
|**HealthcareService**      |  SHALL             | SHOULD
|**InsurancePlan**          |  SHALL             | SHOULD
|**Location**               |  SHALL             | SHOULD
|**Network**                |  SHALL             | SHOULD
|**Organization**           |  SHALL             | SHOULD
|**OrganizationAffiliation**|  SHALL             | SHOULD
|**Practitioner**           |  SHALL             | SHOULD
|**PractitionerRole**       |  SHALL             | SHOULD
|**Restriction**            |  MAY               | 
|**Validation**             |  MAY               | 

Notes: 
1. Attestation Client Capabilities are based on Base Profiles.
2. Attestation Server Capabilities are based on Exchange Profiles.

### Attestation Client Capability Statement
Attestation Client SHALL support PUT and POSt methods.

### Attestation Server Capability Statement
Attestation Server SHALL support GET, PUT, and POST methods.