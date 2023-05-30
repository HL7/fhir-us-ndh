### Initial Attestation Workflow

![IntialAttestationWorkflow](NDH_Initial_Attestation_WF.png)  

**Descriptions**
1. Initiate a one-time process to upload unverified data from different directories, such as NPESS, PECOS, etc.

2. Transfer reference data from the main source into the NDH (Network Data Hub).

3. Receive attested details about oneself, an organization or group from an authorized individual via the Portal or Application. This information might contrast with the unattested data or reference data.

4. Upon full verification of the data, store it in the NDH and mark its resource verification status as complete.

5. For data that still requires verification or has unresolved items, take the following steps: If the data is awaiting verification from the primary source, place it in the pending verification queue and store it in the NDH, marking its resource verification status as incomplete. If it's waiting for mutual attestation, place it in the provisional relationship resource queue, also storing it in the NDH with an incomplete verification status. Upon resolution of all pending verification items, the resource verification status will be updated to complete in the NDH.
