### Capability Statements
To bolster the interoperability of dispersed workflow directories and maintain the accuracy of content data, this Implementation Guide (IG) establishes a suite of resource profiles. These profiles ensure uniform data structures for data exchange, enhancing consistency. Furthermore, the IG includes a collection of CapabilityStatements to instruct the servers of the distributed workflow directory on offering a consistent RESTful API, thereby facilitating reliable data queries by applications.

The following table enumerates the recommended CapabilityStatements for a range of distributed workflow directories:
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

Distributed Workflow Directory Server Type | Description |
Endpoint Basic                 | Capabilities for a Basic Query Server for Health Services where Endpoint search capabilities are met
Endpoint Expanded              | Capabilities for a Basic Distributed Workflow Query Server for where Endpoint expanded search capabilities are met
Health and Human Service Basic | Capabilities for a Federated Query Server for Health or Human Services where endpoint search capabilities are met

### Distributed Workflow Directory Query Capability Statement Summary


<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

|Profile/Capability| Endpoint Basic | Endpoint Expanded | Health and Human Service Basic | Health and Human Service Expanded | Human Service Basic | Human Service Expanded | Provider Basic | Provider Expended | Payer Provider Network
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
|**PractitionerRole**       |  SHALL | SHALL | SHALL | SHOULD | SHOULD| SHALL | SHALL | SHALL | SHALL |
|**Restriction**            |  MAY   | MAY   | MAY   | MAY    | MAY   | MAY   | MAY   | MAY   |       |
|**Validation**             |  MAY   | MAY   | MAY   | MAY    | MAY   | MAY   | MAY   | MAY   |       |

Notes:
1. Payer Provider Network Capabilities are based on the Payer Provider Network Qurey Profiles 
2. All other Capabilities are based on the base Profiles

### Distributed Workflow Directory Query Endpoint Capability Statement:

#### Endpoint Basic
[wds-Endpoint-Basic-Query-CapabilityStatement]

#### Payer Provider Network
[wds-Payer-Provider-Network-Query-CapabilityStatement]


{% include markdown-link-references.md %}
