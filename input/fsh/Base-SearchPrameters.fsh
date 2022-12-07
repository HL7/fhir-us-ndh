Instance: endpoint-mime-type
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint mime-type"
* status = #active
* code = #endpoint-mime-type
* name = "EndpointMineTypeSearchParameter"
* description = "Select Endpoints that support the specified mime-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-mime-type"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.payloadMimeType"
* multipleOr = true
* multipleAnd = true

/*
Instance: endpoint-organization
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint organization"
* status = #active
* code = #endpoint-organization
* name = "EndpointOrganizationSearchParameter"
* description = "Select Endpoints managed by the specified organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-organization"
* base[0] = #Endpoint
* type = #reference
* target[+] = #Organization
* expression = "Endpoint.managingOrganization"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "address"
* chain[+] = "partof"
* chain[+] = "type"
*/

Instance: endpoint-usecase-standard
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint usecase-standard"
* status = #active
* code = #endpoint-usecase-standard
* name = "EndpointUsecaseStandardSearchParameter"
* description = "Select Endpoints that support the specified usecase standard"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-standard"
* base[0] = #Endpoint
* type = #uri
* expression = "Endpoint.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-usecase').extension('standard')"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #below

Instance: endpoint-usecase-type
InstanceOf: SearchParameter
Usage: #definition
Title: "Endpoint usecase-type"
* status = #active
* code = #endpoint-usecase-type
* name = "EndpointUsecaseTypeSearchParameter"
* description = "Select Endpoints that support the type of services indicated by the specified usecase-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/endpoint-usecase-type"
* base[0] = #Endpoint
* type = #token
* expression = "Endpoint.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/base-ext-endpoint-usecase').extension('endpointUsecasetype')"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text


Instance: careteam-endpoint
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam endpoint"
* status = #active
* code = #careteam-endpoint
* name = "CareTeamEndpointSearchParameter"
* description = "Select CareTeams with the specified endpoint"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-endpoint"
* base[0] = #CareTeam
* type = #reference
* expression = "CareTeam.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/endpoint-reference')"
* target[+] = #Endpoint
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "connection-type"
* chain[+] = "organization"

Instance: careteam-location
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam location"
* status = #active
* code = #location
* name = "CareTeamLocationSearchParameter"
* description = "Select CareTeams operating at the specified location"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-location"
* base[0] = #CareTeam
* type = #reference
* expression = "CareTeam.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/locaion-reference')"
* target[+] = #Location
* multipleOr = true
* multipleAnd = true
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "address"
* chain[+] = "organization"
* chain[+] = "type"

Instance: careteam-name
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam name"
* status = #active
* code = #careteam-name
* name = "CareTeamServiceSearchParameter"
* description = "Select CareTeams with the specified name"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-name"
* base[0] = #CareTeam
* type = #string
* expression = "CareTeam.name|CareTeam.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/careteam-alias')"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #exact
* modifier[+] = #contains

Instance: careteam-organization
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam organization"
* status = #active
* code = #careteam-organization
* name = "CareTeamOrganizationSearchParameter"
* description = "Select CareTeams managed by the specified organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-organization"
* base[0] = #CareTeam
* type = #reference
* expression = "CareTeam.managingOrganization"
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* modifier[+] = #above
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "address"
* chain[+] = "partof"
* chain[+] = "type"

Instance: careteam-service
InstanceOf: SearchParameter
Usage: #definition
Title: "CareTeam service"
* status = #active
* code = #careteam-service
* name = "CareTeamServiceSearchParameter"
* description = "Select CareTeams providing the specified service"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/careteam-service"
* base[0] = #CareTeam
* type = #reference
* expression = "CareTeam.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/healthcareservice-reference')"
* target[+] = #HealthcareService
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "service-category"
* chain[+] = "organization"
* chain[+] = "location"

Instance: healthcareservice-category
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService category"
* status = #active
* code = #category
* name = "HealthcareServiceCategorySearchParameter"
* description = "Select HealthcareService with the specified category"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-category"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.category"
* multipleAnd = true
* multipleAnd = true
* modifier[+] = #text

