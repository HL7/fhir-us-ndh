#### Use cases for supporting IHE networks
NDH adopts the approach proposed in the IHE White Paper "Document Sharing Across Network Topologies" by utilizing the NDH OrganizationAffiliation resource to accommodate the various scenarios for federated, multi-hop, and proxied Endpoints. Specifically, we address how to represent the structure in the National Directory and ensure the successful execution of federated transactions, such as sending an XDR push to a Document Recipient, intended for one or more recipients. The approach also includes implementing specific mechanisms to solve particular problems, allowing each environment to only adopt the mechanisms it requires. For instance, if a directory can declare that all Organization.partOf relationships imply the flow of federated data, the OrganizationAffiliation profile may not be necessary. It is essential to ensure that all mechanisms work seamlessly together within the National Directory, taking into account multiple networks and perspectives.

An Example from IHE  "Document Sharing Across Network Topologies" White Paper. 
- Valley Region HIE has joined a nationwide health information exchange, Big Health Exchange.
- Big Health Exchange doesn't have any central service endpoints; it is peer to peer.
- New Hope is in Big Health Exchange to show how it has access the desired organizations by virtue of Valley HIE's participation in Big Health. New Hope will get to these organizations through the endpoints "Valley BigHx Responding Gateway".
- Valley HIE is leaving its PDQ and XDS internal service endpoints for its members, but has added initiating gateway endpoints for its members to access Big Health (as well as aggregate internal data).
- Async endpoints and their response endpoints to show that even though members of Valley HIE utilize central services, they need individual async endpoints to receive responses.

This example provides answers to the following questions: 
1. Is it possible to locate the endpoint in the National Directory? 
2. Can the endpoints be accessed by members of the organization? 
3. Is it appropriate to use the endpoint for the task at hand?

[More infromation in the White Paper](https://github.com/ihe/iti.topologies/blob/main/topologies.md#518-document-access-putting-it-all-together)

<figure>
    {% include OrganizationAffiliationIHE3.svg %}
    <figcaption> </figcaption>
</figure>

#### Search 
Get [base]/OrganizationAffiliation?code=HieInitiator