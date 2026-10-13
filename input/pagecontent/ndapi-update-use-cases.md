### Support updating of electronic service information to enable the electronic exchange of information.
Electronic Service Information can be updated by submitting any combination of data elements in a NDH entry using a conformant resource submission to create, revise, or deactivate one or more records. These data elements in a submission can include demographic data, geographic data, individual provider data, specialty data, National Provider Identity (NPI), organization, Tax Identification Number (TIN), etc. A submission may affect a single record, or a set of related records submitted together.

#### Use Case Actors
This diagram illustrates the interactions of the actors that contribute data to the National Directory for Healthcare (NDH).

<figure>
    {% include Ndh-update-usecase-actor.svg %}
    <figcaption></figcaption>
</figure>
<br />

#### Information Flow
This diagram shows the information flow for this Use Case including the major senders and receivers (Actors) involved and the type(s) of information shared.

<figure>
    {% include Update-Information-flow.svg %}
    <figcaption></figcaption>
</figure>
<br />

An Actor maintaining Electronic Service Information sends one or more resources to the NDH. The NDH validates each resource against the profiles, value sets, and invariants defined in this Implementation Guide. When the submission is valid, the NDH stores the data and returns the resulting resource together with its new version. When the submission is not valid, the NDH returns an error with an `OperationOutcome` describing each problem, and no data is stored. It is then incumbent upon the submitter to address these issues appropriately, such as by rectifying the problems and resubmitting.

Submitters identify the record they are maintaining by business identifier rather than by the server-assigned logical id. An organization knows its own NPI, and a payer knows its own payer identifier, but neither necessarily knows the `id` the NDH assigned to the corresponding resource. Conditional update allows a submitter to maintain a record using the identifier it already controls. The NDH should support the interactions in the table below, but not necessarily limited to:

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| Interaction | Name | Description | Examples |
| 1 | Create | Submit a new record when no record yet exists; the NDH assigns the logical id and returns it in the `Location` header | ```POST [base]/Practitioner``` <br /> Returns ```201 Created``` |
| 2 | Update | Replace an existing record when the submitter knows the logical id assigned by the NDH | ```PUT [base]/Practitioner/HansSolo``` <br /> Returns ```200 OK``` |
| 3 | Conditional update | Create or replace a record selected by business identifier, without knowing the logical id; the NDH creates the record if no match is found, updates it if exactly one match is found, and rejects the submission if multiple matches are found | Maintain a practitioner by NPI <br /> ```PUT [base]/Practitioner?identifier=http://hl7.org/fhir/sid/us-npi|1003357849``` <br /><br /> Maintain an organization by NPI <br /> ```PUT [base]/Organization?identifier=http://hl7.org/fhir/sid/us-npi|1518575422``` |
| 4 | Partial update | Change individual elements of a record without resubmitting the whole resource | Close a network relationship <br /> ```PATCH [base]/PractitionerRole/HansSoloRole1``` |
| 5 | Deactivate | Mark a record as no longer in effect; directory records are retained for history and are not removed with `DELETE` | ```PATCH [base]/Organization/Hospital``` setting ```active``` to ```false``` |
| 6 | Submit a set of records | Submit several interdependent resources together so that references between them resolve | ```POST [base]``` with a ```Bundle``` of type ```transaction``` |

Conditional update is the interaction most submitters use. The NDH resolves the submitted business identifier to a single record, so a submitter that repeats the same submission does not create duplicates.

#### Updating the data held in the NDH
The following sections describe the data an actor maintains in the NDH, and the resource used to maintain it. Each resource is submitted against the corresponding NDH profile, and each submission carries `meta.profile` so the NDH validates against the intended profile.

##### Location data
Locations describe where services are delivered. Organizations maintain the locations they operate, including address, operating hours, and accessibility.

```
PUT [base]/Location?identifier=http://example.org/locations|HospLoc1
```

```json
{
  "resourceType": "Location",
  "meta": {
    "lastUpdated": "2025-10-13T09:00:00.000+00:00",
    "profile": [
      "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Location"
    ]
  },
  "status": "active",
  "name": "Hartford General Hospital Location 1",
  "managingOrganization": {
    "reference": "Organization/Hospital"
  }
}
```

##### Group data
Groups represent multidisciplinary provider groups so that team-based programs and services can be discovered. Organizations maintain the membership of the group and the services it offers.

```
PUT [base]/Group/BehavioralHealthGroupAtBurrClinic
```