Instance: healthcareservice-eligibility
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService eligibility"
* status = #active
* code = #eligibility
* name = "HealthcareServiceEligibilitySearchParameter"
* description = "Select HealthcareService with the specified eligibility"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-eligibility"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.eligibility.code"
* multipleAnd = true
* multipleAnd = true
* modifier[+] = #text

Instance: healthcareservice-new-patient
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService new patient"
* status = #active
* code = #new-patient
* name = "HealthcareServiceNewPatientSearchParameter"
* description = "Select HealthcareService with the specified new patient"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/newpatients').extension('acceptingPatients')"
* multipleAnd = true

Instance: healthcareservice-new-patient-from-network
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService new patient from network"
* status = #active
* code = #new-patient-from-network
* name = "HealthcareServiceNewPatientFromNetworkSearchParameter"
* description = "Select HealthcareService with the specified new patient from network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-new-patient-from-network"
* base[0] = #HealthcareService
* type = #reference
* expression = "HealthcareService.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/newpatients').extension('fromNetwork')"
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* chain[+] = "organization-identifier"
* chain[+] = "organization-name"
* chain[+] = "organization-partof"

Instance: healthcareservice-type
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService type"
* status = #active
* code = #type
* name = "HealthcareServiceTypeSearchParameter"
* description = "Select HealthcareService with the specified type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-type"
* base[0] = #HealthcareService
* type = #token
* expression = "HealthcareService.type"
* multipleAnd = true
* multipleAnd = true
* modifier[+] = #text

Instance: healthcareservice-via-intermediary
InstanceOf: SearchParameter
Usage: #definition
Title: "HealthcareService via-intermediary"
* status = #active
* code = #via-intermediary
* name = "HealthcareServiceViaIntermediarySearchParameter"
* description = "Select HealthcareService with the specified via-intermediary"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/healthcareservice-via-intermediary"
* base[0] = #HealthcareService
* type = #reference
* expression = "HealthcareService.telecom.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/via-intermediary')"
* target[+] = #Organization
* target[+] = #OrganizationAffiliation
* target[+] = #PractitionerRole
* target[+] = #Location
* multipleOr = true
* multipleAnd = true


Instance: insuranceplan-coverage-area
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan coverage-area"
* status = #active
* code = #insuranceplan-coverage-area
* name = "InsuranceCoverageAreaSearchParameter"
* description = "Select products that are offered in the specified location"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-area"
* base[0] = #InsurancePlan
* type = #reference
* target[+] = #Location
* expression = "InsurancePlan.coverageArea"
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "contains"

Instance: insuranceplan-coverage-benefit-limit-value
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan coverage-benefit-limit-value"
* status = #active
* code = #insuranceplan-coverage-benefit-limit-value
* name = "InsuranceplanCoverageBenefitLimitValueSearchParameter"
* description = "Select products that are offered in the specified benefit limit value"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-benefit-limit-value"
* base[0] = #InsurancePlan
* type = #quantity
* expression = "InsurancePlan.coverage.benefit.limit.value"
* multipleOr = true
* multipleAnd = true
* comparator[0] = #eq
* comparator[+] = #gt
* comparator[+] = #lt 
* comparator[+] = #ge 
* comparator[+] = #le 
* comparator[+] = #sa 
* comparator[+] = #eb


Instance: insuranceplan-coverage-benefit-type
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan coverage-benefit-type"
* status = #active
* code = #insuranceplan-coverage-benefit-type
* name = "InsuranceplanCoverageBenefitTypeSearchParameter"
* description = "Select products that are offered in the specified coverage-benefit-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-benefit-type"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.coverage.benefit.type"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text

Instance: insuranceplan-coverage-type
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan coverage-type"
* status = #active
* code = #insuranceplan-coverage-type
* name = "InsuranceplanCoverageTypeSearchParameter"
* description = "Select products that are offered in the specified coverage-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-type"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.coverage.type"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text

Instance: insuranceplan-coverage-network
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan coverage-network"
* status = #active
* code = #insuranceplan-coverage-network
* name = "InsuranceplanCoverageNetworkSearchParameter"
* description = "Select products offering covered benefits through the specified coverage network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-coverage-network"
* base[0] = #InsurancePlan
* type = #reference
* expression = "InsurancePlan.coverage.network"
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "partof"

