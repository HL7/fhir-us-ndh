### Search Parameters

{% include StructureDefinition-ndh-OrganizationAffiliation-search-params.xhtml %}

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


#### Search Examples
Search OrganizationAffiliation resource based on the role of the participatingOrganization:
Get [base]/OrganizationAffiliation?code=HieInitiator  

<br/>
Search OrganizationAffiliation resources which have participatingOrganization present:
Get [base]/OrganizationAffiliation?_include=OrganizationAffiliation:participatingOrganization  

<br/>
Search Organization resource which associate with OrganizationAffiliation:
Get [base]/Organization?_revinclude=OrganizationAffiliation:participatingOrganization