```json
{
  "resourceType": "Group",
  "id": "BehavioralHealthGroupAtBurrClinic",
  "meta": {
    "lastUpdated": "2025-10-13T09:00:00.000+00:00",
    "profile": [
      "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Group"
    ]
  },
  "active": true,
  "type": "practitioner",
  "actual": true,
  "extension": [
    {
      "url": "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-location-reference",
      "valueReference": {
        "reference": "Location/HospLoc1"
      }
    }
  ]
}
```

##### Organization data
Organizations maintain their own identity, including name, identifiers, contact details, and the parent organization they belong to.

```
PUT [base]/Organization?identifier=http://hl7.org/fhir/sid/us-npi|1518575422
```

```json
{
  "resourceType": "Organization",
  "meta": {
    "lastUpdated": "2025-10-13T09:00:00.000+00:00",
    "profile": [
      "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Organization"
    ]
  },
  "active": true,
  "identifier": [
    {
      "system": "http://hl7.org/fhir/sid/us-npi",
      "value": "1518575422"
    }
  ],
  "name": "Hartford General Hospital"
}
```

##### Practitioner data
Practitioners maintain their own demographic information, including name, identifiers, qualifications, and communication languages.

```
PUT [base]/Practitioner?identifier=http://hl7.org/fhir/sid/us-npi|1003357849
```

```json
{
  "resourceType": "Practitioner",
  "meta": {
    "lastUpdated": "2025-10-13T09:00:00.000+00:00",
    "profile": [
      "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Practitioner"
    ]
  },
  "active": true,
  "identifier": [
    {
      "system": "http://hl7.org/fhir/sid/us-npi",
      "value": "1003357849"
    }
  ],
  "name": [
    {
      "family": "Solo",
      "given": [
        "Hans"
      ]
    }
  ]
}
```

##### Practitioner role data
PractitionerRole records the relationship between a practitioner and an organization, including the location where the service is provided, the specialty, the network participated in, and whether new patients are accepted. As described in the [Query Use Cases](ndapi-query-use-cases.html), each PractitionerRole should reference a single network, so that a change in one network relationship is made by closing one role and submitting another.

```
PUT [base]/PractitionerRole/HansSoloRole1
```

```json
{
  "resourceType": "PractitionerRole",
  "id": "HansSoloRole1",
  "meta": {
    "lastUpdated": "2025-10-13T09:00:00.000+00:00",
    "profile": [
      "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-PractitionerRole"
    ]
  },
  "active": true,
  "period": {
    "start": "2022-01-01"
  },
  "practitioner": {
    "reference": "Practitioner/HansSolo"
  },
  "organization": {
    "reference": "Organization/HansSoloClinic"
  },
  "location": [
    {
      "reference": "Location/HansSoloClinic"
    }
  ]
}
```

When a practitioner leaves a network, the role is closed by recording the end of its period rather than by removing the record.

```
PATCH [base]/PractitionerRole/HansSoloRole1
```

```json
[
  {
    "op": "add",
    "path": "/period/end",
    "value": "2025-12-31"
  }
]
```

##### Organization affiliation data
OrganizationAffiliation records the relationship between two organizations, including the role the participating organization plays, the networks involved, and the endpoints the relationship exposes. The same single-network guidance applies, and the affiliation carries a period that records when the relationship is in effect.

```
PUT [base]/OrganizationAffiliation/BurrClinicAffil
```

```json
{
  "resourceType": "OrganizationAffiliation",
  "id": "BurrClinicAffil",
  "meta": {
    "lastUpdated": "2025-10-13T09:00:00.000+00:00",
    "profile": [
      "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-OrganizationAffiliation"
    ]
  },
  "active": true,
  "organization": {
    "reference": "Organization/Hospital"
  },
  "participatingOrganization": {
    "reference": "Organization/BurrClinic"
  }
}
```

##### Healthcare services data
HealthcareService describes the services offered at a location, including the category and type of service, eligibility, and the programs under which the service is delivered.

```
PUT [base]/HealthcareService?identifier=http://example.org/services|HospSvc1
```

```json
{
  "resourceType": "HealthcareService",
  "meta": {
    "lastUpdated": "2025-10-13T09:00:00.000+00:00",
    "profile": [
      "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-HealthcareService"
    ]
  },
  "active": true,
  "name": "Orthopedic Services",
  "providedBy": {
    "reference": "Organization/Hospital"
  },
  "location": [
    {
      "reference": "Location/HospLoc1"
    }
  ]
}
```

##### Network data
A Network is represented as an Organization of type `ntwk` that conforms to the NDH Network profile. The geographic area a network covers is recorded with the location reference extension rather than with a `coverageArea` element.

```
PUT [base]/Organization/AcmeofCTPremNet
```

