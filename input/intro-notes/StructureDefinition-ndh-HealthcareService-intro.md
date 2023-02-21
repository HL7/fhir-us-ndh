### Scope and Usage
The HealthcareService resource is commonly used to describe the range of services offered by an organization or practitioner at a specific location. This resource can cover a diverse range of services across the entire healthcare spectrum, including but not limited to promotion, prevention, diagnostics, hospital and ambulatory care, home care, long-term care, and other health-related and community services.

This profile modifies the base HealthcareService resource in the following manner:

Constrains the cardinality of healthcareService.active (1..1)
All references SHALL conform to the appropriate National Directory of Healthcare Providers & Services (NDH) Implementation Guide profile

Adds extensions:
rating (0..*) - indicate type of rating and the value in each rating type
NewPatients (0..*) - indicates whether the service is accepting new patients
deliverymethod (1..*) -  indicate how the service is delivered, such as virtually or in-person
paymentaccepted (0..*) - indicate the accepted forms of payment, such as cash, check, credit card, or other payment methods.
requiredDocument (0..*) - specify any required documents or forms of identification that may be necessary for accessing or using the services, such as a government-issued ID or passport
fundingSource (0..*) - provide information on the types of funding that the organization or service receives, such as government grants, private donations, or insurance reimbursements
usage-estriction (0..*) - indicates whether disclosure of any data associated with a service is restricted
identifier.identifier-status (0..1) - indicates the status of a service’s identifier
telecom.contactpoint-availabletime (0..*) - representing the days and times a contact point is available
telecom.via-intermediary (0..*) - a reference to an alternative point of contact for this service

