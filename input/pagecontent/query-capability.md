### Capability Statements
This Implementation Guide (IG) summarizes the distributed workflow directories into the following types:
- **Endpoint directories** - Includes at a minimum Endpoint and Organization resources, and possibly other resources as well.
- **Health and Human Service directories** - Includes at a minimum Endpoint, Organization, Location, Network, Proactitioner, PractitionerRole resources, and possibly other resource as well for Health and Human Services
- **Human Service directories** - Includes at a minimum Endpoint, HealthcareService, Location, Organization, and possibly other resources as well for Human Services
- **Provider directories** - Includes at a minimum Endpoint, Location, Organization, Practitioner, PractitionerRole, and possibly other resources as well for Providers

For each type of the directory, the IG provides two FHIR Restful API guidance:
- **Basic**: Should include APIs that at the very least support resources.
- **Extended**: Beyond the basic inclusion, it could encompass additional APIs for other resources.

This IG also provides the FHIR Restful API guidance for the **Payer Provider Network directories**. 

The following table enumerates the recommended CapabilityStatements for a range of distributed workflow directories:
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

### Distributed Workflow Directory Query Capability Statement Summary

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

|Profile/Capability| [Endpoint Basic] | [Endpoint Expanded] | [Health and Human Service Basic] | [Health and Human Service Expanded] | [Human Service Basic] | [Human Service Expanded] | [Provider Basic] | [Provider Expanded] | [Payer Provider Network]
| ---------------- | :---: | :------------: | :----------------------: | :-------------------------------: | :-----------: | :--------------------: | :------: | :---------------: |
|**CareTeam**               |  MAY   | MAY   | MAY   | SHOULD | MAY   | MAY   | MAY   | MAY   |       |
|**Endpoint**               |  SHALL | SHALL | SHALL | SHALL  | SHALL | SHALL | SHALL | SHALL | SHALL |
|**HealthcareService**      |  MAY   | SHALL | MAY   | SHALL  | SHALL | SHALL | SHOULD| SHALL | SHALL |
|**InsurancePlan**          |  MAY   | MAY   | MAY   | SHALL  | MAY   | SHALL | MAY   | SHOULD| SHALL |
|**Location**               |  SHOULD| SHALL | SHALL | SHALL  | SHALL | SHALL | SHALL | SHALL | SHALL |
|**Network**                |  MAY   | MAY   | SHALL | SHALL  | SHOULD| SHALL | MAY   | SHOULD| SHALL |
|**Organization**           |  SHALL | SHALL | SHALL | SHALL  | SHALL | SHALL | SHALL | SHALL | SHALL |
|**OrganizationAffiliation**|  MAY   | MAY   | MAY   | SHALL  | SHOULD| SHALL | SHOULD| SAHLL | SHALL |
|**Practitioner**           |  SHOULD| SHALL | SHALL | SHALL  | MAY   | MAY   | SHALL | SHALL | SHALL |
|**PractitionerRole**       |  SHOULD| SHALL | SHOULD| SHALL  | SHOULD| SHALL | SHALL | SHALL | SHALL |
|**Restriction**            |  MAY   | MAY   | MAY   | MAY    | MAY   | MAY   | MAY   | MAY   |       |
|**Validation**             |  MAY   | MAY   | MAY   | MAY    | MAY   | MAY   | MAY   | MAY   |       |

Notes:
1. Payer Provider Network Capabilities are based on the Payer Provider Network Query Profiles 
2. All other Capabilities are based on the base Profiles



{% include markdown-link-references.md %}
