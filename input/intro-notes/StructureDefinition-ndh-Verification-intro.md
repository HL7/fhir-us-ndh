This profile sets minimum expectations for searching and/or fetching information associated with verification. It identifies which core elements, extensions, vocabularies and value sets SHALL be present in the VerificationResult resource when using this profile.

### Scope and Usage
Verification is critical for ensuring that users of a healthcare directory can rely upon the data in the directory as being accurate, not just meeting a technical specification. This Profile was developed to support the need for attested and/or verified provider data in many different healthcare workflows. It profiles the verificationResult resource to convey information about the attestation and/or verification status of any data in the National Directory of Healthcare Providers & Services (NDH), including how it was attested/verified, who attested/verified it, and where the data came from.

The Verification Resource Instance is created in two ways: either at the time of verification in the NDH or generated from the internal log files upon a request from the distributed work directories. For a given resource instance, it may be associated with multiple Verification resource instances. A given Verification resource instance may contain multiple target resources, which are related and are verified together at a given date time. 

### Relationship between VerificationResult Profile and Verification status Extension
The verification status extension is utilized in all NDH resource profiles, except for Restriction and Verification. Its purpose is to indicate the verification status of a given instance of an NDH resource.

The VerificationResult resource instances provide information on which verification process was performed, what was verified, when the verification took place, who performed the verification, and how it was verified for a given instance of a resource.

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



