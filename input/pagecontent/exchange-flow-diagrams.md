

#### Bulk Data Export Operation Request Workflow
<br />

##### Roles
There are two primary roles involved in a Bulk data transaction:
1. Bulk Data Provider
    - FHIR Authorization Server - server that issues access tokens in response to valid token request from client
    - NDH Resource Server - server that accepts kick-off request and provides job status and completion manifest.
    - Ouput File Server - server that returns Directory Data in response to urls in the completion manifest. This may be built into NDH Resource Server, or
    may be independently hosted.
2. Bulk Data Client (Distributed Directory) - system that requests and receives access tokens and NDH Data files

<figure>
    {% include bulk-flow.svg %}
    <figcaption>Sequence diagram of Bulk Data </figcaption>
</figure>
