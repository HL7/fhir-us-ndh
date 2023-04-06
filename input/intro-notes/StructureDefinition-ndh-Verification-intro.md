This profile sets minimum expectations for searching and/or fetching information associated with verification. It identifies which core elements, extensions, vocabularies and value sets SHALL be present in the VerificationResult resource when using this profile.

### Scope and Usage
Verification is critical for ensuring that users of a healthcare directory can rely upon the data in the directory as being accurate, not just meeting a technical specification. This Profile was developed to support the need for attested and/or verified provider data in many different healthcare workflows. It profiles the verificationResult resource to convey information about the attestation and/or varification status of any data in the National Directory of Healthcare Providers & Services (NDH), including how it was attested/verified, who attested/verified it, and where the data came from.

The Verification Resource Instance is created in two ways: either at the time of verification in the NDH or generated from the internal log files upon a requeste from the distributed work directories.

**Each VerificationResult resource must have:**

1. `verificationResult.target` - at least one target element to specify the resource instance was verified or attested
2. `verificationResult.need` -  how often the target is verified.  
3. `verificationResult.status` - the target’s current verification status.
4. `verificationResult.statusDate` - date/time when the target’s verification status was last updated
5. `verificationResult.validationType` - whether the target is verified against a primary source(s), mutually attested resources, or nothing
6. `verificationResult.validationProcess` - at least one coded/text representation of the process by which the target was verified 
7. `verificationResult.failureAction` - representation of what happens if verification of the target fails
8. `verificationResult.primarySource.type` - for each present primary source, at least one coded/text representation of the type of primary source
9. `VerificationResult.attestation` - information about the source of the attested information, including a reference to a Practitioner, PractitionerRole, or Organization resource representing the source of the information in `VerificationResult.attestation.who`. `verificationResult.attestation.onBehalfOf` for when the who is asserting on behalf of another (organization or individual)
10. `verificationResult.validator.organization` - organization verifies the information 

**Profile specific implementation guidance:**  

The verificationResult resource includes basic information about how data was verified:

- `verificationResult.target` and `verificationResult.targetLocation` provide a means to describe the specific data that have been verified. The target is a reference to any resource instance, and the targetLocation is a FHIRpath expression indicating which specific element(s) in that resource have been verified.
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

### Relationship between VerificationResult Profile and Verification status Extension
The verification status extension is utilized in all NDH resource profiles, except for Restriction and Verification. Its purpose is to indicate the verification status of a given instance of an NDH resource.

The VerificationResult resource instance provides information on which verification process was performed, what was verified, when the verification took place, who performed the verification, and how it was verified for a given instance of a resource.

It is important to note that even if a resource instance has a verification status of "not-required," there shall still be a VerificationResult resource instance associated with it. The VerificationResult would provide details on why the verification was not required, how it was determined that verification was not required, and any other relevant information related to the verification process.

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

**Verification** | **Value**
.target | Location/123
.need | none
.status | attested
.statusDate | 2023/04/04
.validationType | nothing
.validationProcess | in-context
.failureAction | none
.attestation.who | Organization/123
.attestation.communicationMetod | manual, portal
.attestation.date | 2023/04/04



