ValueSet: AcceptingPatientsVS
Title: "Accepting Patients Codes Value Set"
Description: "Codes to identify if the practice is accepting new patients"
* ^experimental = false
* codes from system $AcceptingPatientsCS

ValueSet: AccessibilityVS
Title: "Accessibility Value Set"
Description: "Codes for documenting general categories of accommodations available"
* ^experimental = false
* codes from system $AccessibilityCS

ValueSet: EmploymentStatusVS
Title: "Employment Status Value Set"
Description: "Codes for documenting employment status"
* ^experimental = false
//* codes from system EmploymentStatusCS
* $V20066EmploymentStatusCS#1 "Full time employed"
* $V20066EmploymentStatusCS#2 "Part time employed"
* $V20066EmploymentStatusCS#3 "Unemployed"
* $V20066EmploymentStatusCS#4 "Self-employed"
* $V20066EmploymentStatusCS#5 "Retired"


ValueSet: InsuranceStatusVS
Title: "Insurance Status Value Set"
Description: "Codes for documenting insurance status"
* ^experimental = false
* codes from system NdhInsuranceStatusCS

ValueSet: AgeGroupVS
Title: "Age Range Value Set"
Description: "Codes for documenting age range"
* ^experimental = false
* codes from system NdhAgeGroupCS


ValueSet: NdhEndpointEnvironmentVS
Title: "NDH Endpoint Environment Value Set"
Description: "Codes for NDH Endpoint Environment"
* ^experimental = false
* codes from system NdhEndpointEnvironmentCS



ValueSet: EndpointAccessControlMechanismVS
Title: "Endpoint Access Control Mechanism Value Set"
Description: "Codes for documenting access control mechanism"
* ^experimental = false
* codes from system NdhEndpointAccessControlMechanismCS


ValueSet: EndpointTestingMethodVS
Title: "Endpoint Testing Method Value Set"
Description: "Codes for documenting testing method" 
* ^experimental = false
* codes from system NdhEndpointTestingMethodCS

ValueSet: EndpointConnectionTypeVS
Title: "Endpoint Connection Types Value Set"
Description:  "Endpoint Connection Types"
* ^experimental = false
* codes from system $ConnectionTypeCS
* $IheMCSDEndpointTypesCS#ihe-xca "XCA"
* $IheMCSDEndpointTypesCS#ihe-xcpd "XCPD"
* $IheMCSDEndpointTypesCS#ihe-xds "XDS"
* $IheMCSDEndpointTypesCS#ihe-pdq "PDQ"
* $IheMCSDEndpointTypesCS#ihe-pix "PIX"
* $IheMCSDEndpointTypesCS#ihe-xdr "XDR"
* $IheMCSDEndpointTypesCS#ihe-mhd "MHD"
//* codes from system $ServDescCodeSystem
* codes from system NdhEndpointConnectionTypeCS 
//* codes from system EndpointHieSpecificConnectionTypeCS



ValueSet: EndpointIheSpecificConnectionTypeVS
Title: "Endpoint IHE Specific Connection Types Value Set"
Description:  "Endpoint IHE Specific Connection Types"
* ^experimental = false
* codes from system $IheMCSDEndpointTypesCS


ValueSet: EndpointPayloadTypeVS
Title: "Endpoint Payload Type Value Set"
Description:  "Endpoint Payload Types are constrained to NA (Not Applicable) as part of this IG"
* ^experimental = false
* $DataAbsentReasonCS#not-applicable  "Not Applicable"
//* codes from system $MetadataTypeCodeSystem

ValueSet: EndpointFhirMimeTypeVS
Title: "Endpoint FHIR Mimetype Value Set"
Description: "Endpoint FHIR mimetype"
* ^experimental = false
* $BCP13#application/fhir+xml //"FHIR XML"
* $BCP13#application/fhir+json //"FHIR JSON"
* $BCP13#application/fhir+turtle //"FHIR Turtle"
//* $V3MimeCS#application/fhir+xml "FHIR XML"
//* $V3MimeCS#application/fhir+json "FHIR JSON"
//* $V3MimeCS#application/fhir+turtle "FHIR Turtle"

