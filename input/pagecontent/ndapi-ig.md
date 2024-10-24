### National Directory API

#### Introduction

The primary focus of the National Directory API actor implementation guide is a RESTful API for providing data from the National Directory of Healthcare Providers & Services (NDH). The National Directory API only supports a one-directional flow of information from NDH into Distributed Access/Workflow Directories (i.e., HTTP GETs).

NDH National Directory API actor IG conformant implementation:

The conformance criteria for the National Directory API are specified within its [Capability Statements](ndapi-capability.html#national-directory-api-capability-statements), in accordance with IG (Implementation Guide) standards.

In profiles, the "Must Support" flag indicates if data exists for the specific property, then it must be represented as defined in the National Directory API actor IG. If the element is not available from a system, this is not required, and may be omitted.

Conceptually, this guide was written to describe the flow of information from a central source of verified healthcare directory data to local workflow environments. We envisioned NDH which functioned as a “source of truth” for a broad set of provider data available to support local business needs and use cases. A local environment could readily obtain all or a subset of the data it needed from NDH and have confidence that the information was accurate. If necessary, a local environment could supplement NDH data with additional data sourced and/or maintained locally. For example, a local environment doing provider credentialing might rely on NDH for demographic information about a provider (e.g., name, address, educational history, license information, etc.), but also ask the provider for supplementary information such as their work history, liability insurance coverage, or military experience. Likewise, we envisioned that NDH would primarily share information with other systems, rather than individual end users or the public.

The content of this guide, however, does not preclude it from being implemented for smaller “local” directories, or accessed by the public. Generally, conformance requirements throughout the guide are less tightly constrained to support a wider variety of possible implementations. We did not want to set strict requirements about the overall design, technical architecture, capabilities, etc. of a verified national directory that might prevent adoption of this standard. For example, although we would expect a verified national directory to gather and share information about healthcare provider insurance networks and health plans, implementations are not required to do so to be considered conformant.

The NDH may contain a large amount of data that will not be relevant to all use cases or local needs. Therefore, the National Directory API defines a number of search parameters to enable users to express the scope of a subset of data they care to access. For example, implementations are required to support searches for Organizations based on address, endpoint, identifier, name/alias, and relationship to a parent organization. In general, parameters for selecting resources based on a business identifier, status, type, or relationship (i.e., reference) are required for all implementations. Most parameters may be used in combination with other parameters and support more “advanced” capabilities like modifiers and chains.

The National Directory API currently supports more than one method for accessing directory data.  First, a real-time GET of a set of information. However, stakeholders may need other capabilities to support different business needs. For instance, stakeholders may need access to large amounts of data in a single session to either initially seed or refresh their local data repositories. Depending on the scope of data a stakeholder is trying to access, a real-time pull may not be the most effective method for acquiring large data sets. The FHIR specification provides support for [asynchronous interactions](https://hl7.org/fhir/uv/bulkdata/), using the Bulk Data standard, which may be necessary for implementers to facilitate processing of large amounts of data.

NDH implementation should also consider providing capabilities for users to subscribe to receive updates about the data they care about. A subscribe/publish model can help alleviate the need for stakeholders to periodically query for new data and/or changes to data they have already obtained.Restricted Content 

We envision NDH as a public or semi-public utility and make a significant portion of the information openly available. However, NDH may include sensitive data that is not publicly accessible or accessible to every verified healthcare directory stakeholder. For example, an implementer might not want to make data about military personnel, emergency responders/volunteers, or domestic violence shelters available to everyone with access to the verified national directory, or to users in a local environment who have access to data obtained from NDH.

We expect that NDH operational policies and legal agreements will clearly delineate which data stakeholders can access, and if necessary, require stakeholders to protect the privacy/confidentiality of sensitive information in downstream local environments. As such, we have included a Restriction profile based on the Consent resource to convey any restrictions associated with a data element, collection of elements, or resource obtained from a verified national directory.

#### National Directory API

![NationalDirectoryApiDiagram](NDH Exchange.png)

### National Directory API Capabilities
The NDH supports the FHIR Search mechanism for Distributed Workflow Directory to query data from the NDH. The supported search paramters are defined in the National Directory API capability statement. 
***[National Directory API CapabilityStatement]***

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
Endpoint created or deleted | http://ndh.org/topic/endpoint-create-or-delete | Endpoint, CareTeam, HealthcareService, InsurancePlan, Location, Network, Organization, OrganizationAffiliation, Practitioner, PracticionerRole 
HealthcareService created or deleted | http://ndh.org/topic/healthcareservice-create-or-delete | HealthcareService, CareTeam, Location, PractionerRole, Organization, OrganizationAffiliation
InsurancePlan created or deleted | http://ndh.org/topic/insuranceplan-create-or-delete | InsurancePlan, Network, Organization, Location
Location created or deleted | http://ndh.org/topic/location-create-or-delete | Location, CareTeam, HealthcareService, InsurancePlan, Organization, OrganizationAffiliation
Network created or deleted | http://ndh.org/topic/network-create-or-delete | Network, InsurancePlan, Organization, OrganizationAffiliation, PractitionerRole 
Practitioner created or deleted | http://ndh.org/topic/practitioner-create-or-delete | Practitioner, PractitionerRole, 
Organization created or deleted | http://ndh.org/topic/organization-create-or-delete | Organization, CareTeam, Endpoint HealthcareService, InsurancePlan Location, Network OrganizationAffiliation, PractitionerRole
Practitioner's qualification created, modified, or deleted | http://ndh.org/topic/practitioner-qualification-create-modified-or-delete |Practitioner, PractitionerRole, 
Organization's qualification created, modified, or deleted | http://ndh.org/topic/organization-qualification-create-modified-or-delete | Organization, CareTeam, Endpoint HealthcareService, InsurancePlan Location, Network, PractitionerRole

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

### Bulk Data Export of the National Directory
Providers, organizations, and local directories often require efficient methods to access large volumes of information about groups of providers, organizations, healthcare services, and insurance plans. For instance, a state's local directory might periodically need to retrieve and update provider and healthcare service data from the National Directory. The FHIR Bulk Data export operation offers a standardized solution for these needs. The National Directory will utilize the FHIR Bulk Data System Level export as outlined in the Bulk Data Access IG ([$export](https://build.fhir.org/ig/HL7/bulk-data/OperationDefinition-export.html)). To cater to various business use cases, the National Directory specifies conformance requirements for both the server and client. Regarding [security](https://build.fhir.org/ig/HL7/bulk-data/export.html#privacy-and-security-considerations), adherence to the guidelines stated in the FHIR Bulk Data Access IG. Additionally, the National Directory server should establish extra security guidance in accordance with regulatory policies and rules.

#### National Directory's Bulk Data Export Process
There are two primary roles involved in a Bulk data transaction:
1. Bulk Data Provider
    - FHIR Authorization Server - server that issues access tokens in response to valid token requests from a client
    - The National Directory Resource Server - server that accepts kick-off requests and provides job status and completion manifest.
    - Output File Server - server that returns Directory Data in response to urls in the completion manifest. This may be built into the National Directory Resource Server or
    may be independently hosted.
2. Bulk Data Client (Local Directory) - system that requests and receives access tokens and the National Directory Data files

<figure>
    {% include bulk-flow.svg %}
    <figcaption>Sequence diagram of Bulk Data </figcaption>
</figure>

#### Conformance Requirements for Bulk Data in the National Directory
The National Directory exclusively uses the FHIR Bulk Data System Level export, and as a result, has its own specific Bulk data conformance requirements. The Bulk Data Access IG CapabilityStatement is not suitable for the NDH Bulk data use cases.

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

**Parameter** | **Server Conformance** | **Client Conformance** | **Type** | **Description** |
_outputFormat | **SHALL**             | **SHOULD**              | String   | By default, the server uses the format application/fhir+ndjson. It is required to support Newline Delimited JSON, and it may also support other additional output formats. The server must accept the complete content type of application/fhir+ndjson, as well as the abbreviated forms application/ndjson and ndjson. If the client submits requests in other output formats, the NDH will respond with a 200 OK status. However, the response will include a FHIR OperationOutcome resource in Json format, indicating that the NDH supports only the ndjson format and requesting the client to resubmit using this format.|
_type         | **SHALL**             | **SHOULD**             | string of comma-delimited FHIR resource types | The response SHALL be filtered to only include resources of the specified resource types(s). If the client explicitly asks for export of resources that the Bulk Data server doesn't support, the server SHOULD return details via a FHIR OperationOutcome resource in an error response to the request. |
_typeFilter   | **SHALL** | **SHOULD** | string of comma delimited FHIR REST queries | The NDH server with _type parameter and requested _typeFilter search queries SHALL filter the data in the response to only include resources that meet the specified criteria. if the client explicitly asks for export of resources that the NDH server doesn't support, the server SHOULD return details via a FHIR OperationOutcome resource so the client can re-submit a request that omits those queries. |
_since | **SHALL** | **SHOULD** | FHIR instant | Only resources that were last updated on or after the given time will be included |

#### Response - OK
If the value of _outputFormat is not application/fhir+ndjson, or ndjson
- HTTP status Code of `200` OK
- FHIR `OperationOutcome` resource in the body in Json format indicate the NDH only suport ndjson format, ask the client to resubmit

#### Response - Success
- HTTP Status Code of `202 Accepted`
- `Content-Location` header with the absolute URL of an endpoint for subsequent status requests (polling location)
- Optionally, a FHIR `OperationOutcome` resource in the body in JSON format

#### Response - Error (e.g., unsupported search parameter)
- HTTP Status Code of `4XX` or `5XX`
- The body **SHALL** be a FHIR `OperationOutcome` resource in JSON format

#### Updating the Local Directory Using Bulk Data
When retrieving National Directory data through bulk $export operation for local directories, the data is stored in ndjson files containing FHIR resources. Each line in the ndjson file represents a single FHIR resource, whose unique identifier (resource.id) is controlled by the server. To identify a specific resource across different servers, resource.identifier is used instead. In the case of the National Directory, each resource stored in it has a unique resource.id, which is also used to populate the resource.identifier as identifier.system = national directory system and identifier.value = resource.id.

After performing bulk $export, it's important not to directly enter the retrieved data into the local directory, as the local server may have a different set of resource.ids for the same resources. To avoid duplication, a mapping should be performed based on the resource.identifier. This involves modifying the resource.id in the ndjson file with the local resource.id, and then importing the modified file using $import operation. If $import operation is not supported by your server, you can convert the modified ndjson file, with the resources having your local resource.id, to a FHIR transition Bundle and load it into your local server using a PUT request.

If the local directory already has the National Directory content and wishes to update it with the latest changes from the National Directory, the bulk $export operation can be used. However, there are a few things to consider:

1. Before exporting, ensure that the server's configuration supports versioning of resources. This will allow for tracking of changes made to resources over time.
2. To filter only the resources that have been updated since the last export, use the _since parameter. Be sure to check the server documentation to understand the implications if the _since parameter is not provided. Some servers will return longer period data than you wish to have, while others may only return last 24 hours data. For example, HAPI Server will only export the past 24 hours resources which were created or updated, if the _since parameter is absent.
3. Be aware of any dependencies between resources. For example, if a resource is deleted or modified, it may affect other resources that reference it.
4. After the export is completed, perform a mapping of the resource identifiers as described earlier to avoid duplicating resources in the local directory.

By following these steps, the local directory can efficiently update its content with the latest changes from the National Directory while maintaining data integrity and avoiding duplication.


#### The scope of data selection
For the directory bulk data extraction, to request an entire copy of all content in the directory, the scope selection can be defined at the top level specifying that it would like to retrieve all content for the specified resource types from the base of the FHIR server.

```
POST [base]/$export?_type=Organization,Location,Practitioner,PractitionerRole,HealthcareService,VerificationResult, ...
```

A local directory may curate such an extract on a nightly process, and simply return results without needing to scan the live system.  In the result, the value returned in the `transactionTime` in the result should contain the timestamp at which the extract was generated (including timezone information) and should be used in a subsequent call to retrieve changes since this point in time.

Once a system has a complete set of data, it is usually more efficient to ask for changes from a specific point in time. In which case the request should use the value above (`transactionTime`) to update the local directory.

```
POST [base]/$export?_type=Organization,Location,Practitioner, ... &_since=[transactionTime]&_outputFormat=application/fhir+ndjson
```

This behaves the same as the initial request, with the exception of the content.

It is expected that this request is more likely to return current information, rather than a pre-generated snapshot, as the transactionTime could be anything.

> **Note:** The current bulk data handling specification does not handle deleted items. The recommendation is that periodically a complete download should be performed to check for "gaps" to reconcile the deletions (which could be due to security changes). However, content should not usually be "deleted"; it should be marked as inactive, or end dated.
>
> **Proposal:** Include a deletions bundle(s) for each resource type to report the deletions (when using the _since parameter). As demonstrated in the status tracking output section below, these bundles would be included in the process output as a new property "deletions". This bundle would have a type of "collection", and each entry would be indicated as a deleted item in the history.

```xml
<entry>
   <!-- no resource included for a delete -->
   <request>
     <method value="DELETE"/>
     <url value="PractitionerRole/[id]"/>
   </request>
   <!-- response carries the instant the server processed the delete -->
   <response>
     <lastModified value="2014-08-20T11:05:34.174Z"/>
   </response>
</entry>
```

> The total in the bundle will be the count of deletions in the file, the total in the operation result will indicate the number of deletion bundles in the ndjson (same as the other types).
>
> If the caller doesn't want to use the deletions, they can ignore the files in the output, and not download those specific files.

#### Narrowing the Scope of the Exported Resource

```
POST [base]/$export?_type=Organization
&_since=[transactionTime]
&_typeFilter=Organization?identifier=https://vs.directtrust.org/identifier/organization&_outputFormat=application/fhir+ndjson
```
To export specific resources, you can utilize the _typeFilter option. In this instance, you can limit the exported data to organizations with the identifier system set as https://vs.directtrust.org/identifier/organization.

```
POST [base]/$export?_type=Organization,Practitioner
&_since=[transactionTime]
&_typeFilter=Organization?address-state=CA, Practitioner?address-state=CA
&_outputFormat=application/fhir+ndjson

```
To export Practitioners and Organizations for only a given state.

#### Arbitrary Subsets of Data

The current bulk data export operations use the Group resource to define the set of data related to a Patient. At present there is no definition for this to be done in the directory space, unless it is at the resource level. This is possible with search and subscriptions (which leverage search) by using search parameters on the resource types and setting the parameters of interest.

When defining a subset of data, consideration should be given to what happens when data is changed to the extent that it is no longer within the context of the conditions.

One possible method would be to use a bundle of searches where each type has its own search parameters. Another way is to use a <a href="http://hl7.org/fhir/r4/graphdefinition.html" class="external-link" rel="nofollow">GraphDefinition</a> resource.

This functionality should be the subject of a connectathon to determine practical solutions.

One possibility could be to leverage the List functionality described above to maintain a state of what <em>was</em> included in previous content. However, this incurs additional overhead on the part of the server and for many systems, especially those at scale like a national system, this is likely not practical.

#### Format of the Dulk Data Extract

The bulk extract format is always an nd-json file (new-line delimited json). Each file can only contain 1 resource type in it, but can be spread across multiple files, with either a size limit or count limit imposed by the extracting system, not the requestor.

The list of these files will be returned in the Complete status output, as described in the standard Bulk Data documentation.

#### Starting the Extract

There are 2 options for starting the extract. The first option is a single operation specifying all the content, and the other option is for a specific type only. These were both covered above in the "selecting the scope" section.

Here one will only document the use of global export, as an initial request.

The initial request:

```
POST [base]/$export?_type=Organization,Location,Practitioner,PractitionerRole,HealthcareService
```
With headers:
```
Accept: application/fhir+json
Authentication: Bearer [bearer token]
Prefer: respond-async
```

This will return either:
* HTTP status code of <code>4XX</code> or <code>5XX</code> with an <code>OperationOutcome</code> resource body if the request fails, or a
* HTTP status code of <code>202 Accepted</code> when successful. Which will include a <code>Content-Location</code> header with an absolute URI for subsequent status requests and optionally, an <code>OperationOutcome</code> in the resource body

Example Content-Location: <a class="external-link" style="text-decoration: underline;text-align: left;" rel="nofollow" href="http://example.org/status-tracking/request-123">http://example.org/status-tracking/request-123</a> (note that this is not necessarily a FHIR endpoint, and is not a true FHIR resource)

#### Tracking the Status of the Extract

After a bulk data request has been started, the client MAY poll the URI provided in the <code>Content-Location</code> header.

```
GET http://example.org/status-tracking/request-123
```

This will return one of the following codes:

* HTTP status code of <code>202 Accepted</code> when still in progress (and no body has been returned)

* HTTP status code of <code>4XX</code> or <code>5XX</code> when a fatal error occurs, with an <code>OperationOutcome</code> in json format for the body detailing of the error
_(Note this is a fatal error in processing, not some error encountered while processing files - a complete extract can contain errors)_
* HTTP status code of <code>200 OK</code> when the processing is complete, and the result is a json object as noted in the specification (an example included below)

Refer to the build data specification for details of the completion event:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[https://github.com/smart-on-fhir/fhir-bulk-data-docs/blob/master/export.md#response---complete-status](https://github.com/smart-on-fhir/fhir-bulk-data-docs/blob/master/export.md#response---complete-status)

```javascript
{
    "transactionTime": "[instant]",
    "request": "[base]/$export?_type=Organization,Location,Practitioner,PractitionerRole,HealthcareService",
    "requiresAccessToken": true,
    "output": [
        {
            "type": "Practitioner",
            "url": "http://serverpath2/practitioner_file_1.ndjson",
            "count": 10000
        },
        {
            "type": "Practitioner",
            "url": "http://serverpath2/practitioner_file_2.ndjson",
            "count": 3017
        },
        {
            "type": "Location",
            "url": "http://serverpath2/location_file_1.ndjson",
            "count": 4182
        }
    ],
    // Note that this deletions property is a proposal, not part of the bulk data spec.
    "deletions": [
        {
            "type": "PractitionerRole",
            "url": "http://serverpath2/practitionerrole_deletions_1.ndjson", // the bundle will include the total number of deletions in the file
            "count": 23 // this is the number of bundles in the file, not the number of resources deleted
        }
    ],
    "error": [
        {
            "type": "OperationOutcome",
            "url": "http://serverpath2/err_file_1.ndjson",
            "count": 439
        }
    ]
}
```

#### Retrieving the Complete Extract

Once the tracking of the extract returns a <code>200 OK</code> completed status, the body of the result will include the list of prepared files that can be downloaded.

Then each of these URLs can be downloaded by a simple get, ensuring to pass the Bearer token if the result indicates <code>requiresAccessToken = true</code>

While downloading, it is also recommended to include the header <code>Accept-Encoding: gzip</code> to compress the content as it comes down.

```
GET http://serverpath2/location_file_1.ndjson
```

(Note: our implementation will probably always gzip encode the content - as we are likely to store the processing files gzip encoded to save space in the storage system)

Once all the needed files are downloaded, one should tell the server to clean_up, as detailed in the next section.

#### Finishing the Extract

This is the simplest step in the process. To finish the extract, one will call <code>DELETE</code> on the status tracking URL.

```
DELETE http://example.org/status-tracking/request-123
```

Calling <code>DELETE</code> tells the server that we are all finished with the data, and it can be deleted/cleaned up. The server may also include some time based limits where it may only keep the data for a set period of time before it automatically cleans it up.

### National Directory Scheduled Bulk Data Export Operation
If a local directory needs to retrieve information from the National Directory on a scheduled basis, there are two approaches available:
1. A client-side solution: A job scheduler script is written on the client side to execute the Bulk Data Export $export operation. This allows the client to control the export process and retrieve the data as needed.
2. A server-side solution: It is to utilize the National Directory Scheduled Bulk Data Export $ndhschExport operation, which is a service-side solution available to all registered clients. Once the client has registered with the National Directory, they only need to apply the $ndhschExport operation once. From then on, the system automatically exports the data to the specified file storage location based on the defined schedule, making it convenient for the client to retrieve the data.

#### Definition of the Scheduled Export Operation
[OperationDefinition-NdhschExport]

#### National Directory's Scheduled Bulk Data Export Process
<figure>
    {% include ndh-export.svg %}
    <figcaption>Sequence diagram of Bulk Data </figcaption>
</figure>  

**Process Description**
**Setup Account**
1. A Local Directory sends a request to the NDH to create an account for establishing authentication and authorization.
2. The NDH evaluates the application submitted by the Local Directory for the creation of a new account and decides whether to grant or reject the account creation. Upon approving the request, the NDH assigns a distinct account identifier to the new account. Additionally, a specific data content location is allocated for the purpose of future data retrieval. This designated location is structured to accommodate various scheduled data exports and is equipped with adequate storage capacity to handle the volume of data expected to be extracted.
3. The NDH communicates the outcome of the request back to the Local Directory.

**Request $ndhschExport from Portal or Application**
1. Possessing the assigned account ID, the Local directory is then able to access the National Directory. This can be achieved through various secure login methods such as UDAP, SMART, or other authentication processes established by the implementer of the National Directory.
2. Begin a process like $ndhschExport by submitting a request that includes all necessary parameters. To conduct multiple scheduled exports, each request must have a distinct schedule ID. For example, this might entail setting up a weekly extraction schedule for specific resources from all organizations and practitioners in the state of Maryland, and a monthly schedule for all InsurancePlan data in the state of Maryland.
3. The NDH evaluates the request and generates a corresponding response.
4. The $ndhschExport adheres to the asynchronous request pattern as outlined in [RFC 7240](https://datatracker.ietf.org/doc/html/rfc7240#section-4.1), catering to this use case due to the significant server-side processing required. Upon approval of the $ndhschExport by the NDH, a 202 (Accepted) response will be issued, signifying that the NDH will proceed with the requested $ndhschExport operation. If any errors are present in the request, the NDH will reject it, responding with either a 4XX or 5XX status code and including a FHIR OperationOutcome in the response body.

**Actions in the National Directory server could be once or repeatedly**
1. The National Directory server processes queries from the $ndhschExport requests, generating data based on specified search criteria. This data is then stored in a designated repository for each account according to a pre-set schedule. Multiple scheduled exports can be set up by each account, each with a unique scheduled ID provided in the Local Directory's $ndhschExport request. The National Directory is advised to include this information in the file names of each extraction to differentiate between requests. These files are produced based on the scheduled start times and frequencies. To distinguish files generated at different times, each file will contain a timestamp reflecting the start time and frequency, indicating the starting date and time the data was extracted. Since data extraction takes time, a corresponding status file is created for each extraction. This file follows the same naming convention as the extracted file but includes a status indicator. The status file contains information such as 'completed ready for download', 'pending', or 'error contact the administrator'.

2. Each time the $ndhschExport operation is executed within the National Directory, it results in the generation of a new set of files in the repository. If the Local Directory's request includes the input parameter 'keep file flag' set to false, this new data extraction will lead to the deletion of the old set of files that were generated previously. Conversely, if the 'keep file flag' is set to true, the previously extracted files will be retained. Regarding ndjson format data, a file containing a list of ndjson links is provided. This allows users to access each file through the HTTP POST method using the provided links. The filename for this list will follow the established naming convention but will specifically indicate that it contains links for ndjson files.

For a weekly extraction schedule targeting specific resources from all organizations and practitioners in the state of Maryland, and a monthly schedule for all InsurancePlan data in Maryland.
```
POST [base]/$ndhschExport
?_type=Organization,Practitioner
&_typeFilter=Organization?address-state=MD,_include=*,revinclude=*
&_outputFormat=application/fhir_ndjson
&_startdate=2023-12-01
&_frequency=1|mo
&_account=example-1
&_scheduledId=1234
&_action=create
```

```
POST [base]/$ndhschExport
?_type=InsurancePlan
&_typeFilter=InsurancePlan?address-state=MD,_include=*,revinclude=*
&_outputFormat=application/fhir_ndjson
&_startdate=2023-12-01
&_frequency=1|wk
&_account=example-1
&_schedlued_id=5678
&_action=create
```
The generated files follow this format:
{scheduled id}-{resource type}-{date and time of start extraction}.{file type}  
**Based on the examples provided above, the extracted files will be:**
- 1234-organization-2024-01-01-23-59-59.ndjson
- 1234-practitioner-2024-01-01-23-59-59.ndjson
- 1234-status-2024-01-01-23-59-59.txt
- 1234-ndjson-links-2024-01-01-23-59-59.txt

- 1234-organization-2024-02-01-23-59-59.ndjson
- 1234-practitioner-2024-02-01-23-59-59.ndjson
- 1234-status-2024-02-01-23-59-59.txt
- 1234-ndjson-links-2024-02-01-23-59-59.txt

- 5678-insuranceplan-2024-01-01-23-59-59.ndjson
- 5678-status-2024-01-01-23-59-59.txt
- 5678-ndjson-links-2024-01-01-23-59-59.txt
- 5678-insuranceplan-2024-01-07-23-59-59.ndjson
- 5678-status-2024-01-07-23-59-59.txt
- 5678-ndjson-links-2024-01-07-23-59-59.txt


**Actions taken by the Local Directory could be once or repeatedly via using FHIR REST API**
1. With the assigned account ID in hand, the Local directory gains access to the National Directory. This access is secured through various authentication methods such as UDAP, SMART, or other protocols specified by the National Directory's implementer.
2. To retrieve the extracted data, begin by reading the status file. If the status indicates 'completed, ready for download,' proceed to the next step.
3. For FHIR endpoints containing data in ndjson format, initially obtain the ndjson links from the ndjson-links file. Then, access each file by employing the HTTP GET method with the URLs provided in the list.

**Actions taken by the Local Directory could be once or repeatedly via other method (e.g., SFTP)**
1. With the assigned account ID, the Local directory gains the ability to access the National Directory. Access is facilitated through a variety of secure login methods like UDAP, SMART, or other authentication processes that are established by the National Directory's implementer.
2. To retrieve files, use the SFTP protocol. Start by reading the status file; if the status indicates 'completed and ready for retrieval', proceed to transfer the files using SFTP.

**Cancel $ndhschExport operation**
1. Equipped with the assigned account ID, the Local directory is enabled to access the National Directory. This access is secured through various login methods such as UDAP, SMART, or other authentication protocols set up by the National Directory's implementer.
2. The Local Directory has the option to cancel the $ndhschExport operation at any time. This can be done by executing the $ndhschExport operation with the _cancel parameter set to true, along with providing the account and the scheduled ID for that account.
3. Upon receiving the request, the National Directory evaluates it.
4. The National Directory then communicates its response to the Local Directory, which could be a 202 Accepted status or an error status in the range of 4XX or 5XX.
5. If the operation is to proceed, the National Directory executes the $ndhschExport operation, resulting in the deletion of the previously scheduled operation. This deletion impacts only future and upcoming data retrievals.

#### Conformance Requirements for the National Directory's Scheduled Bulk Data Export
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

**Parameter** | **Server Conformance** | **Client Conformance** | **Type** | **Description** |
_account      | **SHALL**              | **SHALL**              | String   | This parameter is used to specify the user account. Will be used to cancel the request in the future |
_scheduledId | **SHALL**              | **SHALL**              | id       | This parameter is used to specify the request identifier. Will be used to cancel the request in the future. |
_type         | **SHALL**              | **SHOULD**             | string    | The response SHALL be filtered to only include resources of the specified resource types(s). If the client explicitly asks for export of resources that the Natioanl Directory server doesn't support, the server SHOULD return details via a FHIR OperationOutcome resource in an error response to the request. A string of comma-delimited following resource types: CareTeam,Endpoint, HealthcareService, InsurancePlan, Location, Network, Organization OrganizationAffiliation, Practitioner, PractitionerRole, and Verification. The response SHALL be filtered to only include resources of the specified resource types(s). If this parameter is omitted, the National Directory server SHALL return all supported resources within the scope of the client authorization |
_typeFilter   | **SHALL**              | **SHOULD**             | string    | When provided, a server with support for the parameter and requested search queries SHALL filter the data in the response to only include resources that meet the specified criteria |
_outputFormat | **SHALL**              | **SHOULD**             | String   | The format for the requested ndhschexport data file to be generated default to application/fhir+ndjson. The NDH server MAY support additional formats, such as application/csv |
_startdate    | **SHALL**              | **SHOULD**             | datetime | For export requests, clients **SHALL** supply this parameter. For canceling the export, this parameter may be omitted.
_frequency    | **SHALL**              | **SHOULD**             | Duration   | For export requests, clients **SHALL** supply this parameter. For canceling the export, this parameter may be omitted.
_cancle       | **SHALL**              | **SHOULD**             | boolean  | For export request, this parameter may be omitted. For cancelling the export, this parameter **SHALL** be set as true |
_keepFile     | **SHALL**              | **SHOULD**             | boolean  | If this parameter is absent, the server will delete previously extracted files and only provide the current extraction. |

#### Response - ACCEPTED
- HTTP status Code of 202 ACCEPTED

#### Response - Error (e.g., unsupported search parameter)
- HTTP Status Code of 4XX or 5XX
- The body SHALL be a FHIR OperationOutcome resource in JSON format


### Restricted Content
Our vision for NDH is that it will function as a public or semi-public utility, with a substantial amount of its information being made openly available. However, certain data included in NDH may be sensitive, and not accessible to all NDH stakeholders or the public. For instance, an implementer may choose to restrict data related to military personnel, emergency responders/volunteers, or domestic violence shelters from being accessible to anyone who has access to NDH, or to users in a local environment who have obtained data from NDH.

It is our expectation that NDH operational policies and legal agreements will provide a clear understanding of which data stakeholders can access. If necessary, these policies will require stakeholders to maintain the privacy and confidentiality of any sensitive information within downstream local environments. To facilitate this, we have incorporated a Restriction profile based on the Consent resource. This profile is designed to convey any restrictions associated with a data element, collection of elements, or resource that has been obtained from a verified healthcare directory.




{% include markdown-link-references.md %}