```json
{
  "resourceType": "Organization",
  "id": "AcmeofCTPremNet",
  "meta": {
    "lastUpdated": "2025-10-13T09:00:00.000+00:00",
    "profile": [
      "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Network"
    ]
  },
  "active": true,
  "extension": [
    {
      "url": "http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-location-reference",
      "valueReference": {
        "reference": "Location/StateOfCTLocation"
      }
    }
  ],
  "type": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/organization-type",
          "code": "ntwk",
          "display": "Network"
        }
      ]
    }
  ],
  "name": "ACME CT Premium Preferred Provider Network",
  "partOf": {
    "reference": "Organization/Acme"
  }
}
```

##### Insurance plan data
InsurancePlan records the product a payer offers, the networks that serve it, the organization that owns and administers it, and the geographic area it covers. Unlike Network, InsurancePlan records coverage area in the `coverageArea` element, both for the product and for each individual plan.

```
PUT [base]/InsurancePlan/AcmeQHPBronze
```

```json
{
  "resourceType": "InsurancePlan",
  "id": "AcmeQHPBronze",
  "meta": {
    "lastUpdated": "2025-10-13T09:00:00.000+00:00",
    "profile": [
      "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-InsurancePlan"
    ]
  },
  "status": "active",
  "name": "Acme of CT QHP Bronze",
  "type": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/insurance-product-type",
          "code": "qhp",
          "display": "Qualified Health Plan"
        }
      ]
    }
  ],
  "ownedBy": {
    "reference": "Organization/Acme"
  },
  "administeredBy": {
    "reference": "Organization/Acme"
  },
  "network": [
    {
      "reference": "Organization/AcmeofCTStdNet"
    }
  ],
  "coverageArea": [
    {
      "reference": "Location/StateOfCTLocation"
    }
  ]
}
```

##### Payer data
A payer is an Organization classified under the type `payer`. A payer maintains its own identity, its identifiers, and the endpoints through which it supports payer-to-payer and provider access interactions.

```
PUT [base]/Organization?type=http://terminology.hl7.org/CodeSystem/organization-type|payer&identifier=http://example.org/Identifiers|123456789
```

```json
{
  "resourceType": "Organization",
  "meta": {
    "lastUpdated": "2025-10-13T09:00:00.000+00:00",
    "profile": [
      "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Organization"
    ]
  },
  "active": true,
  "identifier": [
    {
      "system": "http://example.org/Identifiers",
      "value": "123456789"
    }
  ],
  "type": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/organization-type",
          "code": "payer",
          "display": "Payer"
        }
      ]
    }
  ],
  "name": "Acme of CT",
  "endpoint": [
    {
      "reference": "Endpoint/AcmeOfCTPortalEndpoint"
    }
  ]
}
```

#### Submitting related records together
Directory data is highly interrelated. A PractitionerRole cannot be stored until the Practitioner, Organization, and Location it references exist. A submitter has two ways to satisfy these dependencies.

The first is to submit resources individually in an order that satisfies the references. As a general guideline, resources may be submitted in the order of:

- Organization
- Endpoint
- Practitioner
- Location
- Network
- InsurancePlan
- HealthcareService
- OrganizationAffiliation
- PractitionerRole
- CareTeam

The second is to submit a `Bundle` of type `transaction`, which the NDH processes as a single atomic unit. The whole collection fails if any of the interactions in it fail, so the submitter does not have to manage referential integrity across separate requests. References between entries are resolved using the `fullUrl` of each entry.

```
POST [base]
```

```json
{
  "resourceType": "Bundle",
  "type": "transaction",
  "entry": [
    {
      "fullUrl": "urn:uuid:5c0f8f1e-4f0a-4a9e-9b3f-1f1b2c3d4e5f",
      "resource": {
        "resourceType": "Practitioner",
        "meta": {
          "profile": [
            "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-Practitioner"
          ]
        },
        "active": true,
        "identifier": [
          {
            "system": "http://hl7.org/fhir/sid/us-npi",
            "value": "1003357849"
          }
        ]
      },
      "request": {
        "method": "PUT",
        "url": "Practitioner?identifier=http://hl7.org/fhir/sid/us-npi|1003357849"
      }
    },
    {
      "fullUrl": "urn:uuid:7a1b2c3d-4e5f-6a7b-8c9d-0e1f2a3b4c5d",
      "resource": {
        "resourceType": "PractitionerRole",
        "meta": {
          "profile": [
            "http://hl7.org/fhir/us/ndh/StructureDefinition/ndh-PractitionerRole"
          ]
        },
        "active": true,
        "practitioner": {
          "reference": "urn:uuid:5c0f8f1e-4f0a-4a9e-9b3f-1f1b2c3d4e5f"
        },
        "organization": {
          "reference": "Organization/HansSoloClinic"
        }
      },
      "request": {
        "method": "POST",
        "url": "PractitionerRole"
      }
    }
  ]
}
```

