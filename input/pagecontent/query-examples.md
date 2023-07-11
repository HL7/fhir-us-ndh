### Look up endpoint by Organization
1. Endpoints for a given Orgnization Name:
```
GET [base]/Organization?name=ABC&_include=Organization:endpoint
```

2. Endpoints for a given State payer Orgnization:
```
GET [base]/Organization?address-state=FL&_include=Organization:endpoint
```

### Discover a specific social service by healthcareService
1. Get Healthcare Service by category
```
Get [base]/HealthcareService?category=food
```
```
Get [base]/HealthcareService?=category=group
```

### Discover practitioner qualifications
1.  Search for providers who possess qualifications in internal medicine and reside in the state of Connecticut.
```
GET [base]/Practitioner?practitioner-qualification-code=207R00000X&address-state=CT
```

### Discover practitioner location and office hours
1. Search for all practitioners in internal medicine who have a role in practice.
```
GET [base]/PractitionerRole?specialty=207R00000X
```
2. Search for all practitioners of internal medicine in the state of Connecticut who hold a role in practice.
```
GET [base]/PractitionerRole?specialty=207R00000X&location.address-state=CT
```

3. Search for all internal medicine practitioners in Connecticut who are accepting new patients.
```
GET [base]/PractitionerRole?specialty=207R00000X&location.address-state=CT&practitionerrole-new-patient=newpt
```
4. Search for a particular internal medicine practitioner in Connecticut with his NPI number
```
GET [base]/PractitionerRole?specialty=207R00000X&location.address-state=CT&practitioner.identifier=1235539892
```