#### PractitionerRole, Location, Address
The address for a practitionerRole should be located on the Location reference.  There is no address on the practitionerRole base resource since the location reference of practitionerRole has an address that should be used by the practitioner as part of their role. Each practitionerRole can support multiple locations. If two practitioners work at the same facility and each of them has their own non-service delivery locations, in addition to the common service delivery location. The guidance descripted in the diagram below:

<figure>
    {% include PractitionerRolePractitioner2Address.svg %}
    <figcaption> </figcaption>
</figure>