A `Bundle` of type `batch` may be used instead when there are no interdependencies between entries. In a batch, the failure of any one interaction does not cause the whole collection to fail.

#### Managing concurrent updates
More than one submitter may be authorized to maintain the same record. To avoid one submitter silently overwriting another's change, a submitter uses the version returned by the NDH to make the update conditional on that version. The NDH returns the current version in the `ETag` header of a read, and the submitter returns it in the `If-Match` header of an update.

```
PUT [base]/Organization/Hospital
If-Match: W/"3"
```

If the record has changed since it was read, the NDH rejects the submission, and the submitter re-reads the record and reapplies its change to the current version.

### NDH Updater
The NDH Updater is the actor that submits directory data to the NDH on behalf of an organization, an individual, or a payer. An updater maintains only the data it is authorized to maintain. The right to create and attest to each resource type is described in the [Attestation and Verification Guidance](avv-guide.html), and the submission scenarios an updater supports are described in the [Attestation Use Cases](attestation-use-cases.html).

#### Organizations and Clinical Organizations and Individuals
Organizations, clinical organizations, and clinical individuals can update all of the information that describes them and the care they deliver. An updater acting for these actors maintains:

- Locations, including the addresses where care is delivered, operating hours, and accessibility
- Groups, including multidisciplinary provider groups and the services those groups offer
- Organization data, including name, identifiers, contact details, and parent organization
- Practitioner role data, including the organization, location, specialty, network, and new patient status for each role
- Practitioner data, including name, identifiers, qualifications, and languages
- Organization affiliation data, including the role, networks, and endpoints of each organization to organization relationship
- Healthcare services data, including the category, type, eligibility, and programs of each service
- Network data, including network participation and the area a network covers
- Insurance plan data, where the organization administers or is contracted directly for a plan
- Payer data, where the organization is itself classified as a payer

An individual updates the information that describes the individual, and an organization updates the information that describes the organization. Where a relationship joins the two, such as a PractitionerRole or an OrganizationAffiliation, either party may submit the relationship, but the relationship is not treated as complete until both parties have attested to it. This mutual attestation is recorded in the VerificationResult resource, as described in the [Validation & Verification Use Cases](verification-use-cases.html).

#### Payers
Payers can update their network, insurance plan, payer, and coverage area information. A payer maintains the networks it operates, the insurance plans those networks serve, its own payer organization record, and the geographic area each network and plan covers.

A payer has three ways to supply this data.

The first is to submit resources directly in the standard JSON format defined by this Implementation Guide, using the interactions described above. This is the most direct mechanism, and it gives the payer full control over each resource it maintains.

The second is to publish a Federated Payer Identifier well-known index. A payer that already publishes this index does not need to restate its payer identity, plan, and endpoint data in a second format. The content of the index is bridged programmatically to the NDH write approach, so that the payer's existing publication becomes an update channel and the resulting resources are created and updated in the NDH on the payer's behalf. The format of that index is maintained with the [Federated Payer Identifier](https://github.com/ftrotter-gov/FederatedPayerIdentifier) specification and is not restated here.

The third is to supply data that conforms to the Da Vinci Payer Data Exchange (PDex) Plan-Net standard. This Implementation Guide already maps Plan-Net to NDH, so a payer that maintains a conformant Plan-Net directory can use those mappings to generate NDH conformant data automatically rather than authoring it a second time. The mappings cover Endpoint, HealthcareService, InsurancePlan, Location, Network, Organization, OrganizationAffiliation, Practitioner, and PractitionerRole, and are listed in the [Plan-Net Mappings](plannet-maps.html).

Whichever mechanism a payer uses, the data that reaches the NDH is the same, and it is validated the same way.

#### Validation of submitted data
The NDH validates every submission against the profiles, value sets, and invariants defined in this Implementation Guide, as described in the [Validation & Verification Use Cases](verification-use-cases.html).

The requirements applied when data is submitted may be stricter than the data definitions found elsewhere in this guide. A profile that marks an element as optional describes what the NDH is able to represent, including data that reached the directory through other means. It does not describe what an updater is permitted to leave out. The NDH may require elements that the profile leaves optional, may require a narrower set of codes than the bound value set allows, and may reject a submission that a profile alone would accept. These additional requirements are applied so that the directory maintains a high level of data quality, and they are made available to the actors that submit data.

{% include markdown-link-references.md %}
