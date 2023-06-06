#### Headers for ndhexport operation requst
Header Prefer = respond-async indicate the response is async.
```
Prefer: respond-async
```

#### Response of the ndhexport operatation request 
The response will include a return code of 202, indicating that the NDH server has accepted the request.
```
HTTP/1.1 202 Accepted
```
