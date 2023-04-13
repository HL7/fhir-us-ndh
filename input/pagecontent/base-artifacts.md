### NDH Base Profiles
* [Base CareTeam]
* [Base Endpoint]
* [Base HealthcareService]
* [Base InsurancePlan]
* [Base Location]
* [Base Network]
* [Base Organization]
* [Base OrganizationAffiliation]
* [Base Practitioner]
* [Base PractitionerRole]
* [Base Restriction]
* [Base Verification]

### NDH Base Extensions 
* [NDH Accessibility]
* [NDH Associated Servers]
* [NDH Careteam Alias]
* [NDH Communication Proficiency]
* [NDH ContactPoint AvailableTime]
* [NDH Delivery Method]
* [NDH Dynamic Registration]
* [NDH EHR]
* [NDH Endpoint Reference]
* [NDH Endpoint Connection Type]
* [NDH Endpoint non FHIR payloadType]
* [NDH Endpoint Rank]
* [NDH Endpoint Usecase]
* [NDH Funding Source]
* [NDH HealthcareService Reference]
* [NDH FHIR IG]
* [NDH Identifier Status]
* [NDH InsurancePlan Reference]
* [NDH Location Reference]
* [NDH Network Reference]
* [NDH NewPatients]
* [NDH Orginization Alias Period]
* [NDH Orgnization Alias Type]
* [NDH Org Description]
* [NDH Payment Accepted]
* [NDH Practitioner Qualification]
* [NDH Qualification]
* [NDH Rating]
* [NDH Required Document]
* [NDH Secure Endpoint]
* [NDH Secure Exchange Artifacts]
* [NDH Trust Framework]
* [NDH Usage Restriction]
* [NDH Via Intermediary]

### NDH Extensions are used in NDH Base Profiles

<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

Extension/Profile|[Base CareTeam]|[Base Endpoint]|[Base HealthcareService]|[Base InsurancePlan]|[Base Location]|[Base Network]|[Base Organization]|[Base OrganizationAffiliation]|[Base Practitioner]|[Base PractitionerRole]|[Base Restriction]|[Base Verification]|
:---------------:|:------:|:------:|:-------:|:--------:|:------:|:------:|:-------:|:-------:|:------:|:------:|:------:|:-------:|
*[NDH Accessibility]*| | | | |Yes| | | |Yes| | | |
*[NDH Associated Servers]*| |Yes| | | | | | | | | | |
*[NDH Careteam Alias]*|Yes| | | | | | | | | | | |
*[NDH Communication Proficiency]*| | | | | | | | | Yes | | | |
*[NDH Contactpoint Availabletime]*|Yes|Yes|Yes|Yes|Yes|Yes|Yes|Yes|Yes|Yes| | |
*[NDH Delivery Method]*           | | | Yes | | | | | | | | | |
*[NDH Digital Certificate]*       | | | | | | | Yes | | Yes | Yes | | |
*[NDH Dynamic Registration]*      | | Yes | | | | | | | | | | | 
*[NDH EHR]*                       | | | | | Yes | | | | | | | | 
*[NDH Endpoint Connection Type]*| | Yes | | | | | | | | | | |
*[NDH Endpoint non FHIR payloadType]*| | Yes | | | | | | | | | | |
*[NDH Endpoint Rank]*| | Yes | | | | | | | | | | |
*[NDH Endpoint Reference]*| Yes | | | | | | | | Yes | | | |
*[NDH Endpoint Usecase]*| | Yes | | | | | | | | | | |
*[NDH Funding Source]*| | | Yes | | | | Yes | | | | | |
*[NDH Healthcareservice Reference]*| Yes | | | | | | | | | | | |
*[NDH FHIR IG]*| | Yes | | | | | | | | | | |
*[NDH Identifier Status]*| Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | | |
*[NDH InsurancePlan Reference]*| | | | | | | Yes | | | | | |
*[NDH Location Reference]*| Yes | | | | | Yes | | | | | | |
*[NDH Network Reference]*| | | | | | | | | | Yes | | |
*[NDH NewPatients]*| | | Yes | | Yes | | | | Yes | | | |
*[NDH Orginization Alias Period]*| | | | | | | Yes | | | | | |
*[NDH Orgnization Alias Type]*| | | | | | | Yes | | | | | |
*[NDH Org Description]*| | | | | | | Yes | | | | | |
*[NDH Payment Accepted]*| | | Yes | | | | Yes | | | | | |
*[NDH Practitioner Qualification]*| | | | | | | | | Yes | Yes | | |
*[NDH Qualification]*| | | | | | | Yes | Yes | | | | |
*[NDH Rating]*| | | Yes | | | | Yes | | Yes | Yes | | |
*[NDH Required Document]*| | | Yes | | | | | | | | | |
*[NDH Secure Endpoint]*| | Yes | | | | | | | | | | |
*[NDH Secure Exchange Artifacts]*| | Yes | | | | | | | | | | |
*[NDH Trust Framework]*| | Yes | | | | | | | | | | |
*[NDH Usage Restriction]*| Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | | |
*[NDH Via Intermediary]*| Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes | | |


       
{: .grid}

