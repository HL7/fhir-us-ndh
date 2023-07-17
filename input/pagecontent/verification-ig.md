### Validation and Verification

#### Validation

The National Directory of Healthcare Providers & Service (NDH) performs a validation process to check the general structure, content, etc. of the submission (e.g., checking consistency w/data type, required elements are present, references to existing resources are correct, codes are from appropriate value set etc.). Validation is critical for ensuring that users of a healthcare directory can rely upon the data in the directory. Validation can refer to separate but related processes: validation of FHIR resources (e.g., checking consistency w/data type, required elements are present, references to existing resources are correct, codes are from appropriate value set etc.).  Validation includes (but is not limited to) testing conformance to:

- FHIR R4.0.1
- US Core 5.0.1 (where applicable)
- National Directory Exchange IG technical specifications
- Conformance includes compliance to
  - Data Types
  - Cardinality
  - Value Sets
  - Invariants
  - References
  - Extensions

#### Verification

Verification is critical for ensuring that users of a healthcare directory can rely upon the data in the directory as being accurate, not just meeting a technical specification. The specifics regarding what data should be verified against a primary source is dictated by a policy, which falls outside the purview of this Implementation Guide (IG). However, this IG does provide guidance on the methodology for performing such verification.

The NDH comprises three data categories: 
1. Unattested data sourced from other attested data pools like the CMS National Plan and Provider Enumeration System (NPPES) and the Medicare Provider Enrollment, Chain, and Ownership System (PECOS) 
2. Updated and changed data specific to individuals or organizations 
3. Attested and/or verified data

Only the third category data is accessible to distributed workflow directories, whereas the first and second category data are not. Each resource instance in the third category has an attested or verification status indicating whether it has been completely verified, incompletely verified, or does not require verification.

A complete verified resource instance means that all its elements have been factually verified through primary sources, such as a medical license that has been verified by the state medicine board. It can also mean that the mutual relationship between the parties has been attested by both the practitioner and the organization. To learn more about complete verification, you can refer to the associated verification resource instance for more information. 

An incomplete verified resource instance refers to information that has not yet been verified, is currently being verified but not yet completed, or the verification has expired and needs to be reverified. To learn more about the incomplete verification resource instance, you can refer to the associated verification resource instance for details. 

Resource instances with a "not required" status are not required to be verified, but have been attested. They also have a verification resource instance associated with them, which indicates that no further verification or mutual attestation is needed.

Incomplete verified data can be valuable for distributed workflow directories. For example, a distributed workflow directory may want to have information about a physician who has recently obtained their license to practice medicine, even if the information has not yet been fully verified. Similarly, a hospital may want to list a physician on their roster of individuals with admitting privileges, even if the physician's attestation to the hospital is still pending.

Although incomplete verification instances may have some information pending verification, they can still be valuable to a distributed workflow directory. The directory can examine the data to identify the resource instances that have not yet been fully verified, and then request the verification resource instance for further details. This approach can provide useful insights, rather than simply disregarding incomplete verification instances. For completely verified resources, the verification resource provides details of the verification process and its outcome.

Implementers will typically determine how primary source verification occurs operationally, based in part on the capabilities of the primary sources used for verification. For example, a primary source may already offer a mechanism like an API for verification content against its records. In other cases, an implementer may want to define an API that the primary source can access to push and/or pull content related to verification. Implementers may also consider less technical approaches, such as manual verification, or more stringent requirements, such as mailing a postcard to confirm an address.

Certain types of data may have different verification requirements. For example, verification of a relationship might require confirmation from each stakeholder participating in the relationship. Some data may have to be verified more frequently (e.g., license status), while other data can be verified once (e.g., education history) or not at all (e.g., a provider’s spoken language proficiency).

As with attestation, we expect National Directory implementers may use different approaches to verification. This guide provides profiles for a small number of suggested verification APIs. Implementers SHALL make any verification requirements, including but not limited to profiles and/or API documentation, available to any stakeholders involved in the verification process.

This implementation guide includes a profile for the VerificationResult resource for representing information about validation and verification. The VerificationResult resource includes a number of data elements designed to record information pertaining to the verification processes defined by implementers, as well as the outcome of verification for a specific data element/set of elements/resource. The verification profile includes data elements describing:

- The verification process, including the frequency of verification/reverification, verification status, verification date, and what it means if verification was unsuccessful
- The primary source against which data was verified, including the identity of the primary source, how a verification communicates with the primary source, and whether the primary source can push updates about the data being validated
- The source of the data being verified (i.e., the attester), including the identity of the attesting individual, organization, and/or authorized representative and when the information was attested
- The entity conducting verification, including its identity and when it verifies the data
- The outcome of verification for the targeted data

Verification may occur on the total contents of a resource, a collection of elements in a resource, or a single element. Any entity with access to a data element in a verified healthcare directory SHOULD also have access to any verification information pertaining to that element.

Verification Methods

- Verify data against a primary source (e.g., verifying an address using Post Office records) Primary source – “authoritative” source  [who is responsible for issuing the data], assertions that cannot be easily verified, set of assertions that are mutually verified (relationships) 
  - Primary source verification methods, typically based on the capabilities of the primary source:
    - a mechanism like an API for verification of content against its records,
    - define an API that the primary source can access to push and/or pull content related to verification,
    - less technical approaches, such as manual verification, or 
    - more stringent requirements, such as mailing a postcard to confirm an address.
- Verify relationships against “partner” (e.g., declaring relationship between two organizations or an organization and an individual)


#### Redundancy & Ambiguity Across Resources
Although FHIR resources define discrete business objects, related resources may have similar data elements. For example, the HealthcareService, PractitionerRole, and Location resources all include data elements describing availability. In some circumstances, values in these common data elements may not align across resources, potentially creating ambiguity. For example, in this IG, a Location resource might indicate that the location no longer accepts patients. However, a PractitionerRole resource for a provider working at the location might indicate that the provider is accepting patients (e.g., by referral only). In some cases, these inconsistencies are valid representations of the complexities of healthcare systems. In others, data might have been entered in error, outdated, or otherwise inaccurate.

The FHIR specification does not provide guidance on managing common elements across resources to reduce redundancy or ambiguity. Likewise, this implementation guide does not provide additional guidance. Implementations should consider further constraining profiles, creating invariants, or requiring data sources (e.g., attesters) to contribute data in a consistent format. Some resources include elements for describing exceptions, such as the AvailabilityExceptions field on HealthcareService, Location, and PractitionerRole. Additionally, verification processes may help discover and address inconsistencies across resources.