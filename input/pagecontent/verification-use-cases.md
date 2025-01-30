### Validation/Verification Use Cases
#### Validation of uploaded information
Following the receipt of attested information by the NDH, the FHIR validator will be employed to verify this information against the profiles, value sets, rules outlined in the NDH Implementation Guide. The objectives of this validation process are:
- To ascertain the data's integrity. This is accomplished by examining its adherence to the structure and norms defined in the NDH Implementation Guide, thereby reducing the likelihood of inaccuracies and inconsistencies.
- To foster interoperability. By validating the resources, we ensure they can be appropriately interpreted and handled by any system adhering to the FHIR standard.

#### Verification for a physician
 Joe Smith, MD submitted his personal, educational, licensing, and address details to the NDH. In turn, the NDH carries out verification of his educational credentials, licenses, and address information, cross-checking them against primary sources. Given a particular resource, it may hold multiple Verification Result instances, as certain verifications need to be performed periodically (like licenses) while others are only done once (such as education history).
 See the details on how the verification resource displays the outcomes of the checks, which encompass the verification of state licensure, physical address, and formal education.
- [VerificationResult 1 for Joe Smith MD]
- [VerificationResult 2 for Joe Smith MD]
- [Practitioner/JoeSmith]

#### Verification for an Organization
Hartford General Hospital attests itself with the NDH by providing its provider identifier, location, and area of expertise. Subsequently, the NDH takes responsibility for verifying their qualifications, licensing, and location data, cross-referencing these with primary sources.
To understand the process better, refer to the verification result example below. The scope of the checks includes the validation of state licensure, physical address, and provider ID.
- [VerificationResult 1 for Hartford General Hospital]
- [VerificationResult 2 for Hartford General Hospital]
- [Organization/Hospital]

#### Mutual attestation
Joe Smith, MD attested he is an Attending Provider at Hartford General Hospital. Hartford General Hospital also attested Joe Smith, MD is an Attending provider at the hospital. The NDH verifies the information which is attested from both parties and records the result in the Verification Result resource instance. See the detail below:
- [VerificationResult for JoeSmithHospitalRole]
- [Practitioner/JoeSmith]
- [Organization/Hospital]

{% include markdown-link-references.md %}