### NDH Base Search Parameters Defined by NDH IG
* [endpoint-mime-type]
* [endpoint-usecase-standard]
* [endpoint-usecase-type]

* [careteam-endpoint]
* [careteam-location]
* [careteam-name]
* [careteam-organization]
* [careteam-service]

* [healthcareservice-category]
* [healthcareservice-eligibility]
* [healthcareservice-new-patient]
* [healthcareservice-new-patient-from-network]
* [healthcareservice-type]
* [healthcareservice-via-intermediary]

* [insuranceplan-coverage-area]
* [insuranceplan-coverage-benefit-limit-value]
* [insuranceplan-coverage-benefit-type]
* [insuranceplan-coverage-type]
* [insuranceplan-coverage-network]
* [insuranceplan-network]
* [insuranceplan-plan-coverage-area]
* [insuranceplan-plan-general-cost-cost]
* [insuranceplan-plan-general-cost-groupsize]
* [insuranceplan-plan-general-cost-type]
* [insuranceplan-plan-identifier]
* [insuranceplan-plan-network]
* [insuranceplan-plan-type]
* [insuranceplan-plan-specific-cost-category]
* [insuranceplan-plan-specific-cost-benefit-type]
* [insuranceplan-plan-specific-cost-benefit-cost-type]
* [insuranceplan-plan-specific-cost-benefit-cost-value]

* [location-accessibility]
* [location-contains]
* [location-new-patient]
* [location-new-patient-from-network]
* [location-via-intermediary]

* [network-coverage-area]
* [organization-via-intermediary]

* [practitioner-identifier-assigner]
* [practitioner-qualification-code]
* [practitioner-qualification-issuer]
* [practitioner-qualification-period]
* [practitioner-via-intermediary]
* [practitionerrole-network]
* [practitionerrole-new-patient]
* [practitionerrole-new-patient-from-network]
* [practitionerrole-via-intermediary]

* [verificationresult-attestation-communication-method]
* [verificationresult-attestation-onbehalfof]
* [verificationresult-attestation-who]
* [verificationresult-primarysource-validation-date]
* [verificationresult-primarysource-validation-status]
* [verificationresult-primarysource-type]
* [verificationresult-primarysource-who]
* [verificationresult-status-date]
* [verificationresult-status]
* [verificationresult-target]
* [verificationresult-validator-organization]

### NDH Base Code System
* [AcceptingPatientsCS]
* [AccessibilityCS]
* [CredentialStatusCS]
* [DeliveryMethodCS]
* [EndpointConnectionTypeCS]
* [EndpointPayloadTypeCS]
* [EndpointTypeCS]
* [HealthcareServiceCategoryCS]
* [IgTypeCS]
* [InsurancePlanTypeCS]
* [InsuranceProductTypeCS]
* [LanguageProficiencyCS]
* [OrgAliasTypeCS]
* [OrgTypeCS]
* [OrganizationAffiliationRoleCS]
* [PractitionerRoleCS]
* [QualificationStatusCS]
* [TrustFrameworkTypeCS]
* [ValidationTypeCS]

### NDH Base Value Sets
* [AcceptingPatientsVS]
* [AccessibilityVS]
* [DeliveryMethodVS]
* [EndpointConnectionTypeVS]
* [EndpointPayloadTypeVS]
* [EndpointTypeVS]
* [EndpointUsecaseVS]
* [HealthcareServiceCategoryVS]
* [HealthcareServiceTypeVS]
* [IdentifierStatusVS]
* [IgTypeVS]
* [IndividualSpecialtyAndDegreeLicenseCertificateVS]
* [InsuranceProductTypeVS]
* [InsurancePlanTypeVS]
* [LanguageProficiencyVS]
* [MinEndpointConnectionTypeVS]
* [NetworkTypeVS]
* [NonIndividualSpecialtyAndDegreeLicenseCertificateVS]
* [OrgTypeVS]
* [OrgAliasTypeVS]
* [OrganizationAffiliationRoleVS]
* [PractitionerRoleVS]
* [QualificationStatusVS]
* [SpecialtiesVS]
* [SpecialtyAndDegreeLicenseCertificateVS]
* [TrustFrameworkTypeVS]
* [ValidationProcessVS]
* [VirtualModalitiesVS]


{% include markdown-link-references.md %}