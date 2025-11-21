### Attestation Use Cases
The actors:
1. The NDH attestation portal or application, we call them as the NDH client
2. The NDH server

#### Attest to individual information using unattested data
1. Practitioners access the NDH client with their assigned ID.
2. If the individual has an NPI number from NPPES, the NDH client may display their information for attestation.
3. The individual can accept, reject, or modify the presented information. 
4. After the individual submits the attested information, the NDH client will convert the information into FHIR resources and POST them into the NDH server.
5. The NDH server performs validation checks on the received FHIR resources and sends a response to the NDH client. In cases where the resources do not pass validation, an error message is returned to the NDH client. It is then incumbent upon the NDH client to address these issues appropriately, such as by rectifying the problems and/or alerting the attestor.

#### Attest to organizational information using unattested data
1. Organization representatives access the NDH client with their assigned ID.
2. If the Organization has an NPI number from the CMS National Plan and Provider Enumeration System (NPPES), the NDH client may display its information for attestation.
3. The representatives can accept, reject, or modify the information present. 
4. After the representatives submit the attested information, the NDH attestation client will convert the information into FHIR resources and POST them into the NDH server.
5. The NDH server performs validation checks on the received FHIR resources and sends a response to the NDH client. In cases where the resources do not pass validation, an error message is returned to the NDH client. It is then incumbent upon the NDH client to address these issues appropriately, such as by rectifying the problems and/or alerting the attestor.


#### Attest to multiple individuals using a CSV file or JSON upload
1. Authorized third party representatives access the NDH client with their unique identifiers.
2. Upload practitioners, organizations, healthcare services, care teams data into the NDH client using JSON, XML, or CSV files. 
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

