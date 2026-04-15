
Instance: FaCeT-org-credentialPropertiesCS
InstanceOf: CodeSystem
Title: "FaCeT Organizational Credential Properties Code System"
Description: """
FaCeT Organizational Credential Properties Code System
"""
Usage: #definition
* status = #active
* experimental = false
* caseSensitive = true
* content = #complete
* name = "FaCeTOrganizationalCredentialPropertiesCS"
* concept[+].code = #credential_category
* concept[=].display = "Credential Category"
* concept[+].code = #issuer
* concept[=].display = "Issuer Organization"
* concept[+].code = #issuer_url
* concept[=].display = "URL for Issuer Organization"
* concept[+].code = #credential_type
* concept[=].display = "Credential Type"
* concept[+].code = #credential_url
* concept[=].display = "URL for Credential Information"
* concept[+].code = #is_credential_retired
* concept[=].display = "Indicates whether the credential is retired and should no longer be used"
* concept[+].code = #is_cms_deeming_credential
* concept[=].display = "Indicates whether the credential is recognized by CMS as a deeming credential for Medicare/Medicaid provider enrollment purposes"

// https://github.com/ftrotter-gov/FaCeT/blob/main/csv/FACET_org_credential.csv
Instance: FaCeT-org-credentialCS
InstanceOf: CodeSystem
Title: "FaCeT Organizational Credential Code System"
Description: """
FaCeT Organizational Credential Code System
"""
Usage: #definition
* status = #active
* experimental = false
* caseSensitive = true
* title = "FaCeT Organizational Credential Code System"
* name = "FaCeTOrganizationalCredentialCS"
* description = """
FaCeT Organizational Credential Code System
"""
* content = #complete
//* url = "https://github.com/ftrotter-gov/FaCeT/blob/main/csv/FACET_org_credential.csv"
* version = "0.1.0"
* jurisdiction[0] = http://unstats.un.org/unsd/methods/m49/m49.htm#840 "United States of America"
* caseSensitive = true
* property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* property[=].description = "Category"
* property[=].type = #string
* property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* property[=].description = "Issuer Organization"
* property[=].type = #string
* property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* property[=].description = "URL for Issuer Organization"
* property[=].type = #string
* property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* property[=].description = "Credential Type"
* property[=].type = #string
* property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* property[=].description = "URL for Credential Information"
* property[=].type = #string
* property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* property[=].description = "Indicates whether the credential is retired and should no longer be used"
* property[=].type = #boolean
* property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* property[=].description = "Indicates whether the credential is recognized by CMS as a deeming credential for Medicare/Medicaid provider enrollment purposes"
* property[=].type = #boolean

