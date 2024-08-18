### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| **SearchParameter Name** |**Type**| **Example** |
| [location](SearchParameter-organizationaffiliation-location.html) | reference |`GET [base]/OrganizationAffiliation?location.address-state=CT` |
| [participating-organization](SearchParameter-organizationaffiliation-participating-organization.html) | reference |`GET [base]/OrganizationAffiliation?participating-organization.address-state=FL`|
| [primary-organization](SearchParameter-organizationaffiliation-primary-organization.html) | reference |`GET [base]/OrganizationAffiliation?primary-organization.address-state=FL` |
| [verification-status](SearchParameter-organizationaffiliation-verification-status.html) | token | `GET [base]/OrganizationAffiliation?verification-status=complete` |

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
| network |  reference |`GET [base]/OrganizationAffiliation?network.type=ntwk&network.address-state=FL` |
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


#### Search 
Search OrganizationAffiliation resource based on the role of the participatingOrganization:
Get [base]/OrganizationAffiliation?code=HieInitiator  

<br/>
Search OrganizationAffiliation resources which have participatingOrganization present:
Get [base]/OrganizationAffiliation?_include=OrganizationAffiliation:participatingOrganization  

<br/>
Search Organization resource which associate with OrganizationAffiliation:
Get [base]/Organization?_revinclude=OrganizationAffiliation:participatingOrganization