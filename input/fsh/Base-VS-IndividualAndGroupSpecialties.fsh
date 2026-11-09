
// NUCC Provider Taxonomy codes for Individual and Group Specialties, but not groups. 
// New version of this VS is using exclude filter so as to better catch new codes. This exclude filter will error on including non-individual codes that it should not. Unfortunately NUCC does not have a property for non-individual vs individual.
Instance: HealthcareIndividualTaxonomyVS
InstanceOf: ValueSet
Usage: #definition
Title: "Individual Qualifications Value Set"
Description:  """
This value set defines individual healthcare qualification concepts from the NUCC Provider Taxonomy, including specialties, degrees, licenses, and certifications relevant to individual practitioners.
It intentionally excludes grouping-level and non-individual organization categories (for example agencies, facilities, hospitals, laboratories, managed care organizations, suppliers, and transportation services) to keep the expansion aligned to individual practitioner use.
"""
* experimental = false
* status = #active
* name = "HealthcareIndividualTaxonomyVS"
* copyright = "National Uniform Claim Committee (NUCC) Copyright 2026 American Medical Association. The National Uniform Claim Committee (NUCC) maintains the Health Insurance Claim Form (1500 Claim Form), the 1500 Health Insurance Claim Form Reference Instruction Manual (NUCC 1500 Instruction Manual) and two NUCC Data Sets, the Health Care Provider Taxonomy Code Set and the Provider Characteristics and Resources code set. As the NUCC Secretariat, the AMA holds the intellectual property on behalf of the NUCC and maintains the copyright of materials developed by the NUCC. For commercial use, including sales and redistribution, a license must be obtained."
* compose.include.system = $NUCCProviderTaxonomy
* compose.exclude[+].system = $NUCCProviderTaxonomy
* compose.exclude[=].filter[+].property = #grouping 
* compose.exclude[=].filter[=].op = #=
* compose.exclude[=].filter[=].value = "Group"
* compose.exclude[+].system = $NUCCProviderTaxonomy
* compose.exclude[=].filter[+].property = #grouping 
* compose.exclude[=].filter[=].op = #=
* compose.exclude[=].filter[=].value = "Agencies"
* compose.exclude[+].system = $NUCCProviderTaxonomy
* compose.exclude[=].filter[+].property = #grouping 
* compose.exclude[=].filter[=].op = #=
* compose.exclude[=].filter[=].value = "Ambulatory Health Care Facilities"
* compose.exclude[+].system = $NUCCProviderTaxonomy
* compose.exclude[=].filter[+].property = #grouping
* compose.exclude[=].filter[=].op = #=
* compose.exclude[=].filter[=].value = "Hospital Units"
* compose.exclude[+].system = $NUCCProviderTaxonomy
* compose.exclude[=].filter[+].property = #grouping
* compose.exclude[=].filter[=].op = #=
* compose.exclude[=].filter[=].value = "Hospitals"
* compose.exclude[+].system = $NUCCProviderTaxonomy
* compose.exclude[=].filter[+].property = #grouping
* compose.exclude[=].filter[=].op = #=
* compose.exclude[=].filter[=].value = "Laboratories"
* compose.exclude[+].system = $NUCCProviderTaxonomy
* compose.exclude[=].filter[+].property = #grouping
* compose.exclude[=].filter[=].op = #=
* compose.exclude[=].filter[=].value = "Managed Care Organizations"
* compose.exclude[+].system = $NUCCProviderTaxonomy
* compose.exclude[=].filter[+].property = #grouping
* compose.exclude[=].filter[=].op = #=
* compose.exclude[=].filter[=].value = "Nursing & Custodial Care Facilities"
* compose.exclude[+].system = $NUCCProviderTaxonomy
* compose.exclude[=].filter[+].property = #grouping
* compose.exclude[=].filter[=].op = #=
* compose.exclude[=].filter[=].value = "Other Service Providers"
* compose.exclude[+].system = $NUCCProviderTaxonomy
* compose.exclude[=].filter[+].property = #grouping
* compose.exclude[=].filter[=].op = #=
* compose.exclude[=].filter[=].value = "Residential Treatment Facilities"
* compose.exclude[+].system = $NUCCProviderTaxonomy
* compose.exclude[=].filter[+].property = #grouping
* compose.exclude[=].filter[=].op = #=
* compose.exclude[=].filter[=].value = "Respite Care Facility"
* compose.exclude[+].system = $NUCCProviderTaxonomy
* compose.exclude[=].filter[+].property = #grouping
* compose.exclude[=].filter[=].op = #=
* compose.exclude[=].filter[=].value = "Suppliers"
* compose.exclude[+].system = $NUCCProviderTaxonomy
* compose.exclude[=].filter[+].property = #grouping
* compose.exclude[=].filter[=].op = #=
* compose.exclude[=].filter[=].value = "Transportation Services"


