### National Directory API

#### Introduction

The primary focus of the National Directory API actor implementation guide is a RESTful API for providing data from the National Directory of Healthcare Providers & Services (NDH). The National Directory API only supports a one-directional flow of information from NDH into Distributed Access/Workflow Directories (i.e., HTTP GETs).

NDH National Directory API actor IG conformant implementation:

The conformance criteria for the National Directory API are specified within its [Capability Statements](CapabilityStatement-ndh-server.html), in accordance with IG (Implementation Guide) standards.

In profiles, the "Must Support" flag indicates if data exists for the specific property, then it must be represented as defined in the National Directory API actor IG. If the element is not available from a system, this is not required, and may be omitted. See [Conformance Must Support](conformance.html#must-support).

Conceptually, this guide was written to describe the flow of information from a central source of verified healthcare directory data to local workflow environments. We envisioned NDH which functioned as a “source of truth” for a broad set of provider data available to support local business needs and use cases. A local environment could readily obtain all or a subset of the data it needed from NDH and have confidence that the information was accurate. If necessary, a local environment could supplement NDH data with additional data sourced and/or maintained locally. For example, a local environment doing provider credentialing might rely on NDH for demographic information about a provider (e.g., name, address, educational history, license information, etc.), but also ask the provider for supplementary information such as their work history, liability insurance coverage, or military experience. Likewise, we envisioned that NDH would primarily share information with other systems, rather than individual end users or the public.

The content of this guide, however, does not preclude it from being implemented for smaller “local” directories, or accessed by the public. Generally, conformance requirements throughout the guide are less tightly constrained to support a wider variety of possible implementations. We did not want to set strict requirements about the overall design, technical architecture, capabilities, etc. of a verified national directory that might prevent adoption of this standard. For example, although we would expect a verified national directory to gather and share information about healthcare provider insurance networks and health plans, implementations are not required to do so to be considered conformant.

The NDH may contain a large amount of data that will not be relevant to all use cases or local needs. Therefore, the National Directory API defines a number of search parameters to enable users to express the scope of a subset of data they care to access. For example, implementations are required to support searches for Organizations based on address, endpoint, identifier, name/alias, and relationship to a parent organization. In general, parameters for selecting resources based on a business identifier, status, type, or relationship (i.e., reference) are required for all implementations. Most parameters may be used in combination with other parameters and support more “advanced” capabilities like modifiers and chains.

The National Directory API currently supports more than one method for accessing directory data.  First, a real-time GET of a set of information. However, stakeholders may need other capabilities to support different business needs. For instance, stakeholders may need access to large amounts of data in a single session to either initially seed or refresh their local data repositories. Depending on the scope of data a stakeholder is trying to access, a real-time pull may not be the most effective method for acquiring large data sets. The FHIR specification provides support for [asynchronous interactions](https://hl7.org/fhir/uv/bulkdata/), using the Bulk Data standard, which may be necessary for implementers to facilitate processing of large amounts of data.

NDH implementation should also consider providing capabilities for users to subscribe to receive updates about the data they care about. A subscribe/publish model can help alleviate the need for stakeholders to periodically query for new data and/or changes to data they have already obtained.Restricted Content 

We envision NDH as a public or semi-public utility and make a significant portion of the information openly available. However, NDH may include sensitive data that is not publicly accessible or accessible to every verified healthcare directory stakeholder. For example, an implementer might not want to make data about military personnel, emergency responders/volunteers, or domestic violence shelters available to everyone with access to the verified national directory, or to users in a local environment who have access to data obtained from NDH.

We expect that NDH operational policies and legal agreements will clearly delineate which data stakeholders can access, and if necessary, require stakeholders to protect the privacy/confidentiality of sensitive information in downstream local environments.

#### National Directory API

![NationalDirectoryApiDiagram](NDH Exchange.png)

### National Directory API Capabilities
The NDH supports the FHIR Search mechanism for Distributed Workflow Directory to query data from the NDH. The supported search parameters are defined in the National Directory API capability statement. 
***[NDH Server CapabilityStatement]***

### National Directory API Subscription
#### When to use Subscription
FHIR subscription is a powerful feature that allows a system to receive real-time notifications when data is created, updated, or deleted on a FHIR server. Therefore, distributed Access/Workflow Directories can receive notifications when data changes on the National Directory API server through a subscription. This is an active notification system, where the National Directory API server proactively sends notifications to the directories as data changes occur.

#### Subscriptions
In the FHIR (DSTU2 - R4) system, subscriptions are query-based. Clients can dynamically define subscriptions by posting a Subscription resource with a criteria string. The FHIR server then executes a query against those criteria and tracks the query result-set for each subscription request. Whenever a change is made to the server's data, the server must re-run the query and send notifications to clients if their result-set changes, such as when a new entry is added or removed.

Query-based subscriptions may encounter challenges in handling the following scenarios:
1. Implementing server-side logic at a scale can be difficult, especially for large datasets and many clients.
2. The discovery process can be opaque, as servers with query restrictions have no means of advertising them.
3. There may be a lack of granularity in events, making it unclear why something was removed from a dataset.
4. Notifications cannot be bundled, so servers must send a separate notification for each discrete event.
5. Clients are required to re-query after receiving a notification, which can be inefficient.

To address these challenges, Subscription Topics were introduced in FHIR R5 and later backported to FHIR R4. 

Subscription Topics provide documentation for the concepts they represent and are based on resource interactions. This includes the resource type (e.g., Practitioner, Organization) and the specific interaction of interest (e.g., create, update, delete).

To use topic-based subscription support in FHIR R4, NDH will use FHIR artifacts (e.g., Operations, Extensions, Profiles, etc.) defined in the [Subscriptions R5 Backport IG](http://hl7.org/fhir/uv/subscriptions-backport/STU1.1/index.html). 

#### Profiles used for the National Directory API Topic-Based Subscription
1. [R4/B Topic-Based Subscription](http://hl7.org/fhir/uv/subscriptions-backport/STU1.1/StructureDefinition-backport-subscription.html)
2. [R4 Topic-Based Subscription Notification Bundle](http://hl7.org/fhir/uv/subscriptions-backport/STU1.1/StructureDefinition-backport-subscription-notification-r4.html)
3. [R4 Backported R5 Subscription Status](http://hl7.org/fhir/uv/subscriptions-backport/STU1.1/StructureDefinition-backport-subscription-status-r4.html)

#### Operations used for the National Directory API Topic-Based Subscription
1. [Subscription Events Operation](https://hl7.org/fhir/uv/subscriptions-backport/STU1.1/OperationDefinition-backport-subscription-events.html)
2. [Subscription Get WS Binding Token Operation](https://hl7.org/fhir/uv/subscriptions-backport/STU1.1/OperationDefinition-backport-subscription-get-ws-binding-token.html)
3. [Subscription Status Operation](https://hl7.org/fhir/uv/subscriptions-backport/STU1.1/StructureDefinition-backport-subscription-status-r4.html)


#### The National Directory API Subscription Topic

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

Subscription Topic | CapabilityStatement SubscriptionTopic Canonical value | Related Resource will be included in the Notification
Endpoint created or deleted | http://ndh.org/topic/endpoint-create-or-delete | Endpoint, HealthcareService, InsurancePlan, Location, Network, Organization, OrganizationAffiliation, Practitioner, PracticionerRole 
HealthcareService created or deleted | http://ndh.org/topic/healthcareservice-create-or-delete | HealthcareService, Location, PractitionerRole, Organization, OrganizationAffiliation
InsurancePlan created or deleted | http://ndh.org/topic/insuranceplan-create-or-delete | InsurancePlan, Network, Organization, Location
Location created or deleted | http://ndh.org/topic/location-create-or-delete | Location, HealthcareService, InsurancePlan, Organization, OrganizationAffiliation
Network created or deleted | http://ndh.org/topic/network-create-or-delete | Network, InsurancePlan, Organization, OrganizationAffiliation, PractitionerRole 
Practitioner created or deleted | http://ndh.org/topic/practitioner-create-or-delete | Practitioner, PractitionerRole, 
Organization created or deleted | http://ndh.org/topic/organization-create-or-delete | Organization, Endpoint HealthcareService, InsurancePlan Location, Network OrganizationAffiliation, PractitionerRole
Practitioner's qualification created, modified, or deleted | http://ndh.org/topic/practitioner-qualification-create-modified-or-delete |Practitioner, PractitionerRole, 
Organization's qualification created, modified, or deleted | http://ndh.org/topic/organization-qualification-create-modified-or-delete | Organization, Endpoint HealthcareService, InsurancePlan Location, Network, PractitionerRole

##### Filter the content of topic subscription by subscriber
Distributed workflow directories could set its own criteria when using the subscription, such as PractitionerRole?practitioner=Practitioner/123

##### Channel of the Notification for the Subscription
1. The National Directory API **SHALL** support rest-hook
2. The National Directory API **MAY** support websocket

#### Operation of the topic subscription
1. The National Directory API **SHALL** support $status operation on the subscription resource. 
2. The National Directory API **MAY** support $events operation for return notification that have been previously triggered by a topic subscription. 
3. The National Directory API **MAY** supoort $get-ws-binding-token for get a token for a websocket client to use in order to bind to one or more subscriptions.

##### Shape of the notification 
All notifications are enclosed in a `Bundle` with the type of `history`. The first `entry` of the `bundle` **SHALL** be the `SubscriptionStatus` information, encoded as a `Parameter` resource using the `Backport SubscriptionStatus Profile` in FHIR R4.
The National Directory API **SHALL** support
- id-only notification bundle
- full-resource notification bundle
- error notification bundle - in the event of of processing error on the NDH server
- handshake notification bundle
- heartbeat notification bundle

{% include markdown-link-references.md %}