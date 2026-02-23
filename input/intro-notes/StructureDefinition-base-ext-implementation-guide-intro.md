Implementation Guide Supported, when the connectionType and [EndpointIheSpecificConnectionType Extension](StructureDefinition-base-ext-endpoint-ihe-specific-connection-type.html) can't be used.

- ig-uri is a canonical for the Implementation Guide
- ig-name is a string that provides the name of the IG
- ig-usecase is a CodeableConcept that provides the use-case that is addressed by the named implementation guide
- ig-version is a string that provides the version of the IG
- ig-actor is a string that provides the actor (e.g., sender, receiver) from the IG that is supported
- ig-option is a string that indicates a named option for that actor in that IG (e.g., "Asynchronous Web Services Exchange" option for the Initiating Gateway actor in the IHE XCPD profile)
The IG SHOULD be indicated by at-least ig-uri, or ig-name.
