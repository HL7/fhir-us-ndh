#### Search Parameter
##### Search Endpoints based on the usecase type
Search the endpoint, it has the usecase type is `HOPEART` (healthcare operations)

`GET [base]/Endpoint?endpoint-usecase-type=HOPERAT`

or 

`GET [base]/Endpoint?endpoint-usecase-type=http://terminology.hl7.org/CodeSystem/v3-ActReason|HOPERAT`

Search the endpoints with the usecase type with a given CodeSystem

`GET [base]/Endpoint?endpoint-usecase-type=http://terminology.hl7.org/CodeSystem/v3-ActReason|`