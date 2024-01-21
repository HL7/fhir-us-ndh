### Search Parameters
#### Search Parameter defined by the NDH IG
None

#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
Since there is no direct individual url for each Search Parameter defined by FHIR Serach Parameter Registry, we have provided the following links for you to access more information about them.

- [Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html)  
- [OrganizationAffiliation Search Parameter from Registry](https://hl7.org/fhir/R4/organizationaffiliation.html#search)

<style>
    
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>


| **SearchParameter Name** | **Type** | **Example** |
|--------------------------|----------|-------------|
| endpoint | reference |`GET [base]/OrganizationAffiliation?endpoint.connection-type=hl7-fhir-rest` |
| identifier | token |`GET [base]/OrganizationAffiliation?identifier=123456` |
| location | reference |`GET [base]/OrganizationAffiliation?location.address-state=FL` |
| network |  reference |`GET [base]/OrganizationAffiliation?network.type=ntwk&network.address-state=FL` |
| participating-organization | reference |`GET [base]/OrganizationAffiliation?participating-organization.address-state=FL` |
| primary-organization | reference |`GET [base]/OrganizationAffiliation?primary-organization.address-state=FL` |
| role | token |`GET [base]/OrganizationAffiliation?role=group` |
| service | reference |`GET [base]/OrganizationAffiliation?service.address-state=FL` |
| specialty | token |`GET [base]/OrganizationAffiliation?specialty=103T00000X` |


#### _include Search Parameter
<style>  
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **_include** | **Example** |
|--------------|-------------|
| OrganizationAffiliation:network |`GET [base]/OrganizationAffiliation?_include=OrganizationAffiliation:network` |
| OrganizationAffiliation:participating-organization |`GET [base]/OrganizationAffiliation?_include=OrganizationAffiliation:participating-organization` |
| OrganizationAffiliation:primary-organization |`GET [base]/OrganizationAffiliation?_include=OrganizationAffiliation:primary-organization` |

#### _revinclude Search Parameter
None

#### Special Search Parameters
The search parameters outlined above are straightforward for basic scenarios but have limitations in handling complex combination queries. To enhance these capabilities, employing the special search parameters [_filter](https://hl7.org/fhir/R5/search_filter.html#3.2.3) is recommended.

#### Why is the Qualification Extension Needed in Organization Affiliation?
The qualification extension in the OrganizationAffiliation Resource is significant as it offers a valid use case in real-world practice. For instance, an oncology group seeking privileges to practice in a hospital setting typically requires various approvals and certifications. This includes each physician in the group being licensed to practice medicine in the state where the hospital is located. Additionally, each physician must apply for and be granted the privilege to practice at the specific hospital. Furthermore, the oncology practice itself may also seek accreditation from organizations such as the Commission on Cancer (CoC) or the Quality Oncology Practice Initiative (QOPI), which can bolster its reputation and demonstrate a commitment to quality care. The qualifications of the oncology practice reflect its specific credential to the hospital where they practice. Although these qualifications can be documented in the oncology practice organization resource, an organization may have several qualifications, of which only certain ones are relevant to a specific practice setting. Therefore, it is necessary for both the OrganizationAffiliation Resource and the Organization Resource to include a qualification extension that serves different functions across various contexts.

#### Use cases for supporting IHE networks
NDH adopts the approach proposed in the IHE White Paper "Document Sharing Across Network Topologies" by utilizing the NDH OrganizationAffiliation resource to accommodate the various scenarios for federated, multi-hop, and proxied Endpoints. Specifically, we address how to represent the structure in the National Directory and ensure the successful execution of federated transactions, such as sending an XDR push to a Document Recipient, intended for one or more recipients. The approach also includes implementing specific mechanisms to solve particular problems, allowing each environment to only adopt the mechanisms it requires. For instance, if a directory can declare that all Organization.partOf relationships imply the flow of federated data, the OrganizationAffiliation profile may not be necessary. It is essential to ensure that all mechanisms work seamlessly together within the National Directory, taking into account multiple networks and perspectives.

An Example from IHE  "Document Sharing Across Network Topologies" White Paper. 
- Valley Region HIE has joined a nationwide health information exchange, Big Health Exchange.
- Big Health Exchange doesn't have any central service endpoints; it is peer to peer.
- New Hope is in Big Health Exchange to show how it has access the desired organizations by virtue of Valley HIE's participation in Big Health. New Hope will get to these organizations through the endpoints "Valley BigHx Responding Gateway".
- Valley HIE is leaving its PDQ and XDS internal service endpoints for its members, but has added initiating gateway endpoints for its members to access Big Health (as well as aggregate internal data).
- Async endpoints and their response endpoints to show that even though members of Valley HIE utilize central services, they need individual async endpoints to receive responses.

This example provides answers to the following questions: 
1. Is it possible to locate the endpoint in the National Directory? 
2. Can the endpoints be accessed by members of the organization? 
3. Is it appropriate to use the endpoint for the task at hand?

[More infromation in the White Paper](https://github.com/ihe/iti.topologies/blob/main/topologies.md#518-document-access-putting-it-all-together)

<figure>
    {% include OrganizationAffiliationIHE3.svg %}
    <figcaption> </figcaption>
</figure>

#### Search 
Search OrganizationAffiliation resource based on the role of the participatingOrganization:
Get [base]/OrganizationAffiliation?code=HieInitiator  

<br/>
Search OrganizationAffiliation resources which have participatingOrganization present:
Get [base]/OrganizationAffiliation?_include=OrganizationAffiliation:participatingOrganization  

<br/>
Search Organization resource which associate with OrganizationAffiliation:
Get [base]/Organization?_revinclude=OrganizationAffiliation:participatingOrganization