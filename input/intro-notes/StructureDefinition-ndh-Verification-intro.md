This profile sets minimum expectations for searching and/or fetching information associated with verification. It identifies which core elements, extensions, vocabularies and value sets SHALL be present in the VerificationResult resource when using this profile.

### Scope and Usage
This implementation guide was developed to support the need for verified provider data in many different healthcare workflows. It profiles the verificationResult resource to convey information about the varification status of any data in the National Directory of Healthcare Providers & Services (NDH), including how it was verified, who verified it, and where the data came from.

The Verification Resource Instance is created in two ways: either at the time of verification in the NDH or generated from the internal log files upon a requeste from the distributed work directories.

**Each VerificationResult resource must have:**

1. At least one target in `verificationResult.target`. The target element is used to specify the resource was verified. Verification against the primary source for the facts, such as NPI number, qualification, or address; or match the attested mutural relationship, such as a practitioner and organization in a practitionerRole.
2. A coded representation of how often the target is verification in `verificationResult.need`
3. A coded representation of the target’s current verification status in `verificationResult.status`
4. A date/time when the target’s verification status was last updated in `verificationResult.statusDate`
5. A coded representation of whether the target is verified against a primary source(s) or mutually attested resources in `verificationResult.validationType`
6. At least one coded/text representation of the process by which the target was verified in `verificationResult.validationProcess`
7. A coded representation of what happens if verification of the target fails in `verificationResult.failureAction`
8. For each present primary source, at least one coded/text representation of the type of primary source in `verificationResult.primarySource.type`. primarySource element is used for factual verification and not for relationship verification since there is no primary source for the relationship between a practitioner and an organization.
9. Information about the source of the attested information in `VerificationResult.attestation`, including a reference to a Practitioner, PractitionerRole, or Organization resource representing the source of the information in `VerificationResult.attestation.who`
10. For each verification described:
One reference to the Organization resource for the verification in verificationResult.validator.organization

**Profile specific implementation guidance:**  

The verificationResult resource includes basic information about how data was verified:

- `verificationResult.target` and `verificationResult.targetLocation` provide a means to describe the specific data that has been verified. The target is a reference to any resource, and the targetLocation is a FHIRpath expression indicating which specific element(s) in that resource have been verified.
- `verificationResult.need` and `verificationResult.frequency` describe when the target should be verified, and how often it must be verified. 
- `verificationResult.status` describes the current status of verification for the target. verificationResult.statusDate indicates when the verification status was last updated.
- `verificationResult.validationType` describes what the target is verified against (i.e. whether it is verified against a single primary source, whether it is validated against multiple sources, or whether it wasn’t verified because attested information is sufficient, such attesting a relationship)
- `verificationResult.validationProcess` describes the verification processes for verifying the target
- `verificationResult.lastPerformed` and `verificationResult.nextScheduled` describe the last completed and next scheduled dates of verification for the target
`verificationResult.failureAction` describes what happens if verification of the target fails

The resource also provides information about entities involved in the verification process:

**verificationResult.primarySource provides information about the primary source(s) the target was verified against**

- `who` identifies the primary source, and type indicates what the primary source is
- `communicationMethod` indicates how an entity can communicate with the primary source
- `validationStatus`, and `validationDate` describe the status of the verification of the target against the primary source
- `canPushUpdates` and `pushTypeAvailable` indicate whether a primary source can push updates or alerts (e.g. alerting NDH if a license board suspends a practitioner’s license)

**verificationResult.attestation provides information about who attested to the information being verified**

- `who` identifies the source of the attested information (a practitioner, practitionerRole, or organization), onBehalfOf identifies an entity the “who” is attesting on behalf of.
- `communicationMethod` indicates how attested information is submitted/retrieved
- `date` indicates when the information was attested to
- `sourceIdentityCertificate` and `proxyIdentityCertificate` assert the identity of the individual attesting to information and any proxy providing attested information on their behalf.
- `sourceSignature` and `proxySignature` assert that information was attested to/provided by the entity with the right to do so. `verificationResult.validator` provides information about the entity performing the verification of the target
- `organization` identifies the verifing organization, and `identityCertificate` asserts their identity
- `attestationSignature` asserts that the verification has validated the target