// FaCeT organizational credential concepts generated from FACET_org_credential.csv
* concept[+].code = #1
* concept[=].display = "Joint Commission Hospital Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_hospital_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/accreditation-and-certification/health-care-settings/hospital/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #2
* concept[=].display = "Joint Commission Critical Access Hospital Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_critical_access_hospital_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/accreditation-and-certification/health-care-settings/critical-access-hospital/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #3
* concept[=].display = "Joint Commission Ambulatory Health Care Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_ambulatory_health_care_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/accreditation-and-certification/health-care-settings/ambulatory-health-care/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #4
* concept[=].display = "Joint Commission Behavioral Health Care and Human Services Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_behavioral_health_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/accreditation-and-certification/health-care-settings/behavioral-health-care-and-human-services/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5
* concept[=].display = "Joint Commission Home Care Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_home_care_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/accreditation-and-certification/health-care-settings/home-care/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #6
* concept[=].display = "Joint Commission Laboratory Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_laboratory_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/accreditation-and-certification/health-care-settings/laboratory/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #7
* concept[=].display = "Joint Commission Nursing Care Center Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_nursing_care_center_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/accreditation-and-certification/health-care-settings/nursing-care-center/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #8
* concept[=].display = "Joint Commission Office-Based Surgery Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_office_based_surgery_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/accreditation-and-certification/health-care-settings/office-based-surgery/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #9
* concept[=].display = "DNV NIAHO Hospital Accreditation (Acute Care)"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "DNV Healthcare"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.dnv.us"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "dnv_niaho_hospital_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.dnv.us/services/niaho-accreditation-for-hospitals2/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10
* concept[=].display = "DNV NIAHO Critical Access Hospital Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "DNV Healthcare"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.dnv.us"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "dnv_niaho_critical_access_hospital_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.dnv.com/services/niaho-accreditation-for-critical-access-hospitals/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #11
* concept[=].display = "DNV NIAHO Psychiatric Hospital Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "DNV Healthcare"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.dnv.us"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "dnv_niaho_psychiatric_hospital_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.dnv.us/life-sciences/healthcare/ac/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #12
* concept[=].display = "ACHC Acute Care Hospital Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "ACHC"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.achc.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "achc_acute_care_hospital_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.achc.org/acute-care-hospitals/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #13
* concept[=].display = "ACHC Critical Access Hospital Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "ACHC"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.achc.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "achc_critical_access_hospital_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.achc.org/acute-care-hospitals/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #14
* concept[=].display = "CIHQ Hospital Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "CIHQ"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://cihq.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "cihq_hospital_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://cihq.org/accreditation-programs/hospitals/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1000
* concept[=].display = "Joint Commission Acute Myocardial Infarction Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_acute_myocardial_infarction_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/cardiac"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1001
* concept[=].display = "Joint Commission Chest Pain Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_chest_pain_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/cardiac"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1002
* concept[=].display = "Joint Commission Heart Failure Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_heart_failure_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/cardiac"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1003
* concept[=].display = "Joint Commission Comprehensive Cardiac Center Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_comprehensive_cardiac_center_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/cardiac"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1004
* concept[=].display = "Joint Commission Comprehensive Heart Attack Center Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_comprehensive_heart_attack_center_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/cardiac"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1005
* concept[=].display = "Joint Commission Advanced Heart Failure Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_advanced_heart_failure_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/cardiac"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1006
* concept[=].display = "Joint Commission Acute Heart Attack Ready Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_acute_heart_attack_ready_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/cardiac"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1007
* concept[=].display = "Joint Commission Primary Heart Attack Center Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_primary_heart_attack_center_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/cardiac"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1008
* concept[=].display = "Joint Commission Ventricular Assist Device Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_ventricular_assist_device_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/cardiac"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1009
* concept[=].display = "Joint Commission Centralized Sterilization Services Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_centralized_sterilization_services_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/centralized-sterilization-services"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1010
* concept[=].display = "Joint Commission Advanced Inpatient Diabetes Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_advanced_inpatient_diabetes_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1011
* concept[=].display = "Joint Commission Bariatric Surgery Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_bariatric_surgery_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1012
* concept[=].display = "Joint Commission Brain Tumor Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_brain_tumor_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1013
* concept[=].display = "Joint Commission Lung Cancer Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_lung_cancer_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1014
* concept[=].display = "Joint Commission Sepsis Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_sepsis_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1015
* concept[=].display = "Joint Commission Wound Care Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_wound_care_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1016
* concept[=].display = "Joint Commission Pneumonia Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_pneumonia_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1017
* concept[=].display = "Joint Commission Tuberculosis Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_tuberculosis_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1018
* concept[=].display = "Joint Commission Medication Compounding Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_medication_compounding_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/medication-compounding"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1019
* concept[=].display = "Joint Commission Hip Fracture Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_hip_fracture_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/orthopedic"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1020
* concept[=].display = "Joint Commission Joint Replacement (Hip) Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_joint_replacement_hip_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/orthopedic"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1021
* concept[=].display = "Joint Commission Joint Replacement (Knee) Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_joint_replacement_knee_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/orthopedic"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1022
* concept[=].display = "Joint Commission Joint Replacement (Shoulder) Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_joint_replacement_shoulder_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/orthopedic"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1023
* concept[=].display = "Joint Commission Spinal Fusion Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_spinal_fusion_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/orthopedic"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1024
* concept[=].display = "Joint Commission Spine Surgery Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_spine_surgery_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/orthopedic"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1025
* concept[=].display = "Joint Commission Advanced Spine Surgery Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_advanced_spine_surgery_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/orthopedic"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1026
* concept[=].display = "Joint Commission Advanced Total Hip and Knee Replacement Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_advanced_total_hip_knee_replacement_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/orthopedic"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1027
* concept[=].display = "Joint Commission Palliative Care Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_palliative_care_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/palliative-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1028
* concept[=].display = "Joint Commission Patient Blood Management Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_patient_blood_management_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/patient-blood-management"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1029
* concept[=].display = "Joint Commission Pediatric Asthma Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_pediatric_asthma_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1030
* concept[=].display = "Joint Commission Outcomes-Driven Certification in Perinatal Care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_outcomes_driven_perinatal_care_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/perinatal-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1031
* concept[=].display = "Joint Commission Advanced Certification in Perinatal Care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_advanced_perinatal_care_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/perinatal-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1032
* concept[=].display = "Joint Commission Amputee Rehabilitation Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_amputee_rehabilitation_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1033
* concept[=].display = "Joint Commission Brain Injury Rehabilitation Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_brain_injury_rehabilitation_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1034
* concept[=].display = "Joint Commission Cardiac Rehabilitation Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_cardiac_rehabilitation_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1035
* concept[=].display = "Joint Commission Hip Fracture Rehabilitation Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_hip_fracture_rehabilitation_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1036
* concept[=].display = "Joint Commission Parkinson's Disease Rehabilitation Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_parkinsons_disease_rehabilitation_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1037
* concept[=].display = "Joint Commission Pulmonary Rehabilitation Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_pulmonary_rehabilitation_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1038
* concept[=].display = "Joint Commission Spinal Cord Injury Rehabilitation Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_spinal_cord_injury_rehabilitation_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1039
* concept[=].display = "Joint Commission Stroke Rehabilitation Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_stroke_rehabilitation_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/stroke"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1040
* concept[=].display = "Joint Commission COPD Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_copd_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1041
* concept[=].display = "Joint Commission Integrated Care Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_integrated_care_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1042
* concept[=].display = "Joint Commission Respiratory Failure Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_respiratory_failure_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1043
* concept[=].display = "Joint Commission Lung Volume Reduction Surgery Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_lung_volume_reduction_surgery_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1044
* concept[=].display = "Joint Commission Advanced COPD Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_advanced_copd_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1045
* concept[=].display = "Joint Commission Chronic Kidney Disease Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_chronic_kidney_disease_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/disease-specific-care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1046
* concept[=].display = "Joint Commission Acute Stroke Ready Hospital Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_acute_stroke_ready_hospital_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/stroke"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1047
* concept[=].display = "Joint Commission Comprehensive Stroke Center Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_comprehensive_stroke_center_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/stroke"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1048
* concept[=].display = "Joint Commission Primary Stroke Center Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_primary_stroke_center_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/stroke"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1049
* concept[=].display = "Joint Commission Thrombectomy-Capable Stroke Center Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_thrombectomy_capable_stroke_center_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/stroke"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1050
* concept[=].display = "Joint Commission Primary Care Medical Home Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_primary_care_medical_home_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/primary-care-medical-home"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1051
* concept[=].display = "Joint Commission Responsible Use of Health Data Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "The Joint Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.jointcommission.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "jc_responsible_use_of_health_data_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.jointcommission.org/en-us/certification/responsible-use-of-health-data"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1100
* concept[=].display = "ACS Level I Trauma Center Verification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Surgeons"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.facs.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acs_trauma_center_level_1_verification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.facs.org/quality-programs/trauma/verification-review-and-consultation-program/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1101
* concept[=].display = "ACS Level II Trauma Center Verification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Surgeons"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.facs.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acs_trauma_center_level_2_verification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.facs.org/quality-programs/trauma/verification-review-and-consultation-program/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1102
* concept[=].display = "ACS Level III Trauma Center Verification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Surgeons"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.facs.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acs_trauma_center_level_3_verification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.facs.org/quality-programs/trauma/verification-review-and-consultation-program/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1103
* concept[=].display = "ACS Level IV Trauma Center Verification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Surgeons"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.facs.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acs_trauma_center_level_4_verification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.facs.org/quality-programs/trauma/verification-review-and-consultation-program/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1104
* concept[=].display = "ACS Commission on Cancer Accredited Program"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Surgeons"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.facs.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acs_commission_on_cancer_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.facs.org/quality-programs/cancer-programs/commission-on-cancer/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1105
* concept[=].display = "ACS National Accreditation Program for Breast Centers (NAPBC)"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Surgeons"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.facs.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acs_breast_center_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.facs.org/quality-programs/cancer-programs/national-accreditation-program-for-breast-centers/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1106
* concept[=].display = "ACS National Accreditation Program for Rectal Cancer (NAPRC)"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Surgeons"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.facs.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acs_rectal_cancer_program_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.facs.org/quality-programs/cancer-programs/national-accreditation-program-for-rectal-cancer/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1107
* concept[=].display = "ACS MBSAQIP Accredited Bariatric Surgery Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Surgeons"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.facs.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acs_bariatric_surgery_center_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.facs.org/quality-programs/mbsaqip/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1108
* concept[=].display = "ACS Children's Surgery Center Verification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Surgeons"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.facs.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acs_childrens_surgery_center_verification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.facs.org/quality-programs/childrens-surgery-verification/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1200
* concept[=].display = "American Heart Association Cardiac Care Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American Heart Association"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.heart.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "aha_cardiac_care_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.heart.org/en/professional/quality-improvement/healthcare-certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1201
* concept[=].display = "American Heart Association Heart Failure Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American Heart Association"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.heart.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "aha_heart_failure_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.heart.org/en/professional/quality-improvement/healthcare-certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1202
* concept[=].display = "American Heart Association Acute Coronary Syndrome Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American Heart Association"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.heart.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "aha_acute_coronary_syndrome_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.heart.org/en/professional/quality-improvement/healthcare-certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1203
* concept[=].display = "American Heart Association Stroke System of Care Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American Heart Association"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.heart.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "aha_stroke_system_of_care_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.heart.org/en/professional/quality-improvement/healthcare-certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1204
* concept[=].display = "American Heart Association Cardiac Rehabilitation Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American Heart Association"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.heart.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "aha_cardiac_rehabilitation_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.heart.org/en/professional/quality-improvement/healthcare-certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1300
* concept[=].display = "ACR Computed Tomography (CT) Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Radiology"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.acr.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acr_computed_tomography_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.acraccreditation.org/modalities/ct"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1301
* concept[=].display = "ACR Magnetic Resonance Imaging (MRI) Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Radiology"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.acr.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acr_magnetic_resonance_imaging_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.acraccreditation.org/modalities/mri"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1302
* concept[=].display = "ACR Mammography Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Radiology"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.acr.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acr_mammography_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.acraccreditation.org/modalities/mammography"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1303
* concept[=].display = "ACR Nuclear Medicine Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Radiology"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.acr.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acr_nuclear_medicine_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.acraccreditation.org/modalities/nuclear-medicine"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1304
* concept[=].display = "ACR PET Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Radiology"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.acr.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acr_pet_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.acraccreditation.org/modalities/pet"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1305
* concept[=].display = "ACR Radiation Oncology Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Radiology"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.acr.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acr_radiation_oncology_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.acraccreditation.org/modalities/radiation-oncology"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1306
* concept[=].display = "ACR Stereotactic Breast Biopsy Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Radiology"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.acr.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acr_stereotactic_breast_biopsy_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.acraccreditation.org/modalities/stereotactic-breast-biopsy"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1307
* concept[=].display = "ACR Ultrasound Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Radiology"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.acr.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acr_ultrasound_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.acraccreditation.org/modalities/ultrasound"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1308
* concept[=].display = "ACR Breast Imaging Center of Excellence"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Radiology"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.acr.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acr_breast_imaging_center_of_excellence"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.acraccreditation.org/accreditation/bicoe"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1400
* concept[=].display = "ANCC Magnet Recognition Program"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American Nurses Credentialing Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/ancc"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "ancc_magnet_recognition"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/organizational-programs/magnet/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1401
* concept[=].display = "ANCC Pathway to Excellence Designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American Nurses Credentialing Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/ancc"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "ancc_pathway_to_excellence"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/organizational-programs/pathway/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1500
* concept[=].display = "Baby-Friendly Hospital Designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Baby-Friendly USA"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.babyfriendlyusa.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "bfusa_baby_friendly_hospital_designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.babyfriendlyusa.org/for-facilities/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1600
* concept[=].display = "CARF Inpatient Rehabilitation Program Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Commission on Accreditation of Rehabilitation Facilities"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.carf.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "carf_inpatient_rehabilitation_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.carf.org/accreditation/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1601
* concept[=].display = "CARF Brain Injury Rehabilitation Program Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Commission on Accreditation of Rehabilitation Facilities"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.carf.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "carf_brain_injury_rehabilitation_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.carf.org/accreditation/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1602
* concept[=].display = "CARF Stroke Rehabilitation Program Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Commission on Accreditation of Rehabilitation Facilities"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.carf.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "carf_stroke_rehabilitation_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.carf.org/accreditation/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1603
* concept[=].display = "CARF Spinal Cord Injury Rehabilitation Program Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Commission on Accreditation of Rehabilitation Facilities"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.carf.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "carf_spinal_cord_injury_rehabilitation_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.carf.org/accreditation/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1604
* concept[=].display = "CARF Amputation Rehabilitation Program Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Commission on Accreditation of Rehabilitation Facilities"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.carf.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "carf_amputation_rehabilitation_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.carf.org/accreditation/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1605
* concept[=].display = "CARF Cardiac Rehabilitation Program Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Commission on Accreditation of Rehabilitation Facilities"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.carf.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "carf_cardiac_rehabilitation_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.carf.org/accreditation/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1606
* concept[=].display = "CARF Pulmonary Rehabilitation Program Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Commission on Accreditation of Rehabilitation Facilities"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.carf.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "carf_pulmonary_rehabilitation_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.carf.org/accreditation/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1700
* concept[=].display = "ABA Verified Adult Burn Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American Burn Association"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://ameriburn.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "aba_adult_burn_center_verification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://ameriburn.org/quality-care/burn-center-verification/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1701
* concept[=].display = "ABA Verified Pediatric Burn Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American Burn Association"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://ameriburn.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "aba_pediatric_burn_center_verification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://ameriburn.org/quality-care/burn-center-verification/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1702
* concept[=].display = "ABA Verified Adult and Pediatric Burn Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American Burn Association"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://ameriburn.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "aba_combined_burn_center_verification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://ameriburn.org/quality-care/burn-center-verification/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1800
* concept[=].display = "UHMS Hyperbaric Facility Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Undersea & Hyperbaric Medical Society"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.uhms.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "uhms_hyperbaric_facility_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.uhms.org/accreditation.html"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1900
* concept[=].display = "AASM Sleep Center Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American Academy of Sleep Medicine"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://aasm.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "aasm_sleep_center_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://aasm.org/accreditation/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1901
* concept[=].display = "AABB Blood Bank / Transfusion Service Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "AABB"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.aabb.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "aabb_blood_bank_transfusion_service_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.aabb.org/standards-accreditation/accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1902
* concept[=].display = "FACT Cellular Therapy Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Foundation for the Accreditation of Cellular Therapy"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.factglobal.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "fact_cellular_therapy_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.factglobal.org/accreditation/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1903
* concept[=].display = "IAC Echocardiography Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Intersocietal Accreditation Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.intersocietal.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "iac_echocardiography_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.intersocietal.org/echo/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1904
* concept[=].display = "IAC Nuclear/PET Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Intersocietal Accreditation Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.intersocietal.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "iac_nuclear_pet_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.intersocietal.org/nuclear/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1905
* concept[=].display = "IAC Vascular Testing Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Intersocietal Accreditation Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.intersocietal.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "iac_vascular_testing_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.intersocietal.org/vascular/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1906
* concept[=].display = "IAC Cardiac CT Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Intersocietal Accreditation Commission"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.intersocietal.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "iac_cardiac_ct_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.intersocietal.org/ct/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1950
* concept[=].display = "ACC Chest Pain Center Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Cardiology"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://cvquality.acc.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acc_chest_pain_center_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://cvquality.acc.org/accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1951
* concept[=].display = "ACC Heart Failure Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Cardiology"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://cvquality.acc.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acc_heart_failure_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://cvquality.acc.org/accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1952
* concept[=].display = "ACC Cardiac Catheterization Lab Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Cardiology"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://cvquality.acc.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acc_cardiac_cath_lab_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://cvquality.acc.org/accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1953
* concept[=].display = "ACC Electrophysiology Lab Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Cardiology"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://cvquality.acc.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acc_electrophysiology_lab_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://cvquality.acc.org/accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1954
* concept[=].display = "ACC Transcatheter Valve Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Cardiology"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://cvquality.acc.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acc_transcatheter_valve_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://cvquality.acc.org/accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1955
* concept[=].display = "ACC Cardiovascular Imaging Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Cardiology"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://cvquality.acc.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acc_cardiovascular_imaging_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://cvquality.acc.org/accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1990
* concept[=].display = "Planetree Person-Centered Care Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Planetree International"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://planetree.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "planetree_person_centered_care_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://planetree.org/person-centered-care-certification/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1960
* concept[=].display = "ACEP Level 1 Geriatric Emergency Department Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Emergency Physicians"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.acep.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acep_geriatric_emergency_department_level_1_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.acep.org/geda/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1961
* concept[=].display = "ACEP Level 2 Geriatric Emergency Department Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Emergency Physicians"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.acep.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acep_geriatric_emergency_department_level_2_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.acep.org/geda/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1962
* concept[=].display = "ACEP Level 3 Geriatric Emergency Department Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Emergency Physicians"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.acep.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "acep_geriatric_emergency_department_level_3_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.acep.org/geda/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1965
* concept[=].display = "SCPC Chest Pain Center Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Society for Cardiovascular Patient Care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://scpc.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "scpc_chest_pain_center_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://scpc.org/accreditation/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1970
* concept[=].display = "DNV Primary Stroke Center Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "DNV Healthcare"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.dnv.com"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "dnv_primary_stroke_center_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.dnv.com/assurance/healthcare/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1971
* concept[=].display = "DNV Comprehensive Stroke Center Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "DNV Healthcare"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.dnv.com"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "dnv_comprehensive_stroke_center_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.dnv.com/assurance/healthcare/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1972
* concept[=].display = "DNV Thrombectomy-Capable Stroke Center Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "DNV Healthcare"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.dnv.com"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "dnv_thrombectomy_capable_stroke_center_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.dnv.com/assurance/healthcare/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1973
* concept[=].display = "DNV Acute Stroke Ready Hospital Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "DNV Healthcare"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.dnv.com"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "dnv_acute_stroke_ready_hospital_certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.dnv.com/assurance/healthcare/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1974
* concept[=].display = "DNV Orthopedic Center of Excellence Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "DNV Healthcare"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.dnv.com"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "dnv_orthopedic_center_of_excellence"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.dnv.com/assurance/healthcare/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1975
* concept[=].display = "DNV Spine Surgery Center of Excellence Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "DNV Healthcare"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.dnv.com"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "dnv_spine_surgery_center_of_excellence"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.dnv.com/assurance/healthcare/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1976
* concept[=].display = "DNV Hip and Knee Replacement Center of Excellence Certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "certification"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "DNV Healthcare"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.dnv.com"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "dnv_hip_knee_replacement_center_of_excellence"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.dnv.com/assurance/healthcare/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #2000
* concept[=].display = "NCI Designated Cancer Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "National Cancer Institute"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.cancer.gov"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "nci_cancer_center_designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.cancer.gov/research/infrastructure/cancer-centers"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #2001
* concept[=].display = "NCI Designated Comprehensive Cancer Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "National Cancer Institute"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.cancer.gov"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "nci_comprehensive_cancer_center_designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.cancer.gov/research/infrastructure/cancer-centers"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #2002
* concept[=].display = "NCI Designated Basic Laboratory Cancer Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "National Cancer Institute"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.cancer.gov"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "nci_basic_laboratory_cancer_center_designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.cancer.gov/research/infrastructure/cancer-centers"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #3000
* concept[=].display = "Level I Trauma Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Surgeons"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.facs.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "trauma_center_level_1"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.facs.org/quality-programs/trauma/verification-review-and-consultation-program/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #3001
* concept[=].display = "Level II Trauma Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Surgeons"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.facs.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "trauma_center_level_2"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.facs.org/quality-programs/trauma/verification-review-and-consultation-program/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #3002
* concept[=].display = "Level III Trauma Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Surgeons"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.facs.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "trauma_center_level_3"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.facs.org/quality-programs/trauma/verification-review-and-consultation-program/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #3003
* concept[=].display = "Level IV Trauma Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American College of Surgeons"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.facs.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "trauma_center_level_4"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.facs.org/quality-programs/trauma/verification-review-and-consultation-program/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #3005
* concept[=].display = "Academic Medical Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Association of American Medical Colleges"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.aamc.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "academic_medical_center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.aamc.org/what-we-do/mission-areas/academic-medicine"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #3006
* concept[=].display = "Teaching Hospital"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Centers for Medicare & Medicaid Services"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.cms.gov"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "teaching_hospital"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.cms.gov/medicare/payment/prospective-payment-systems/acute-inpatient-pps/indirect-medical-education-ime"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #3007
* concept[=].display = "Major Teaching Hospital"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Centers for Medicare & Medicaid Services"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.cms.gov"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "major_teaching_hospital"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.cms.gov/medicare/payment/prospective-payment-systems/acute-inpatient-pps/indirect-medical-education-ime"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #3010
* concept[=].display = "Adult Burn Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American Burn Association"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://ameriburn.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "burn_center_adult"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://ameriburn.org/quality-care/burn-center-verification/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #3011
* concept[=].display = "Pediatric Burn Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American Burn Association"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://ameriburn.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "burn_center_pediatric"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://ameriburn.org/quality-care/burn-center-verification/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #3012
* concept[=].display = "Adult and Pediatric Burn Center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "American Burn Association"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://ameriburn.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "burn_center_adult_pediatric"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://ameriburn.org/quality-care/burn-center-verification/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #4000
* concept[=].display = "Critical Access Hospital (CAH)"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "regulatory_designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Centers for Medicare & Medicaid Services"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.cms.gov"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "critical_access_hospital"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.cms.gov/medicare/health-safety-standards/certification-compliance/critical-access-hospitals"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #4001
* concept[=].display = "Sole Community Hospital (SCH)"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "regulatory_designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Centers for Medicare & Medicaid Services"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.cms.gov"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "sole_community_hospital"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.cms.gov/medicare/medicare-provider-enrollment-and-certifications/medicare-provider-id-reassignment/sole-community-hospital"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #4002
* concept[=].display = "PPS-Exempt Cancer Hospital (Prospective Payment System-Exempt Cancer Hospital)"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "regulatory_designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Centers for Medicare & Medicaid Services"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.cms.gov"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "pps_exempt_cancer_hospital"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.cms.gov/medicare/quality-initiatives-patient-assessment-instruments/pps-exempt-cancer-hospital-quality-reporting-pchqr-program"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #4003
* concept[=].display = "Disproportionate Share Hospital (DSH) Status"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "regulatory_designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Centers for Medicare & Medicaid Services"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.cms.gov"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "disproportionate_share_hospital"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.cms.gov/medicare/medicare-fee-for-service-payment/hospital-inpatient/acute-inpatientpps"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #4004
* concept[=].display = "Rural Referral Center (RRC)"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "regulatory_designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Centers for Medicare & Medicaid Services"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.cms.gov"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "rural_referral_center"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.cms.gov/medicare/medicare-fee-for-service-payment/hospital-inpatient/acute-inpatientpps"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #4005
* concept[=].display = "Medicare-Dependent Hospital (MDH)"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "regulatory_designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Centers for Medicare & Medicaid Services"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.cms.gov"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "medicare_dependent_hospital"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.cms.gov/medicare/medicare-fee-for-service-payment/hospital-inpatient/acute-inpatientpps"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #4006
* concept[=].display = "Essential Access Community Hospital (EACH)"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "regulatory_designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Centers for Medicare & Medicaid Services"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.cms.gov"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "essential_access_community_hospital"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.cms.gov/medicare/medicare-fee-for-service-payment/hospital-inpatient/acute-inpatientpps"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #4007
* concept[=].display = "340B Covered Entity"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "regulatory_designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Health Resources & Services Administration (HRSA)"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.hrsa.gov"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "340b_covered_entity"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.hrsa.gov/opa/index.html"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #4008
* concept[=].display = "Children's Hospital (Medicare classification / regulatory recognition)"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "regulatory_designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Centers for Medicare & Medicaid Services"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.cms.gov"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "childrens_hospital_designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.cms.gov/medicare/quality-initiatives-patient-assessment-instruments/hospitalqualityinits"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #4009
* concept[=].display = "Physician-Owned Hospital (Medicare Participation Restricted Under Stark Law)"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "regulatory_designation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Centers for Medicare & Medicaid Services"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.cms.gov"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "physician_owned_hospital_restriction"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://www.cms.gov/Medicare/Fraud-and-Abuse/PhysicianSelfReferral/Physician_Owned_Hospitals"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10000
* concept[=].display = "ACHC Home Health Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Accreditation Commission for Health Care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.achc.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "achc_home_health_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://achc.org/home-health/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10001
* concept[=].display = "ACHC Hospice Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Accreditation Commission for Health Care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.achc.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "achc_hospice_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://achc.org/hospice/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10002
* concept[=].display = "ACHC Home Care Accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_category
* concept[=].property[=].valueString = "accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer
* concept[=].property[=].valueString = "Accreditation Commission for Health Care"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#issuer_url
* concept[=].property[=].valueString = "https://www.achc.org"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_type
* concept[=].property[=].valueString = "achc_home_care_accreditation"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#credential_url
* concept[=].property[=].valueString = "https://achc.org/home-care/"
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-org-credentialPropertiesCS#is_cms_deeming_credential
* concept[=].property[=].valueBoolean = false