ValueSet: NdhImplementationGuideVS
Title: "NDH endpoint Implementation Guide Value Set"
Description: "NDH endpoint Implementation Guide Value Set of supported IGs"
* ^experimental = false
* codes from system NdhFhirEndpointUseCaseCS
* codes from system NdhDirectTrustEndpointUsecaseCS
// these should go in ihe-specific-connection-type * codes from https://profiles.ihe.net/ITI/mCSD/CodeSystem/MCSDEndpointTypes

ValueSet: TrustProfileVS
Title: "Trust Profile Value Set"
Description:  "Codes for documenting trust profile"
* ^experimental = false
* codes from system NdhTrustProfileCS


ValueSet: VerificationProcessVS
Title: "NDH Verification Process Value Set"
Description:  "Codes for documenting verification process"
* ^experimental = false
* codes from system $ValidationProcessCS|2.0.0

ValueSet: NdhVerificationStatusVS
Title: "NDH Verification Status Value Set"
Description:  "Codes for verification status"
* ^experimental = false
* codes from system NdhVerificationStatusCS


ValueSet: HealthcareServiceCategoryVS
Title: "Healthcare Service Category Value Set"
Description: "Broad categories of healthcare services being performed or delivered."
* ^experimental = false
* codes from system $NdhHealthcareServiceTypeCS


ValueSet: HealthcareServiceEligibilityCodeVS
Title: "Healthcare Service Eligibility Code Value Set"
Description: "Codes for Healthcare Service Eligibility Code"
* ^experimental = false
* codes from valueset $ConditionCode
* codes from valueset $ProcedureCode