Instance: insuranceplan-network
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan network"
* status = #active
* code = #insuranceplan-network
* name = "InsuranceplanPlanNetworkSearchParameter"
* description = "Select products that are offered in the specified network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-network"
* base[0] = #InsurancePlan
* type = #reference
* expression = "InsurancePlan.network"
* target = #Organization
* multipleOr = true
* multipleAnd = true
* chain[0] = #identifier
* chain[+] = #name
* chain[+] = #partof

Instance: insuranceplan-plan-coverage-area
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan coverage area"
* status = #active
* code = #insuranceplan-plan-coverage-area
* name = "InsuranceplanPlanCoverageAreaSearchParameter"
* description = "Select products offering covered benefits through the specified plan coverage area"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-coverage-area"
* base[0] = #InsurancePlan
* type = #reference
* expression = "InsurancePlan.plan.coverageArea"
* target[+] = #Location
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "contains"

Instance: insuranceplan-plan-general-cost-cost
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-general-cost-cost"
* status = #active
* code = #insuranceplan-plan-general-cost-cost
* name = "InsuranceplanPlanGeneralCostCostSearchParameter"
* description = "Select products that are offered in the specified plan-general-cost-cost"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-general-cost-cost"
* base[0] = #InsurancePlan
* type = #quantity
* expression = "InsurancePlan.plan.generalCost.cost"
* multipleOr = true
* multipleAnd = true
* comparator[0] = #eq
* comparator[+] = #gt
* comparator[+] = #lt 
* comparator[+] = #ge 
* comparator[+] = #le 
* comparator[+] = #sa 
* comparator[+] = #eb

Instance: insuranceplan-plan-general-cost-groupsize
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-general-cost-groupsize"
* status = #active
* code = #insuranceplan-plan-general-cost-groupsize
* name = "InsuranceplanPlanGeneralCostGroupsizeSearchParameter"
* description = "Select products that are offered in the specified plan-general-cost-groupsize"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-general-cost-groupsize"
* base[0] = #InsurancePlan
* type = #number
* expression = "InsurancePlan.plan.generalCost.groupsize"
* multipleOr = true
* multipleAnd = true
* comparator[0] = #eq
* comparator[+] = #gt
* comparator[+] = #lt 
* comparator[+] = #ge 
* comparator[+] = #le 
* comparator[+] = #sa 
* comparator[+] = #eb

Instance: insuranceplan-plan-general-cost-type
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-general-cost-type"
* status = #active
* code = #insuranceplan-plan-general-cost-type
* name = "InsuranceplanPlanGeneralCostTypeSearchParameter"
* description = "Select products that are offered in the specified plan-general-cost-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-general-cost-type"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.plan.generalCost.type"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text

Instance: insuranceplan-plan-identifier
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-identifier"
* status = #active
* code = #insuranceplan-plan-identifier
* name = "InsuranceplanPlanIdentifierSearchParameter"
* description = "Select products that are offered in the specified plan-identifier"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-identifier"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.plan.identifier"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text
* modifier[+] = #ofType

Instance: insuranceplan-plan-network
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-network"
* status = #active
* code = #insuranceplan-plan-network
* name = "InsuranceplanPlanNetworkSearchParameter"
* description = "Select products that are offered in the specified plan-network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-network"
* base[0] = #InsurancePlan
* type = #reference
* expression = "InsurancePlan.plan.network"
* target = #Organization
* multipleOr = true
* multipleAnd = true
* chain[0] = #identifier
* chain[+] = #name
* chain[+] = #partof

Instance: insuranceplan-plan-type
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-type"
* status = #active
* code = #insuranceplan-plan-type
* name = "InsuranceplanPlanTypeSearchParameter"
* description = "Select products that are offered in the specified plan-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-type"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.plan.type"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text


Instance: insuranceplan-plan-specific-cost-category
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-specific-cost-category"
* status = #active
* code = #insuranceplan-plan-specific-cost-category
* name = "InsuranceplanPlanSpecificCostCategorySearchParameter"
* description = "Select products that are offered in the specified plan-specific-cost-category"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-specific-cost-category"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.plan.specificCost.category"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text

