### Validation and Verification Flow
#### Verification Flow

![VerificationWorkflow](VerificationFlow.png)  
The NDH implementer may acquire primary source reference data from an external primary source by functioning as a client, provided that the external primary source has a server enabling NDH access. The external primary source always serves as a client to the NDH to PUT or POST data into the NDH. Such a client could use the NDH base profiles and ensure that the data PUT or POST into the NDH is comprehensive and specific to its primary source, for instance, in the case of a license, it should contain information such as the nature of the license, issuance date, issuer, and so on.
 
**Descriptions**
1. Verification against the reference data from primary sources stored in the NDH
    1. Get the data from the reference data 
    2. Evaluate the verification outcome
        1. In case of success:
            1. update each verification resource instance to indicate when, what, is verified
            2. After all elements of a specific resource instance have been verified, update its verification status value to 'completed'.

        2. In case of failure:
            1. update verification resource instance to indicate when, what, and how the verification has failed
            2. update the verification status value of the resource instance to `incompleted`

2. Verification against external primary source
    1. The potential strategies for conducting verification with an external primary source
        1. Verify via external primary source API. The NDH operates as a client to an external primary source's server, utilizing the GET method to procure verification
        2. The NDH can acquire the verification from the primary source through phone, fax, or US postal service
        3. The NDH can also obtain the verification via direct
   2. Evaluate the verification outcome
        1. In case of success:
            1. update each verification resource instance to indicate when, what, is verified
            2. After all elements of a specific resource instance have been verified, update its verification status value to 'completed'

        2. In case of failure:
            1. update verification resource instance to indicate when, what, the verification has failed
            2. update the verification status value of the resource instance to `incompleted`

