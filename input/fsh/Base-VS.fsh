ValueSet: AcceptingPatientsVS
Title: "Accepting Patients Codes Value Set"
Description: "This value set defines NDH concepts used to represent whether a practice, service, or role is accepting new patients."
* ^experimental = false
* codes from system $AcceptingPatientsCS

ValueSet: AccessibilityVS
Title: "Accessibility Value Set"
Description: "This value set defines NDH accessibility accommodation categories used to describe available access-support options across directory records."
* ^experimental = false
* codes from system $AccessibilityCS

ValueSet: EmploymentStatusVS
Title: "Employment Status Value Set"
Description: "This value set defines employment-status concepts used by NDH to represent an individual's current employment situation in a standardized form."
* ^experimental = false
//* codes from system EmploymentStatusCS
* $V20066EmploymentStatusCS#1 "Full time employed"
* $V20066EmploymentStatusCS#2 "Part time employed"
* $V20066EmploymentStatusCS#3 "Unemployed"
* $V20066EmploymentStatusCS#4 "Self-employed"
* $V20066EmploymentStatusCS#5 "Retired"


ValueSet: InsuranceStatusVS
Title: "Insurance Status Value Set"
Description: "This value set defines insurance-status concepts used by NDH to communicate whether coverage is insured, uninsured, or underinsured."
* ^experimental = false
* codes from system NdhInsuranceStatusCS

ValueSet: AgeGroupVS
Title: "Age Range Value Set"
Description: "This value set defines NDH age-group concepts used to represent age-based eligibility or targeting criteria in directory data."
* ^experimental = false
* codes from system NdhAgeGroupCS


ValueSet: NdhEndpointEnvironmentVS
Title: "NDH Endpoint Environment Value Set"
Description: "This value set defines NDH endpoint environment concepts used to distinguish production and non-production endpoint deployment contexts."
* ^experimental = false
* codes from system NdhEndpointEnvironmentCS



ValueSet: EndpointAccessControlMechanismVS
Title: "Endpoint Access Control Mechanism Value Set"
Description: "This value set defines endpoint access-control mechanism concepts used to declare authentication and authorization approaches for secure exchange."
* ^experimental = false
* codes from system NdhEndpointAccessControlMechanismCS


ValueSet: EndpointTestingMethodVS
Title: "Endpoint Testing Method Value Set"
Description: "This value set defines endpoint testing-method concepts used to represent how endpoint validation, conformance, or certification evidence was established." 
* ^experimental = false
* codes from system NdhEndpointTestingMethodCS

ValueSet: EndpointConnectionTypeVS
Title: "Endpoint Connection Types Value Set"
Description:  "This value set defines endpoint connection-type concepts for NDH endpoints by combining core, IHE, and NDH supplemental connection semantics."
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
Description:  "This value set defines IHE-specific endpoint connection-type concepts used when exchange needs are more specific than general connection-type codes."
* ^experimental = false
* codes from system $IheMCSDEndpointTypesCS


ValueSet: EndpointPayloadTypeVS
Title: "Endpoint Payload Type Value Set"
Description:  "This value set defines NDH endpoint payload-type constraints and, in this guide, intentionally limits payload typing to the not-applicable designation."
* ^experimental = false
* $DataAbsentReasonCS#not-applicable  "Not Applicable"
//* codes from system $MetadataTypeCodeSystem

ValueSet: EndpointFhirMimeTypeVS
Title: "Endpoint FHIR Mimetype Value Set"
Description: "This value set defines permitted FHIR MIME-type representations used to declare supported FHIR serialization formats for endpoint exchange."
* ^experimental = false
* $BCP13#application/fhir+xml //"FHIR XML"
* $BCP13#application/fhir+json //"FHIR JSON"
* $BCP13#application/fhir+turtle //"FHIR Turtle"
//* $V3MimeCS#application/fhir+xml "FHIR XML"
//* $V3MimeCS#application/fhir+json "FHIR JSON"
//* $V3MimeCS#application/fhir+turtle "FHIR Turtle"