Instance: insuranceplan-plan-specific-cost-benefit-type
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-specific-cost-benefit-type"
* status = #active
* code = #insuranceplan-plan-specific-cost-benefit-type
* name = "InsuranceplanPlanSpecificCostBenefitTypeSearchParameter"
* description = "Select products that are offered in the specified plan-specific-cost-benefit-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-specific-cost-benefit-type"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.plan.specificCost.benefit.type"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text


Instance: insuranceplan-plan-specific-cost-benefit-cost-type
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-specific-cost-benefit-cost-type"
* status = #active
* code = #insuranceplan-plan-specific-cost-benefit-cost-type
* name = "InsuranceplanPlanSpecificCostBenefitCostTypeSearchParameter"
* description = "Select products that are offered in the specified plan-specific-cost-benefit-cost-type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-specific-cost-benefit-cost-type"
* base[0] = #InsurancePlan
* type = #token
* expression = "InsurancePlan.plan.specificCost.benefit.cost.type"
* multipleOr = true
* multipleAnd = true
* modifier[0] = #text

Instance: insuranceplan-plan-specific-cost-benefit-cost-value
InstanceOf: SearchParameter
Usage: #definition
Title: "InsurancePlan plan-specific-cost-benefit-cost-value"
* status = #active
* code = #insuranceplan-plan-specific-cost-benefit-cost-value
* name = "InsuranceplanPlanSpecificCostBenefitCostValueSearchParameter"
* description = "Select products that are offered in the specified plan-specific-cost-benefit-cost-value"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/insuranceplan-plan-specific-cost-benefit-cost-value"
* base[0] = #InsurancePlan
* type = #quantity
* expression = "InsurancePlan.plan.specificCost.benefit.cost.value"
* multipleOr = true
* multipleAnd = true
* comparator[0] = #eq
* comparator[+] = #gt
* comparator[+] = #lt 
* comparator[+] = #ge 
* comparator[+] = #le 
* comparator[+] = #sa 
* comparator[+] = #eb


Instance: locaion-accessibility
InstanceOf: SearchParameter
Usage: #definition
Title: "Location accessibility"
* status = #active
* code = #location-accessibility
* name = "LocationAccessibilitySearchParameter"
* description = "Select Locations of the specified accessibility"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/locaion-accessibility"
* base[0] = #Location
* type = #token
* expression = "Location.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/accessibility')"
* multipleAnd = true
* multipleOr = true
* modifier[+] = #text

Instance: locaion-contains
InstanceOf: SearchParameter
Usage: #definition
Title: "Location contains"
* status = #active
* code = #location-contains
* name = "LocationContainsSearchParameter"
* description = "Select Locations of the specified contains (co-ordinates)"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/locaion-contains"
* base[0] = #Location
* type = #special
* expression = "Location.extension('http://hl7.org/fhir/StructureDefinition/location-boundary-geojson')"
* multipleOr = true
* multipleAnd = true

Instance: locaion-new-patient
InstanceOf: SearchParameter
Usage: #definition
Title: "Location new-patient"
* status = #active
* code = #location-new-patient
* name = "LocationNewPatientSearchParameter"
* description = "Select Locations of the specified new-patient"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/locaion-new-patient"
* base[0] = #Location
* type = #token
* expression = "Location.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/newpatients').extension('acceptingPatients')"
* multipleAnd = true

Instance: locaion-new-patient-from-network
InstanceOf: SearchParameter
Usage: #definition
Title: "Location new-patient-from-network"
* status = #active
* code = #location-new-patient-from-network
* name = "LocationNewPatientFromNetworkSearchParameter"
* description = "Select Locations of the specified new-patient-from-network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/locaion-new-patient-from-network"
* base[0] = #Location
* type = #reference
* target[0] = #Organization
* expression = "Location.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/newpatients').extension('fromNetwork')"
* multipleAnd = true
* multipleOr = true
* chain[0] = #identifier
* chain[+] = #name
* chain[+] = #partof

Instance: locaion-physical-type
InstanceOf: SearchParameter
Usage: #definition
Title: "Location physical-type"
* status = #active
* code = #location-physical-type
* name = "LocationPhysicalTypeSearchParameter"
* description = "Select Locations of the specified physical type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/locaion-physical-type"
* base[0] = #Location
* type = #token
* expression = "Location.physicalType"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text


