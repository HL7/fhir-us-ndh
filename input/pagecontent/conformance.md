### Conformance
This implementation guide uses standardized terminology—**SHALL**, **SHOULD**, and **MAY**—to indicate the level of obligation associated with specific requirements, which is essential for assessing conformance with the guide. Additionally, the guide’s profiles utilize the **mustSupport** element to highlight data elements that systems are expected to handle. The definitions and expectations for interpreting these terms are established in the FHIR core specification.

#### Mandatory Elements
Mandatory elements are elements with a minimum cardinality of 1 (min=1). When an element is Mandatory, the data is expected to be present.

#### Must Support
When querying and reading the National Directory Profiles defined in this IG, Must Support on any profile data element **SHALL** be interpreted as follows:  

National Directory API actor **SHALL** be capable of capturing and populating all Must Support data elements as part of the query results.
- In situations where information on a particular Must Support data element is not present and the minimum cardinality is 0, the National Directory API actor **SHALL NOT** include the data elements in the resource instance returned as part of the query results.
- In situations where information on a particular data element is not present and the minimum cardinality is >0 SHALL send the reason for the missing information using values (such as nullFlavors) from the value set where they exist or use the dataAbsentReason extension.

#### Relationship to US Core 
This implementation guide was written for a US audience and profiles resources from US Core STU 6.1.0, where available (Practitioner, PractitionerRole,Organization, and Location), and otherwise from R4.0.1 (Consent, Endpoint, HealthCareService, InsurancePlan, OrganizationAffiliation, VerificationResult). The Network profile is based on USCore Organization, since there was no contradiction between the USCore profile and the NDH requirements. However, the NPI and CLIA identifier types, which are Must-Support, are clearly intended for provider organizations only and are not expected to be populated for other organization types. 

#### Security conformance 
##### Requirements for NDH actors:

- NDH servers **SHALL** support the [SMART Backend Services Authorization Guide](http://www.hl7.org/fhir/smart-app-launch/backend-services.html) to collect the necessary requestor information appropriate for making the NDH data request.
- NDH servers **SHALL** support [FAST Security](http://hl7.org/fhir/us/udap-security/STU1/).
- NDH servers **SHALL** reference a single time source to establish a common time base for security auditing across the system.
- NDH servers **SHALL** support the AuditEvent resource to capture audit logs of the various transactions. NDH actors SHOULD capture as many AuditEvent resource data elements as appropriate based on requirements of FHIR Audit Logging and local policies.
- NDH transactions **SHALL** support TLS version 1.2 or higher to secure the transmission channel unless the transmission is taking place over a more secure network.(Using TLS even within a secured network environment is still encouraged to provide defense in depth.) US Federal systems implementing NDH actors **SHOULD** conform with FIPS PUB 140-2.
- NDH servers **SHOULD** retain Provenance information using the FHIR Provenance resource.
- NDH clients **SHALL** support the SMART Backend Services Authorization Guide, the HL7 UDAP Guide, or both
- NDH clients **MAY** choose which OAuth profile to use in a particular exchange workflow. 


##### Requirements for the overall program/system:

- NDH implementers in the US Federal systems **SHOULD** conform with the risk management and mitigation requirements defined in NIST 800 series documents associated with providing access to PII.  The coordination of relevant risk management and the related security and privacy controls - policies, administrative practices, and technical controls - **SHOULD** be defined in the Data Use Agreements.
- The time service used for auditing SHOULD be documented in the Business Associate Agreements.

{% include markdown-link-references.md %}