ValueSet: HealthcareServiceTypeVS
Title: "HealthcareService Type Value Set"
Description: "HealthCareService type Value Set"
* ^experimental = false
//* codes from system HealthcareServiceTypeCS
* $ServiceTypeCS#1 "Adoption/Permanent Care Info/Support" 
* $ServiceTypeCS#3 "Aged Care Information/Referral" 
* $ServiceTypeCS#8 "Home Care/Housekeeping Assistance" 
* $ServiceTypeCS#9 "Home Maintenance and Repair" 
* $ServiceTypeCS#10 "Personal Alarms/Alerts" 
* $ServiceTypeCS#11 "Personal Care for Older Persons" 
* $ServiceTypeCS#21 "Hydrotherapy" 
* $ServiceTypeCS#26 "Meditation" 
* $ServiceTypeCS#31 "Relaxation Therapy" 
* $ServiceTypeCS#33 "Western Herbal Medicine" 
* $ServiceTypeCS#34 "Family Day care" 
* $ServiceTypeCS#36 "Kindergarten Inclusion Support" 
* $ServiceTypeCS#42 "Parenting/Family Support/Education" 
* $ServiceTypeCS#51 "Blood Donation" 
* $ServiceTypeCS#55 "Health Advocacy/Liaison Service" 
* $ServiceTypeCS#67 "Sexual Health" 
* $ServiceTypeCS#68 "Speech Pathology/Therapy" 
* $ServiceTypeCS#69 "Bereavement Counselling" 
* $ServiceTypeCS#70 "Crisis Counselling" 
* $ServiceTypeCS#71 "Family Counselling/Therapy" 
* $ServiceTypeCS#72 "Family Violence Counselling" 
* $ServiceTypeCS#75 "Genetic Counselling" 
* $ServiceTypeCS#76 "Health Counselling" 
* $ServiceTypeCS#78 "Problem Gambling Counselling" 
* $ServiceTypeCS#79 "Relationship Counselling" 
* $ServiceTypeCS#80 "Sexual Assault Counselling" 
* $ServiceTypeCS#81 "Trauma Counselling" 
* $ServiceTypeCS#82 "Victims of Crime Counselling" 
* $ServiceTypeCS#96 "Disability Advocacy" 
* $ServiceTypeCS#97 "Disability Aids & Equipment" 
* $ServiceTypeCS#99 "Disability Day Programs/Activities" 
* $ServiceTypeCS#102 "Disability Supported Accommodation" 
* $ServiceTypeCS#103 "Early Childhood Intervention" 
* $ServiceTypeCS#105 "Drug and/or Alcohol Counselling" 
* $ServiceTypeCS#106 "Drug/Alcohol Information/Referral" 
* $ServiceTypeCS#107 "Needle & Syringe Exchange" 
* $ServiceTypeCS#108 "Non-resid. Alcohol/Drug Treatment" 
* $ServiceTypeCS#111 "Residential Alcohol/Drug Treatment" 
* $ServiceTypeCS#118 "Employment Placement and/or Support" 
* $ServiceTypeCS#119 "Vocational Rehabilitation" 
* $ServiceTypeCS#126 "Crisis/Emergency Accommodation" 
* $ServiceTypeCS#127 "Homelessness Support" 
* $ServiceTypeCS#128 "Housing Information/Referral" 
* $ServiceTypeCS#130 "Interpreting/Multilingual Service" 
* $ServiceTypeCS#134 "Mental Health Advocacy" 
* $ServiceTypeCS#146 "Physical Activity Programs" 
* $ServiceTypeCS#147 "Physical Fitness Testing" 
* $ServiceTypeCS#224 "Support Groups" 
* $ServiceTypeCS#230 "Patient Transport" 
* $ServiceTypeCS#233 "Abuse" 
* $ServiceTypeCS#238 "Adult Day Programs" 
* $ServiceTypeCS#245 "Aids" 
* $ServiceTypeCS#275 "Cancer Support" 
* $ServiceTypeCS#284 "Child Care" 
* $ServiceTypeCS#296 "Companion Visiting" 
* $ServiceTypeCS#301 "Contraception Inform" 
* $ServiceTypeCS#308 "Crisis Assessment An" 
* $ServiceTypeCS#309 "Crisis Assistance" 
* $ServiceTypeCS#310 "Crisis Refuge" 
* $ServiceTypeCS#316 "Depression" 
* $ServiceTypeCS#317 "Detoxification" 
* $ServiceTypeCS#323 "Divorce" 
* $ServiceTypeCS#328 "Eating Disorder" 
* $ServiceTypeCS#331 "Employment And Train" 
* $ServiceTypeCS#344 "Food" 
* $ServiceTypeCS#345 "Food Vouchers" 
* $ServiceTypeCS#352 "Grief Counselling" 
* $ServiceTypeCS#366 "Household Items" 
* $ServiceTypeCS#400 "Pain" 
* $ServiceTypeCS#409 "Postnatal" 
* $ServiceTypeCS#411 "Pregnancy Tests" 
* $ServiceTypeCS#427 "Rent Assistance" 
* $ServiceTypeCS#429 "Residential Respite" 
* $ServiceTypeCS#440 "Sexual Issues" 
* $ServiceTypeCS#446 "Speech Therapist" 
* $ServiceTypeCS#459 "Tenancy Advice" 
* $ServiceTypeCS#468 "Vocational Guidance" 
* $ServiceTypeCS#470 "Welfare Assistance" 
* $ServiceTypeCS#488 "Diabetes Educator" 
* $ServiceTypeCS#494 "Youth Services" 
* $ServiceTypeCS#495 "Youth Health" 
* $ServiceTypeCS#501 "Cancer Services" 
* $ServiceTypeCS#513 "Cancer Support Groups" 
* $ServiceTypeCS#530 "Disability Care Transport" 
* $ServiceTypeCS#531 "Aged Care Transport" 
* $ServiceTypeCS#532 "Diabetes Education s" 
* $ServiceTypeCS#534 "Young Adult Diabetes" 
* $ServiceTypeCS#535 "Pulmonary Rehabilita" 
* $ServiceTypeCS#537 "Medication Reviews" 
* $ServiceTypeCS#539 "Telephone Help Line" 
* $ServiceTypeCS#546 "Veterans Services" 
* $ServiceTypeCS#548 "Food Relief/Food/Meals" 
* $ServiceTypeCS#552 "Drug and/or Alcohol Support Groups" 
* $ServiceTypeCS#554 "Chronic Disease Management" 
* $ServiceTypeCS#559 "Women's Health" 
* $ServiceTypeCS#560 "Men's Health" 
* $ServiceTypeCS#565 "Youth Drop In/Assistance/Support" 
* $ServiceTypeCS#569 "Migrant Health Clinic" 
* $ServiceTypeCS#570 "Refugee Health Clinic" 
* $ServiceTypeCS#571 "Aboriginal Health Clinic" 
* $ServiceTypeCS#614 "Development-Life Skills" 
* $ServiceTypeCS#628 "Vehicle modifications" 