Instance: locaion-telecom-via-intermediary
InstanceOf: SearchParameter
Usage: #definition
Title: "Location telecom-via-intermediary"
* status = #active
* code = #location-telecom-via-intermediary
* name = "LocationTelecomViaIntermediarySearchParameter"
* description = "Select Locations of the specified telecom-via-intermediary"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/locaion-telecom-via-intermediary"
* base[0] = #Location
* type = #reference
* expression = "Location.telecom.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/via-intermediary')"
* target[+] = #Location
* target[+] = #Organization
* target[+] = #OrganizationAffiliation
* target[+] = #PractitionerRole
* multipleOr = true
* multipleAnd = true


Instance: network-coverage-area
InstanceOf: SearchParameter
Usage: #definition
Title: "Network coverage-area"
* status = #active
* code = #network-coverage-area
* name = "NetworkCoverageAreaSearchParameter"
* description = "Select health insurance provider networks available in a regin described by the specified location"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/network-coverage-area"
* base[0] = #Organization
* type = #reference
* expression = "Organization.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/location-reference')"
* target[+] = #Location
* multipleOr = true
* multipleAnd = true
* chain[+] = "location-identifier"
* chain[+] = "location-contains"

Instance: organization-via-intermediary
InstanceOf: SearchParameter
Usage: #definition
Title: "Organization via-intermediary"
* status = #active
* code = #organization-via-intermediary
* name = "OrganizationViaIntermediarySearchParameter"
* description = "Select Organizations with the specified via-intermediary"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/organization-via-intermediary"
* base[0] = #Organization
* type = #reference
* target[+] = #Location
* target[+] = #Organization
* target[+] = #OrganizationAffiliation
* target[+] = #PractitionerRole
* expression = "Organization.telecom.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/via-intermediary')|Organization.contact.telecom.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/via-intermediary')"
* multipleOr = true
* multipleAnd = true


Instance: practitioner-identifier-assigner
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner identifier-assigner"
* status = #active
* code = #practitioner-identifier-assigner
* name = "PractitionerIdentifierAssignerSearchParameter"
* description = "Select Practitioners with an identifier issued by the specified organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-identifier-assigner"
* base[0] = #Practitioner
* type = #reference
* target[+] = #Organization
* expression = "Practitioner.identifier.assigner"
* multipleOr = true
* multipleAnd = true


Instance: practitioner-qualification-code
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner qualification-code"
* status = #active
* code = #practitioner-qualification-code
* name = "PractitionerQualificationCodeSearchParameter"
* description = "Select Practitioner with a type of qualification matching the specific code"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-code"
* base[0] = #Practitioner
* type = #token
* expression = "Practitioner.qualification.code"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: practitioner-qualification-issuer
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner qualification-issuer"
* status = #active
* code = #practitioner-qualification-issuer
* name = "PractitionerQualificationIssuerSearchParameter"
* description = "Select Practitioners with a qualification issued by the specified organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-issuer"
* base[0] = #Practitioner
* type = #reference
* target[+] = #Organization
* expression = "Practitioner.qualification.issuer"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #below
* chain[+] = "identifier"
* chain[+] = "name"


Instance: practitioner-qualification-period
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner qualification-period"
* status = #active
* code = #practitioner-qualification-period
* name = "PractitionerQualificationPeriodSearchParameter"
* description = "Select Practitioner with a type of qualification matching the specific period"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-qualification-period"
* base[0] = #Practitioner
* type = #date
* expression = "Practitioner.qualification.period"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #exact
* modifier[+] = #contains


Instance: practitioner-via-intermediary
InstanceOf: SearchParameter
Usage: #definition
Title: "Practitioner via-intermediary"
* status = #active
* code = #practitioner-via-intermediary
* name = "PractitionerViaIntermediarySearchParameter"
* description = "Select Practitioner via-intermediary"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitioner-via-intermediary"
* base[0] = #Practitioner
* type = #reference
* expression = "Practitioner.telecom.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/via-intermediary')"
* target[+] = #Location
* target[+] = #Organization
* target[+] = #OrganizationAffiliation
* target[+] = #PractitionerRole
* multipleOr = true
* multipleAnd = true

