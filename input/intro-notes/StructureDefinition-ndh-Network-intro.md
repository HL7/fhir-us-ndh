### Scope and Usage
- In The National Directory of Healthcare Providers & Services (NDH) IG,  individuals and organizations are represented as participants in a Network through the practitionerRole and organizationAffiliation resources, respectively.

- The Network profile is based on USCore Organization Profile. However, the NPI and CLIA identifier types, which are Must-Support, are clearly intended for provider organizations only and are not expected to be populated for other organization types.

- The NDH Network and Organization profiles are both based on the Organization profile. To selectively query only Network profiles, search for type = 'ntwk'. To selectively query only Organization profiles, the type parameter is optional. However, you can provide any value defined in the [Organization Type Value Set](ValueSet-OrgTypeVS.html).

- When the contact is a department name, rather than a human (e.g., patient help line), include a blank family and given name, and provide the department name in contact.name.text.

- Note that the relationship between InsurancePlans and Networks is many-to-many. A plan may be associated with multiple networks, and a network may be associated with many plans. In this IG, this is modeled by having InsurancePlans reference networks (directionality of relationship supports this).

- To use the location-reference extension to indicate a network coverage area, the preferred form of reference is to create a Location instance with the State or region specified, and possibly provide a GeoJSON.  





