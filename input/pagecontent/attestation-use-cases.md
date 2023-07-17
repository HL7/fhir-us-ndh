### Attestation Use Cases
The actors:
1. The NDH attestation portal or application, we call them as the NDH client
2. The NDH server

#### Attest to individual information using unattested data
1. Practitioners access the NDH client with their assigned ID.
2. If the individual has an NPI number from NPPES, the NDH client may display their information for attestation.
3. The individual can accept, reject, or modify the information present. 
4. After the individual submits the attested information, the NDH client will convert the information into FHIR resources and POST them into the NDH server.
5. The NDH server performs validation checks on the received FHIR resources and sends a response to the NDH client. In cases where the resources do not pass validation, an error message is returned to the NDH client. It is then incumbent upon the NDH client to address these issues appropriately, such as by rectifying the problems and/or alerting the attestor.

#### Attest to organizational information using unattested data
1. Organization representatives access the NDH client with their assigned ID.
2. If the Organization has an NPI number from the CMS National Plan and Provider Enumeration System (NPPES), the NDH client may display their information for attestation.
3. The representatives can accept, reject, or modify the information present. 
4. After the representatives submit the attested information, the NDH attestation client will convert the information into FHIR resources and POST them into the NDH server.
5. The NDH server performs validation checks on the received FHIR resources and sends a response to the NDH client. In cases where the resources do not pass validation, an error message is returned to the NDH client. It is then incumbent upon the NDH client to address these issues appropriately, such as by rectifying the problems and/or alerting the attestor.


#### Attest to multiple individuals using a CSV file or JSON upload
1. Authorized third party representatives access the NDH client with their unique identifiers.
2. Upload practitioners, organizations, healthcare services, care teams data into the NDH client using json, xml, or cvs files. 
3. Upon the uploading, the NDH client converts the upload file into FHIR resources and POST into the NDH server.
4. The NDH server performs validation checks on the received FHIR resources and sends a response to the NDH client. In cases where the resources do not pass validation, an error message is returned to the NDH client. It is then incumbent upon the NDH client to address these issues appropriately, such as by rectifying the problems and/or alerting the attestor.

#### Attest to Payer network
1. Authorized representatives from third-party or payer network entities gain access to the NDH client using their distinct identifiers.
2. These representatives have the option to either directly input data or upload networks and/or insurance plan information into the NDH client, utilizing formats such as JSON, XML, or CSV files. 
3. Upon the uploading, the NDH client converts the upload file into FHIR resources and POST into the NDH server.
4. The NDH server performs validation checks on the received FHIR resources and sends a response to the NDH client. In cases where the resources do not pass validation, an error message is returned to the NDH client. It is then incumbent upon the NDH client to address these issues appropriately, such as by rectifying the problems and/or alerting the attestor.

#### Attest to endpoints
The ownership of FHIR endpoints often lies with the healthcare organizations, such as hospitals, health systems, and EHR (Electronic Health Record) vendors, that implement them. However, it's also possible that third-party organizations providing interoperability services or software-as-a-service (SaaS) healthcare platforms could own and manage FHIR endpoints.
Therefore, attestation of endpoints is the responsibility of the organization that owns them.




{% include markdown-link-references.md %}


<!--
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| Data Item | Data | Confirm | Updates |
| --------- | ---- | ------- | ------- |
| First Name | Joe | Yes | |
| Last Name | Smith | Yes | |
| NPI | 1245319599 | Yes | |
| Home Address | 501 Echo Lake Chicago, IL 60661 | Yes | |
| Work Address | 400 Lee Rd Chicago, IL 60662 | Yes | |
| Home Telecom | 555-123-4444 | No | 555-123-6666 |
| Work Telecom | 555-123-1234 | Yes | |
| qualification | Internal Medicine Physician | Yes | |

**Step-3**
The NDH creates the Practitioner resource for Joe Smith along with associated VerificationResult and Usage Restrication Resorces  
See the Resources:  

* [Practitioner/JoeSmith]
* [VerificationResult/Verify-JoeSmith]


1. Locate questionnaire (Q) to use for given context (Forms for Practitioner, Organization, ...)
2. load/render Q (pre-populate Q with data)
3. User enters data (local validation may occure during data entry)
4. Questionnaire Response (QR) is validated by server
    - errors, warnings, issure reported to the user
5. QR is saved to the target server 
    - data extracted into other resources

Q resource 
QR resource
Other: extensions, operation, profiles(normally do not it, just define the Q), IG
Q:
- Metadata
- items (nested)
    - LinkId
    - Text
    - Item Type (group, display, string, text, open-choice)
    - Repeats
    - Data rules 
    - Formatting hint

QR: 
    - Context
    - Items (nested)
        -LinkId
        -Text
LinkId must match

Interaction with terminologies
item types choice, open choice
Valueset reference item.answerValueSet
Control selection 
    - radio buttons, comboboxes, checkboxes autocomplet

Dynamic behavious - enable when, enableBehavior (all, any)

Extensions to the core definitions
- advanced redering
- advanced form behavious
- adaptive forms
- import data into forms
- extraction of data from forms

Form filler
1. Form Manager (populate Q; read Valueset)
2. Form Response Manager (query, create, update, extract QR )
3. Form Receiver (process QR)
4. Form Archiver (create QR)

initialExpression for the launchContext extension and itemPopulationContext extension to populate Q elements based on information from outside QR


-->

