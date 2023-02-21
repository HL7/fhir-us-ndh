### Background & Scope
OrganizationAffiliation resource is designed to outline connections between multiple organizations. This includes details on the services provided by one organization to another, the location(s) where services are available, the electronic endpoints used, and other relevant information.

OrganizationAffiliation is useful for defining relationships between organizations that do not have a hierarchical structure. For instance:

- One organization may provide services to another organization
- Two or more organizations may collaborate in a partnership or joint venture
- An organization may be a member of another organization, without being owned by it (for example, a hospital can be a member of the American Hospital Association or a health information exchange network).

OrganizationAffiliation and practitionerRole share a similar structure. However, while practitionerRole references both practitioner and organization, OrganizationAffiliation involves references to a participatingOrg and an organization. The participating organization provides "services" to the primary organization, just as a practitioner provides services to an organization. To illustrate this, here are examples for the three cases mentioned earlier:

The participating organization provides services to the primary organization.
In a joint venture, the joint venture itself is the primary organization, while partners within the joint venture are considered participating organizations. This requires two instances of the OrganizationAffiliation resource.
In an association, the association is the primary organization, and its members are participating organizations.
Additionally, OrganizationAffiliation is used to indicate when an organization provides services for a health insurance provider network.

Each instance has its own time period and can optionally include links to specific related services or locations that are accessible. These referenced locations or services should be associated with the participating organization and may available to the primary organization.

An OrganizationAffiliation role could encompass various healthcare services at multiple locations. When different locations provide distinct services, it is recommended to employ multiple OrganizationAffiliation resources and to separate them by location.

This profile modifies the base OrganizationAffiliation resource in the following manner:

Constrains the cardinality of OrganizationAffiliation.active (1..1)

All references SHALL conform to the appropriate National Directory of Healthcare Providers & Services (NDH) Implementation Guide profile

Adds extensions:
qualification (0..*) - 
identifier.dentifier-status (0..1) - indicates the status of an identifier for the role
usage-estriction (0..*) - indicates whether disclosure of any data associated with this role is restricted
telecom.via-intermediary (0..1) - a reference to an alternative point of contact for this role
telecom.contactpoint-available time (0..*) - indicates when the point of contact for this role is available