ValueSet: NdhImplementationGuideVS
Title: "NDH endpoint Implementation Guide Value Set"
Description: "This value set defines implementation-guide use-case concepts used to indicate which interoperability guides and exchange scenarios an endpoint supports."
* ^experimental = false
* codes from system NdhFhirEndpointUseCaseCS
* codes from system NdhDirectTrustEndpointUsecaseCS
// these should go in ihe-specific-connection-type * codes from https://profiles.ihe.net/ITI/mCSD/CodeSystem/MCSDEndpointTypes

ValueSet: TrustProfileVS
Title: "Trust Profile Value Set"
Description:  "This value set defines trust-profile concepts used to indicate the registration and authorization profile family governing endpoint interaction."
* ^experimental = false
* codes from system NdhTrustProfileCS


ValueSet: VerificationProcessVS
Title: "NDH Verification Process Value Set"
Description:  "This value set defines verification-process concepts used by NDH to identify how directory information was verified or attested."
* ^experimental = false
* codes from system $ValidationProcessCS|2.0.0

ValueSet: NdhVerificationStatusVS
Title: "NDH Verification Status Value Set"
Description:  "This value set defines NDH verification-status concepts used to communicate whether verification is complete, incomplete, or not required."
* ^experimental = false
* codes from system NdhVerificationStatusCS


ValueSet: NdhHealthcareServiceCategoryVS
Title: "Healthcare Service Category Value Set"
Description: "This value set defines broad healthcare-service category concepts used to classify the general type of services being provided or offered."
* ^experimental = false
* codes from system $NdhHealthcareServiceTypeCS


ValueSet: HealthcareServiceEligibilityCodeVS
Title: "Healthcare Service Eligibility Code Value Set"
Description: "This value set defines healthcare-service eligibility concepts, drawing from condition and procedure value sets to represent qualification criteria for service access."
* ^experimental = false
* codes from valueset $ConditionCode
* codes from valueset $ProcedureCode



ValueSet: HealthcareServiceTypeVS
Title: "HealthcareService Type Value Set"
Description: "This value set defines detailed healthcare-service type concepts used to classify specific clinical, social, and support services in NDH directory exchange."
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
Description: "This value set defines identifier-status concepts used to communicate lifecycle state and operational validity of identifiers in directory records."
* ^experimental = false
* codes from system $CredentialStatusCS

ValueSet: IndividualSpecialtyVS
Title: "Individual Specialty Value Set"
Description: "This value set defines individual specialty concepts used to represent practitioner specialty designations in a consistent coded format."
* ^experimental = false
* codes from system $V2table0360CS


ValueSet: IndividualSpecialtyAndDegreeLicenseCertificateVS
Title: "Individual Specialties, Degrees, Licenses, and Certificates Value Set"
Description: "This value set defines individual specialty, degree, license, and certificate concepts by combining specialty and healthcare taxonomy sources for richer credential representation."
* ^experimental = false
* codes from valueset IndividualSpecialtyVS
* codes from valueset HealthcareIndividualTaxonomyVS



ValueSet: NetworkTypeVS
Title: "Network Type Value Set"
Description:  "This value set defines the network-type designation used to classify NDH network entities distinctly from general organization categories."
* ^experimental = false
* $OrgTypeCS#ntwk   // only Network profile uses this type 

ValueSet: OrgTypeVS
Title: "Organization Type Value Set"
Description:  "This value set defines organization-type categories used to classify directory organizations by role and function while excluding network-only typing."
* ^experimental = false
* codes from system $OrgTypeCS
* codes from system NdhOrgTypeCS
* exclude $OrgTypeCS#ntwk   // only Network profile uses this type 

ValueSet: OrgAliasTypeVS
Title: "Organization Alias Type Value Sete"
Description:  "This value set defines organization-alias type categories used to distinguish how alternate organization names are used in directory contexts."
* ^experimental = false
* codes from system $OrgAliasTypeCS


