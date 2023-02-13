### Validation and Verification

#### Validation

The National Directory of Healthcare Providers & Service (NDH) performs a validation process to check the general structure, content, etc. of the submission (e.g. checking consistency w/data type, required elements are present, references to existing resources are correct, codes are from appropriate value set etc.). Validation is critical for ensuring that users of a healthcare directory can rely upon the data in the directory. Validation can refer to separate but related processes: validation of FHIR resources (e.g. checking consistency w/data type, required elements are present, references to existing resources are correct, codes are from appropriate value set etc.).  Validation includes (but is not limited to) testing conformance to:

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

Verification is critical for ensuring that users of a healthcare directory can rely upon the data in the directory as being accurate, not just meeting a technical specification. 

Implementers will typically determine how primary source verification occurs operationally, based in part on the capabilities of the primary sources used for verification. For example, a primary source may already offer a mechanism like an API for verification content against its records. In other cases, an implementer may want to define an API that the primary source can access to push and/or pull content related to verification. Implementers may also consider less technical approaches, such as manual verification, or more stringent requirements, such as mailing a postcard to confirm an address.

Certain types of data may have different verification requirements. For example, verification of a relationship might require confirmation from each stakeholder participating in the relationship. Some data may have to be verified more frequently (e.g., license status), while other data can be verified once (e.g., education history) or not at all (e.g., a provider’s spoken language proficiency).

As with attestation, we expect National Directory implementers may use different approaches to verification. This guide provides profiles for a small number of suggested verification APIs. Implementers SHALL make any verification requirements, including but not limited to profiles and/or API documentation, available to any stakeholders involved in the verification process.

This implementation guide includes a profile for the VerificationResult resource for representing information about validation and verification. The VerificationResult resource includes a number of data elements designed to record information pertaining to the verification processes defined by implementers, as well as the outcome of verification for a specific data element/set of elements/resource. The verification profile includes data elements describing:

- The verification process, including the frequency of verification/reverification, verification status, verification date, and what it means if verification was unsuccessful
- The primary source against which data was verified, including the identity of the primary source, how a verificationcommunicates with the primary source, and whether the primary source can push updates about the data being validated
- The source of the data being verified (i.e. the attester), including the identity of the attesting individual, organization, and/or authorized representative and when the information was attested
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