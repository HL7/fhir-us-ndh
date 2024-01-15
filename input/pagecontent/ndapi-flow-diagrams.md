
### NDH Export Operation Workflow
#### NDH Scheduled Export Operation
[OperationDefinition-NdhschExport]
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
1. A Local Directory sends a request to the NDH to create an account for establishing authentication and authorization.
2. The NDH evaluates the application submitted by the Local Directory for the creation of a new account and decides whether to grant or reject the account creation. Upon approving the request, the NDH assigns a distinct account identifier to the new account. Additionally, a specific data content location is allocated for the purpose of future data retrieval. This designated location is structured to accommodate various scheduled data exports and is equipped with adequate storage capacity to handle the volume of data expected to be extracted.
3. The NDH communicates the outcome of the request back to the Local Directory.

**Request $ndhschExport from Portal or Application**
1. Possessing the assigned account ID, the Local directory is then able to access the National Directory. This can be achieved through various secure login methods such as UDAP, SMART, or other authentication processes established by the implementer of the National Directory.
2. Begin a process like $ndhschExport by submitting a request that includes all necessary parameters. To conduct multiple scheduled exports, each request must have a distinct schedule ID. For example, this might entail setting up a weekly extraction schedule for specific resources from all organizations and practitioners in the state of Maryland, and a monthly schedule for all InsurancePlan data in the state of Maryland.
3. The NDH evaluates the request and generates a corresponding response.
4. If the request is approved by the NDH, a 202 (Accept) response will be returned, indicating that the NDH will proceed with the $ndhschExport operation as requested. In case of any errors in the request, the NDH will reject it and respond with a 4xx or 5xx status code.

**Actions in the National Directory server could be once or repeatedly**
1. The National Directory server processes queries from the $ndhschExport requests, generating data based on specified search criteria. This data is then stored in a designated repository for each account according to a pre-set schedule. Multiple scheduled exports can be set up by each account, each with a unique scheduled ID provided in the Local Directory's $ndhschExport request. The National Directory is advised to include this information in the file names of each extraction to differentiate between requests. These files are produced based on the scheduled start times and frequencies. To distinguish files generated at different times, each file will contain a timestamp reflecting the start time and frequency, indicating the date and time the data was extracted. Since data extraction takes time, a corresponding status file is created for each extraction. This file follows the same naming convention as the extracted file but includes a status indicator. The status file contains information such as 'completed ready for download', 'pending', or 'error contact the administrator'.

2. Each time the $ndhschExport operation is executed within the National Directory, it results in the generation of a new set of files in the repository. If the Local Directory's request includes the input parameter 'keep file flag' set to false, this new data extraction will lead to the deletion of the old set of files that were generated previously. Conversely, if the 'keep file flag' is set to true, the previously extracted files will be retained. Regarding ndjson format data, a file containing a list of ndjson links is provided. This allows users to access each file through the HTTP POST method using the provided links. The filename for this list will follow the established naming convention but will specifically indicate that it contains links for ndjson files.

For a weekly extraction schedule targeting specific resources from all organizations and practitioners in the state of Maryland, and a monthly schedule for all InsurancePlan data in Maryland, the generated files follow this format:
{scheduled id}-{resource type}-{date and time of extraction}.{file type}
For example:
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
3. For FHIR endpoints containing data in ndjson format, initially obtain the ndjson links from the ndjson-links file. Then, access each file by employing the HTTP POST method with the URLs provided in the list.

**Actions taken by the Local Directory could be once or repeatedly via other method (e.g., SFTP)**
1. With the assigned account ID, the Local directory gains the ability to access the National Directory. Access is facilitated through a variety of secure login methods like UDAP, SMART, or other authentication processes that are established by the National Directory's implementer.
2. To retrieve files, use the SFTP protocol. Start by reading the status file; if the status indicates 'completed and ready for retrieval', proceed to transfer the files using SFTP.

**Cancel $ndhschExport operation**
1. Equipped with the assigned account ID, the Local directory is enabled to access the National Directory. This access is secured through various login methods such as UDAP, SMART, or other authentication protocols set up by the National Directory's implementer.
2. The Local Directory has the option to cancel the $ndhschExport operation at any time. This can be done by executing the $ndhschExport operation with the _cancel parameter set to true, along with providing the account and the scheduled ID for that account.
3. Upon receiving the request, the National Directory evaluates it.
4. The National Directory then communicates its response to the Local Directory, which could be a 200 OK status or an error status in the range of 4XX or 5XX.
5. If the operation is to proceed, the National Directory executes the $ndhschExport operation, resulting in the deletion of the previously scheduled operation. This deletion impacts only future and upcoming data retrievals.


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


{% include markdown-link-references.md %}