ValueSet: IdentifierStatusVS
Title: "Identifier Status Value Set"
Description: "Codes for Identifier Status"
* ^experimental = false
* codes from system $CredentialStatusCS


ValueSet: IndividualSpecialtyAndDegreeLicenseCertificateVS
Title: "Individual Specialties, Degrees, Licenses, and Certificates Value Set"
Description: "Individual Specialties, Degrees, Licenses, and Certificates"
* ^experimental = false
* codes from system $V2table0360CS
* codes from valueset IndividualAndGroupSpecialtiesVS



ValueSet: NetworkTypeVS
Title: "Network Type Value Set"
Description:  "Single value describing networks."
* ^experimental = false
* $OrgTypeCS#ntwk   // only Network profile uses this type 

ValueSet: OrgTypeVS
Title: "Organization Type Value Set"
Description:  "Categories of organizations based on criteria in provider directories."
* ^experimental = false
* codes from system $OrgTypeCS
* codes from system NdhOrgTypeCS
* exclude $OrgTypeCS#ntwk   // only Network profile uses this type 

ValueSet: OrgAliasTypeVS
Title: "Organization Alias Type Value Sete"
Description:  "Categories of an organization's Alias based on criteria in provider directories."
* ^experimental = false
* codes from system $OrgAliasTypeCS


ValueSet: OrganizationAffiliationRoleVS
Title: "OrganizationAffiliation Roles"
Description: "Value Set for Organization Affiliation Roles"
* ^experimental = false
* codes from system $HL7OrganizationRoleCS 
* exclude  $HL7OrganizationRoleCS#member  // replaced by OrganizationAffiliationRoleCS#memberof
* codes from system $HL7OrganizationRoleCS
* codes from system $OrganizationAffiliationRoleCS
* codes from system $OrganizationAffiliationRoleForHieCS



ValueSet: PractitionerRoleVS
Title: "PractitionerRole Code Value Set"
Description: "Codes for the capabilities that an individual, group, or organization is acknowledged to have in a payer network, including general codes from the HL7 PractitionerRole Code System"
* ^experimental = false
* codes from system $NdhPractitionerRoleCS
//* codes from system $HL7PractitionerRoleCS //include the code into the PractitionerRoleCS since it cause error for use $HL7PractitionerRoleCS


ValueSet: QualificationStatusVS
Title: "Qualification Status Value Set"
Description: "The state indicating if a qualification is currently valid."
* ^experimental = false
* codes from system $CredentialStatusCS


ValueSet: SpecialtyAndDegreeLicenseCertificateVS
Title: "Specialties, Degrees, Licenses, and Certificates Value Set"
Description:  "Specialties and Degree License and Certificates"
* ^experimental = false
//* codes from valueset SpecialtiesVS 
//* codes from system $NUCCProviderTaxonomyCS
* codes from valueset http://terminology.hl7.org/ValueSet/v3-ActCredentialedCareCode|3.0.0
* codes from valueset $HealthcareProviderTaxonmyVS
//* codes from system $V2table0360CS
* codes from valueset http://terminology.hl7.org/ValueSet/v2-0360|2.0.0
//* codes from valueset $V3ActCredentialedCareCodeVS


