### Distributed Workflow Directory Query Capabality Statement Summary


<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

|Profile/Capability| Endpoint Basic | Endpoint Expanded | Health and Human Service Basic | Health and Human Service Expanded | Human Service Basic | Human Service Expanded | Provider Basic | Provider Expended | Plan-Net
| ---------------- | :---: | :------------: | :----------------------: | :-------------------------------: | :-----------: | :--------------------: | :------: | :---------------: |
|**CareTeam**               |  MAY | MAY | MAY | SHOULD | MAY | MAY | MAY | MAY | |
|**Endpoint**               |  SHALL | SHALL | SHALL | SHALL | SHALL | SHALL | SHALL | SHALL | SHALL |
|**HealthcareService**      |  MAY   | SHALL | MAY   | SHALL | SHALL | SHALL | SHOULD| SHALL | SHALL |
|**InsurancePlan**          |  MAY   | MAY   | MAY   | SHALL | MAY   | SHALL | MAY   | SHOULD| SHALL |
|**Location**               |  SHOULD| SHALL | SHALL | SHALL | SHALL | SHALL | SHALL | SHALL | SHALL |
|**Network**                |  MAY   | MAY   | SHALL | SHALL | SHOULD| SHALL | MAY   | SHOULD| SHALL |
|**Organization**           |  SHALL | SHALL | SHALL | SHALL | SHALL | SHALL | SHALL | SHALL | SHALL |
|**OrganizationAffiliation**|  MAY   | MAY   | MAY   | SHALL | SHOULD| SHALL | SHOULD| SAHLL | SHALL |
|**Practitioner**           |  SHOULD| SHALL | SHALL | SHALL | MAY   | MAY   | SHALL | SHALL | SHALL |
|**PractitionerRole**       |  SHALL | SHALL | SHALL | SHOULD| SHOULD| SHALL | SHALL | SHALL | SHALL |
|**Restriction**            |  MAY   | MAY   | SHALL | SHALL | SHALL | SHALL | SHALL | SHALL | |
|**Validation**             |  MAY   | MAY   | MAY   | MAY   | MAY   | MAY   | MAY   | MAY   | |

Notes:
1. Plan-Net Capabilities are based on the Plan-Net Qurey Profiles 
2. All other Capabilities are based on the base Profiles

### Distributed Workflow Directory Query Endpoint Capabality Statement:

#### Endpoint Basic
[wds-Endpoint-Basic-Query-CapabilityStatement]

#### Plan Net
[wds-Plan-Net-Query-CapabilityStatement]


{% include markdown-link-references.md %}