Instance: practitionerrole-network
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole network"
* status = #active
* code = #practitionerrole-network
* name = "PractitionerroleNetworkSearchParameter"
* description = "Select roles where the practitioner is a member of the specified health insurance provider network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-network"
* base[0] = #PractitionerRole
* type = #reference
* target[+] = #Organization
* expression = "PractitionerRole.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/network-reference')"
* multipleOr = true
* multipleAnd = true
* chain[+] = "identifier"
* chain[+] = "name"
* chain[+] = "partof"


Instance: practitionerrole-new-patient
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole new-patient"
* status = #active
* code = #practitionerrole-new-patient
* name = "PractitionerroleNewPatientSearchParameter"
* description = "Select roles where the practitioner new-patient"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient"
* base[0] = #PractitionerRole
* type = #token
* expression = "PractitionerRole.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/newpatients').extension('acceptingPatients')"
* multipleAnd = true

Instance: practitionerrole-new-patient-network
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole new-patient-network"
* status = #active
* code = #practitionerrole-new-patient-network
* name = "PractitionerroleNewPatientNetworkSearchParameter"
* description = "Select roles where the practitioner new-patient-network"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-new-patient-network"
* base[0] = #PractitionerRole
* type = #reference
* target[+] = #Organization
* expression = "PractitionerRole.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/newpatients').extension('network')"
* multipleAnd = true
* multipleOr = true
* chain[+] = #identifier
* chain[+] = #name
* chain[+] = #partof

Instance: practitionerrole-via-intermediary
InstanceOf: SearchParameter
Usage: #definition
Title: "PractitionerRole via-intermediary"
* status = #active
* code = #practitionerrole-via-intermediary
* name = "PractitionerroleViaIntermediarySearchParameter"
* description = "Select roles where the practitioner via-intermediary"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/practitionerrole-via-intermediary"
* base[0] = #PractitionerRole
* type = #reference
* target[+] = #Organization
* expression = "PractitionerRole.telecom.extension('http://hl7.org/fhir/us/ndh/StructureDefinition/via-intermediary')"
* target[+] = #Location
* target[+] = #Organization
* target[+] = #OrganizationAffiliation
* target[+] = #PractitionerRole
* multipleOr = true
* multipleAnd = true


Instance: verificationresult-attestation-communication-method
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult attestation-communication-method"
* status = #active
* code = #verificationresult-attestation-communication-method
* name = "VerificationResultAttestationCommunicationMethodSearchParameter"
* description = "Select validation information for data that was attested to by communication-method"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-attestation-communication-method"
* base[0] = #VerificationResult
* type = #token
* expression = "VerificationResult.attestation.communicationMethod"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: verificationresult-attestation-onbehalfof
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult attestation-onbehalfof"
* status = #active
* code = #verificationresult-attestation-onbehalfof
* name = "VerificationResultAttestationOnbehalfofSearchParameter"
* description = "Select validation information for data that was attested to by onbehalfof"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-attestation-onbehalfof"
* base[0] = #VerificationResult
* type = #reference
* expression = "VerificationResult.attestation.onbehalfof"
* target[+] = #Practitioner
* target[+] = #PractitionerRole
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* modifier[+] = #type
* chain[+] = "identifier"
* chain[+] = "address"
* chain[+] = "name"
* chain[+] = "partof"
* chain[+] = "location"
* chain[+] = "organization"
* chain[+] = "practitioner"

Instance: verificationresult-attestation-who
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult attestation-who"
* status = #active
* code = #verificationresult-attestation-who
* name = "VerificationResultAttestationWhoSearchParameter"
* description = "Select validation information for data that was attested to by the specified individual or organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-attestation-who"
* base[0] = #VerificationResult
* type = #reference
* expression = "VerificationResult.attestation.who"
* target[+] = #Practitioner
* target[+] = #PractitionerRole
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* modifier[+] = #type
* chain[+] = "identifier"
* chain[+] = "address"
* chain[+] = "name"
* chain[+] = "partof"
* chain[+] = "location"
* chain[+] = "organization"
* chain[+] = "practitioner"