ValueSet: TrustFrameworkTypeVS
Title: "Trust Framework Type Value Set"
Description: "Trust Framework Type"
* ^experimental = false
* codes from system NdhTrustFrameworkTypeCS

ValueSet: NdhSecureExchangeArtifactsVS
Title: "Secure Exchange Artifacts Value Set"
Description: "Secure Exchange Artifacts"
* ^experimental = false
* codes from system NdhSecureExchangeArtifactsCS

ValueSet: NdhAssociatedServersTypeVS
Title: "Associated Servers Type Value Set"
Description: "Associated Servers Type"
* ^experimental = false
* codes from system NdhAssociatedServersTypeCS


ValueSet: VirtualModalitiesVS
Title: "Virtual Modalities Value Set"
Description: "Codes for virtual service delivery modalities"
* ^experimental = false
* codes from system $VirtualHealcareDeliveryMethod


ValueSet: BenefitTypeVS
Title: "Benefit Type Value Set"
Description:  "Codes for Insurance Benefit Type."
* ^experimental = false
* $InsuranceBenefitTypeCS#pcpov   "Primary Care Visit to Treat an Injury or Illness"
* $InsuranceBenefitTypeCS#specialistov   "Specialist Office Visit"
* $InsuranceBenefitTypeCS#mlpov   "Other Practitioner Office Visit (Nurse, Physician Assistant) - Mid Level Professional"
* $InsuranceBenefitTypeCS#outpatient   "Outpatient Facility Fee (e.g., Ambulatory Surgery Center)"
* $InsuranceBenefitTypeCS#outpatstx   "Outpatient Surgery Physician/Surgical Services"
* $InsuranceBenefitTypeCS#hospserv   "Hospice Services"
* $InsuranceBenefitTypeCS#routinedental   "Routine Dental Services (Adult)"
* $InsuranceBenefitTypeCS#infertilitytx   "Infertility Treatment"
* $InsuranceBenefitTypeCS#ltnhc   "Long-Term/Custodial Nursing Home Care"
* $InsuranceBenefitTypeCS#privatenurse   "Private-Duty Nursing"
* $InsuranceBenefitTypeCS#routineeye   "Routine Eye Exam (Adult)"
* $InsuranceBenefitTypeCS#ucservice   "Urgent Care Centers or Facilities"
* $InsuranceBenefitTypeCS#homehealth   "Home Health"
* $InsuranceBenefitTypeCS#erservice   "Emergency Room Services"
* $InsuranceBenefitTypeCS#ambulance   "Emergency Room Services"
* $InsuranceBenefitTypeCS#inpatienthospital   "Inpatient Hospital Services (e.g., Hospital Stay)"
* $InsuranceBenefitTypeCS#inpatientprovider   "Inpatient Physician and Surgical Services"
* $InsuranceBenefitTypeCS#bariatricsurg   "Bariatric Surgery"
* $InsuranceBenefitTypeCS#cosmeticsurg   "Cosmetic Surgery"
* $InsuranceBenefitTypeCS#skillednursing   "Skilled Nursing Facility"
* $InsuranceBenefitTypeCS#ppnatalcare   "Prenatal and Postnatal Care"
* $InsuranceBenefitTypeCS#maternitycare   "Delivery and All Inpatient Services for Maternity Care"
* $InsuranceBenefitTypeCS#menthlthoutp   "Mental/Behavioral Health Outpatient Services"
* $InsuranceBenefitTypeCS#menthlthinp   "Mental/Behavioral Health Inpatient Services"
* $InsuranceBenefitTypeCS#sadoutp   "Substance Abuse Disorder Outpatient Services"
* $InsuranceBenefitTypeCS#sadinp   "Substance Abuse Disorder Inpatient Services"
* $InsuranceBenefitTypeCS#drggenric   "Generic Drugs"
* $InsuranceBenefitTypeCS#drgbrand   "Preferred Brand Drugs"
* $InsuranceBenefitTypeCS#drgnonpreferred   "Non-Preferred Brand Drugs"
* $InsuranceBenefitTypeCS#drgspecialty   "Specialty Drugs"
* $InsuranceBenefitTypeCS#rehaboutp   "Outpatient Rehabilitation Services"
* $InsuranceBenefitTypeCS#servicehablitation   "Habilitation Services"
* $InsuranceBenefitTypeCS#chiro   "Chiropractic Care"
* $InsuranceBenefitTypeCS#dme   "Durable Medical Equipment"
* $InsuranceBenefitTypeCS#hearingaids   "Hearing Aids"
* $InsuranceBenefitTypeCS#imgctpetmri   "Imaging (CT/PET Scans, MRIs)"
* $InsuranceBenefitTypeCS#prev   "Preventive Care/Screening/Immunization"
* $InsuranceBenefitTypeCS#rtnpod   "Routine Foot Care"
* $InsuranceBenefitTypeCS#acupuncture   "Acupuncture"
* $InsuranceBenefitTypeCS#weightloss   "Weight Loss Programs"
* $InsuranceBenefitTypeCS#rtneyechld   "Routine Eye Exam for Children"
* $InsuranceBenefitTypeCS#glasseschld   "Eye Glasses for Children"
* $InsuranceBenefitTypeCS#rtndntlchld   "Dental Check-Up for Children"
* $InsuranceBenefitTypeCS#speachthpy   "Rehabilitative Speech Therapy"
* $InsuranceBenefitTypeCS#rehaboccandpt   "Rehabilitative Occupational and Rehabilitative Physical Therapy"
* $InsuranceBenefitTypeCS#wellbaby   "Well Baby Visits and Care"
* $InsuranceBenefitTypeCS#laboutp   "Laboratory Outpatient and Professional Services"
* $InsuranceBenefitTypeCS#imagingdx   "X-rays and Diagnostic Imaging"
* $InsuranceBenefitTypeCS#dntlbaschld   "Basic Dental Care - Child"
* $InsuranceBenefitTypeCS#orthochld   "Orthodontia - Child"
* $InsuranceBenefitTypeCS#dntlmajchld   "Major Dental Care - Child"
* $InsuranceBenefitTypeCS#dntlbasadlt   "Basic Dental Care - Adult"
* $InsuranceBenefitTypeCS#orthodadlt   "Orthodontia - Adult"
* $InsuranceBenefitTypeCS#dntlmajadlt   "Major Dental Care - Adult"
* $InsuranceBenefitTypeCS#abortion   "Abortion for Which Public Funding is Prohibited"
* $InsuranceBenefitTypeCS#transplant   "Transplant"
* $InsuranceBenefitTypeCS#accdntl   "Accidental Dental"
* $InsuranceBenefitTypeCS#dialysis   "Dialysis"
* $InsuranceBenefitTypeCS#testallrgy   "Allergy Testing"
* $InsuranceBenefitTypeCS#chemotherapy   "Chemotherapy"
* $InsuranceBenefitTypeCS#radiation   "Radiation"
* $InsuranceBenefitTypeCS#edudiab   "Diabetes Education"
* $InsuranceBenefitTypeCS#prosthetic   "Prosthetic Devices"
* $InsuranceBenefitTypeCS#infusiontx   "Infusion Therapy"
* $InsuranceBenefitTypeCS#tmjtx   "Treatment for Temporomandibular Joint Disorders"
* $InsuranceBenefitTypeCS#nutrition   "Nutritional Counseling"
* $InsuranceBenefitTypeCS#reconsurg   "Reconstructive Surgery"


