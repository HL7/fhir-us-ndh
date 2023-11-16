
### NDH Export Operation Workflow
#### Roles
There are two primary roles involved in a NDH export transaction:
1. Data provider
2. Data receiver

<figure>
    {% include ndh-export.svg %}
    <figcaption>Sequence diagram of Bulk Data </figcaption>
</figure>  

#### Description  
**Setup Account**
1. A Distributed Workflow Directory (DWD) sends a request to the NDH to create an account for establishing authentication and authorization.
2. The NDH assesses the request from the DWD and decides whether to grant or reject the account creation. If the request is approved, a unique account identifier is assigned, along with a specified data content location for future retrieval.
3. The NDH communicates the outcome of the request back to the DWD.

**Request $ndhexport from Portal or Application**
1. Perform a login to the NDH using the account ID of the requester. Two-factor authentication should be used.
2. Initiate an operation, such as $ndhexport, by submitting a request with all the required parameters. For instance, this could involve scheduling the extraction of specific resources for all organizations and individuals in the state of Maryland on a weekly basis.
3. The NDH evaluates the request and generates a corresponding response.
4. If the request is approved by the NDH, a 202 (Accept) response will be returned, indicating that the NDH will proceed with the $ndhexport operation as requested. In case of any errors in the request, the NDH will reject it and respond with a 4xx or 5xx status code.

**Actions in the NDH server could be once or repeatedly**
1. The NDH server executes a query based on the specified search criteria in the $ndhexport request, and stores the resulting data in the designated repository location for each respective account, adhering to the requested schedule.
2. With each new execution of the $ndhexport operation, the data in the repository is overwritten to ensure that it reflects the most up-to-date retrieval from the NDH. In the case of ndjson format data, a file containing a list of ndjson links is provided to the DWD, allowing them to use HTTP POST method to access each file via the provided link.

**Actions taken by the DWD could be once or repeatedly via using FHIR REST API**
1. The action can only be performed by authenticated and authorized accounts.
2. For FHIR endpoints, retrieve the list of ndjson files.
3. Retrieve the ndjson file by using the HTTP POST method with the URL provided in the list.
4. The DWD has the choice to delete the files from the repository after retrieval. This can be done by using a DELETE request with the URL provided in the list.
5. The NDH will delete the files from the repository based on the specified conditions.

**Actions taken by the DWD could be once or repeatedly via other method (e.g., SFTP)**
1. The action can only be performed by authenticated and authorized accounts.
2. Retrieve the files using the SFTP protocol.
3. The DWD submits a request to delete files.
4. The NDH carries out the deletion of the files.

**Cancel $ndhexport operation**
1. The action can only be performed by authenticated and authorized accounts.
2. The DWD initiates a request for the $ndhexport operation with the parameter to schedule deletion.
3. The NDH evaluates the request.
4. The NDH responds to the DWD with a 200 OK status or a 4XX or 5XX error status.
5. The NDH carries out the $ndhexport operation by deleting the previously scheduled operation. This deletion only affects upcoming and future retrievals.


### Bulk Data Export Operation Request Workflow
<br />

#### Roles
There are two primary roles involved in a Bulk data transaction:
1. Bulk Data Provider
    - FHIR Authorization Server - server that issues access tokens in response to valid token requests from a client
    - NDH Resource Server - server that accepts kick-off requests and provides job status and completion manifest.
    - Output File Server - server that returns Directory Data in response to urls in the completion manifest. This may be built into NDH Resource Server or
    may be independently hosted.
2. Bulk Data Client (Distributed Directory) - system that requests and receives access tokens and NDH Data files

<figure>
    {% include bulk-flow.svg %}
    <figcaption>Sequence diagram of Bulk Data </figcaption>
</figure>