Instance: verificationresult-primarysource-validation-date
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult primarysource-validation-date"
* status = #active
* code = #verificationresult-primarysource-validation-date
* name = "VerificationResultPrimarysourceValidationDateSearchParameter"
* description = "Select verification information for data that was verified against the specified primary source validationDate"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-validation-date"
* base[0] = #VerificationResult
* type = #date
* expression = "VerificationResult.primarysource.validationDate"
* multipleOr = true
* multipleAnd = true
* comparator[0] = #eq
* comparator[+] = #gt
* comparator[+] = #lt 
* comparator[+] = #ge 
* comparator[+] = #le 
* comparator[+] = #sa 
* comparator[+] = #eb

Instance: verificationresult-primarysource-validation-status
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult primarysource-validation-status"
* status = #active
* code = #verificationresult-primarysource-validation-status
* name = "VerificationResultPrimarysourceValidationStatusSearchParameter"
* description = "Select verification information for data that was verified against the specified primary source validationStatus"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-validation-status"
* base[0] = #VerificationResult
* type = #token
* expression = "VerificationResult.primarysource.validationStatus"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: verificationresult-primarysource-type
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult primarysource-type"
* status = #active
* code = #verificationresult-primarysource-type
* name = "VerificationResultPrimarysourceTypeSearchParameter"
* description = "Select verification information for data that was verified against the specified primary source type"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-type"
* base[0] = #VerificationResult
* type = #token
* expression = "VerificationResult.primarysource.type"
* multipleOr = true
* multipleAnd = true
* modifier[+] = #text

Instance: verificationresult-primarysource-who
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult primarysource-who"
* status = #active
* code = #verificationresult-primarysource-who
* name = "VerificationResultPrimarysourceWhoSearchParameter"
* description = "Select verification information for data that was verified against the specified primary source who"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-who"
* base[0] = #VerificationResult
* type = #reference
* expression = "VerificationResult.primarysource.who"
* target[+] = #Practitioner
* target[+] = #PractitionerRole
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* modifier[+] = #type
* chain[+] = "identifier"
* chain[+] = "address"
* chain[+] = "name"
* chain[+] = "partof"
* chain[+] = "location"
* chain[+] = "organization"
* chain[+] = "practitioner"


Instance: verificationresult-status-date
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult status-date"
* status = #active
* code = #verificationresult-status-date
* name = "VerificationResultStatusDateSearchParameter"
* description = "Select verification information for data that was verified against the specified statusDate"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-status-date"
* base[0] = #VerificationResult
* type = #date
* expression = "VerificationResult.statusDate"
* multipleOr = true
* multipleAnd = true
* comparator[0] = #eq
* comparator[+] = #gt
* comparator[+] = #lt 
* comparator[+] = #ge 
* comparator[+] = #le 
* comparator[+] = #sa 
* comparator[+] = #eb

Instance: verificationresult-status
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult status"
* status = #active
* code = #verificationresult-status
* name = "VerificationResultStatusSearchParameter"
* description = "Select verification information for data that was verified against the specified status"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-status"
* base[0] = #VerificationResult
* type = #token
* expression = "VerificationResult.status"
* multipleOr = true
* multipleAnd = true

Instance: verificationresult-target
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult target"
* status = #active
* code = #verificationresult-target
* name = "VerificationResultTargetSearchParameter"
* description = "Select verification information for data that was verified against the specified target"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-target"
* base[0] = #VerificationResult
* type = #reference
* expression = "VerificationResult.target"
* target[+] = #Resource
* multipleOr = true
* multipleAnd = true
* modifier[+] = #type


Instance: verificationresult-validator-organization
InstanceOf: SearchParameter
Usage: #definition
Title: "VerificationResult validator-organization"
* status = #active
* code = #verificationresult-validator-organization
* name = "VerificationResultValidatorOrganizationSearchParameter"
* description = "Select verification information for data that was verified against the specified validator-organization"
* url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-validator-organization"
* base[0] = #VerificationResult
* type = #reference
* expression = "VerificationResult.validator.organization"
* target[+] = #Organization
* multipleOr = true
* multipleAnd = true
* chain[+] = #identifier
* chain[+] = #name




