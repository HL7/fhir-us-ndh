### Boundraries and Relationships
The Organization resource is commonly structured as a hierarchy of organization resources, where the part-of property is used to indicate the relationship between child and parent organizations. This hierarchy serves to convey the conceptual structure of the organization. Organization has following key attributes:
1. A unique logical identifier that identifies the organization as an entity.
2. The name of the organization as known to humans.
3. Telecommunication identifiers that can be used to reach the organization.
4. Information about any large organizations that the organization might be part of.
5. One or more endpoints for electronic communication and data exchange.

Note:  The NDH Organization and Network profiles are both based on the Organization profile. To selectively query only Network profiles, search for type = 'ntwk'. To selectively query only Organization profiles, the type parameter is optional. However, you can provide any value defined in the [Organization Type Value Set](ValueSet-OrgTypeVS.html).

