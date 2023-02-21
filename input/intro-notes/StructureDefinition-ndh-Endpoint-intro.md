### Scope and Usage
The endpoint resource provides technical specifications for connecting to a specific location to transmit and retrieve information securely and accurately, according to the requirements of the endpoint owner. Unlike the CapabilityStatement, which describes the current system, the endpoint resource pertains to another system, potentially external to the current one. The endpoint could refer to locally hosted, regional, or national services.

Endpoint resources can be used to identify the location of endpoint details for various purposes, including referral requests to Organizations, OrganizationAffiliation, Locations, Practitioners, PractitionerRole or HealthcareServices. These resources can provide information on where to direct the referral request for efficient and effective care coordination.

Endpoint resources can also be useful for other purposes, such as facilitating preauthorization between insurance plans, network, and providers. They can be used to exchange information between care team members, allowing for seamless collaboration and communication among different healthcare providers involved in a patient's care. By utilizing endpoint resources, relevant information can be shared securely and efficiently, helping to improve the quality of care and patient outcomes.

### Boundaries and Releationships
#### CapabilityStatement vs Endpoint
The CapabilityStatement statement and the endpoint resource serve distinct purposes. While the CapabilityStatement describes the complete capability of a server, including the metadata of a specific server, the endpoint resource outlines the technical specifications for establishing connections and the intended purposes of such connections. The endpoint resource may only represent a small fraction of the server's capabilities, and it may not even function as a FHIR endpoint.