ValueSet: OrganizationAffiliationRoleVS
Title: "OrganizationAffiliation Roles"
Description: "This value set defines organization-affiliation role concepts, combining HL7 and HIE-oriented role sources to classify affiliation relationships consistently."
* ^experimental = false
* codes from system $HL7OrganizationRoleCS 
* exclude  $HL7OrganizationRoleCS#member  // replaced by OrganizationAffiliationRoleCS#memberof
* codes from system $HL7OrganizationRoleCS
* codes from system $OrganizationAffiliationRoleCS
* codes from system $OrganizationAffiliationRoleForHieCS



ValueSet: PractitionerRoleVS
Title: "PractitionerRole Code Value Set"
Description: "This value set defines practitioner-role capability concepts used to classify professional and network participation functions, including NDH role codes for payer-directory use."
* ^experimental = false
* codes from system $NdhPractitionerRoleCS
//* codes from system $HL7PractitionerRoleCS //include the code into the PractitionerRoleCS since it cause error for use $HL7PractitionerRoleCS


ValueSet: QualificationStatusVS
Title: "Qualification Status Value Set"
Description: "This value set defines qualification-status concepts used to indicate whether a credential or qualification is currently valid."
* ^experimental = false
* codes from system $CredentialStatusCS


ValueSet: SpecialtyAndDegreeLicenseCertificateVS
Title: "Specialties, Degrees, Licenses, and Certificates Value Set"
Description:  "This value set defines specialty, degree, license, and certificate concepts by combining credentialed-care, provider taxonomy, and degree/license/certificate sources."
* ^experimental = false
//* codes from valueset SpecialtiesVS 
//* codes from system $NUCCProviderTaxonomyCS
* codes from valueset http://terminology.hl7.org/ValueSet/v3-ActCredentialedCareCode|3.0.0
* codes from valueset $HealthcareProviderTaxonomyVS
//* codes from system $V2table0360CS
* codes from valueset $HL7VS-degreeLicenseCertificate
//* codes from valueset $V3ActCredentialedCareCodeVS


ValueSet: TrustFrameworkTypeVS
Title: "Trust Framework Type Value Set"
Description: "This value set defines trust-framework type concepts used to identify the governance and policy network under which exchange trust is established."
* ^experimental = false
* codes from system NdhTrustFrameworkTypeCS

ValueSet: NdhSecureExchangeArtifactsVS
Title: "Secure Exchange Artifacts Value Set"
Description: "This value set defines secure-exchange artifact type concepts used to categorize certificates and related trust artifacts for endpoint interoperability."
* ^experimental = false
* codes from system NdhSecureExchangeArtifactsCS

ValueSet: NdhAssociatedServersTypeVS
Title: "Associated Servers Type Value Set"
Description: "This value set defines associated-server type concepts used to classify companion or supporting server roles linked to NDH endpoints."
* ^experimental = false
* codes from system NdhAssociatedServersTypeCS


ValueSet: VirtualModalitiesVS
Title: "Virtual Modalities Value Set"
Description: "This value set defines virtual service-delivery modality concepts used to describe how services are delivered through remote or digital channels."
* ^experimental = false
* codes from system $VirtualHealcareDeliveryMethod


ValueSet: BenefitTypeVS
Title: "Benefit Type Value Set"
Description:  "This value set defines insurance benefit-type concepts used to classify covered services and benefit categories for plan comparison and eligibility interpretation."
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




ValueSet: NDHCareTeamCategoryVS
Title: "NDH Care Team Category Value Set"
Description: "This value set defines NDH care-team category concepts used to classify the primary coordination focus of a care team in directory exchange."
* ^experimental = false
* $loinc#LA27975-4 "Event-focused care team"
* $loinc#LA27976-2 "Encounter-focused care team"
* $loinc#LA27977-0 "Episode of care-focused care team"
* $loinc#LA27978-8 "Condition-focused care team"
* $loinc#LA28865-6 "Longitudinal care-coordination focused care team"
* $loinc#LA28866-4 "Home & Community Based Services (HCBS)-focused care team"
* $loinc#LA27980-4 "Clinical research-focused care team"
* $loinc#LA28867-2 "Public health-focused care team"
