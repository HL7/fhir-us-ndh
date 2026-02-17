Implementation Guide Supported, when the connectionType and [EndpointIheSpecificConnectionType Extension](StructureDefinition-base-ext-endpoint-ihe-specific-connection-type.html) can't be used.

- ig-publication is a CodeableConcept
  - provided valueSet
- ig-uri is a canonical for the Implementation Guide
- ig-name is a string that provides the name of the IG
- ig-version is a string that provides the version of the IG
- ig-actor is a string that provides the actor (e.g., sender, receiver) from the IG that is supported

The IG SHOULD be indicated by at-least ig-publication, ig-uri, or ig-name.
