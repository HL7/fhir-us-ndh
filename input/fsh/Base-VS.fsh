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

ValueSet: NDHCareTeamCategoryVS
Title: "NDH Care Team Category Value Set"
Description: "Codes for NDH Care Team Category"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = false
* $loinc#LA27975-4 "Event-focused care team"
* $loinc#LA27976-2 "Encounter-focused care team"
* $loinc#LA27977-0 "Episode-focused care team"
* $loinc#LA27978-8 "Condition-focused care team"
* $loinc#LA28865-6 "Longitudinal care-coordination focused care team"
* $loinc#LA28866-4 "Home & Community Based Services (HCBS)-focused care team"
* $loinc#LA27980-4 "Clinical research-focused care team"
* $loinc#LA28867-2 "Public health-focused care team"

ValueSet: ConsentPolicyRulesVS
Title: "Consent Policy Rules Value Set"
Description: "Code for Consent Policy Rules"
* ^experimental = false
* codes from system ConsentPolicyRulesCS

ValueSet: ConsentScopeNdhVS
Title: "NDH Consent Scope Value Set"
Description: "Code for NDH Consent Scope Value Set"
* ^experimental = false
//* codes from system $ConsentScopeCS
* codes from system ConsentScopeNdhCS

ValueSet: ConsentCategoryNdhVS
Title: "NDH Consent Category Value Set"
Description: "Code for NDH Consent Category Value Set"
* ^experimental = false
//* codes from system $HL7ConsentCategoryVS
* codes from system ConsentCategoryNdhCS

ValueSet: DigitalcertificateUseVS
Title: "Digital Certificate Use Value Set"
Description: "Codes for the Digital Certificate Use"
* ^experimental = false
* codes from system NdhDigitalcertificateUseCS

/*
ValueSet: DeliveryMethodVS
Title: "Delivery Methods Value Set"
Description: "Codes for documenting delivery methods"
* ^experimental = false
* codes from system DeliveryMethodCS
*/

ValueSet: EmploymentStatusVS
Title: "Employment Status Value Set"
Description: "Codes for documenting employment status"
* ^experimental = false
//* codes from system EmploymentStatusCS
* $V20066EmploymentStatusCS#1 "Full time employed"
* $V20066EmploymentStatusCS#2 "Part time employed"
* $V20066EmploymentStatusCS#3 "Unemployed"
* $V20066EmploymentStatusCS#4 "Self-employed,"
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
* codes from system EndpointAccessControlMechanismCS

/*
ValueSet: EndpointX509PublicKeyUsageFlagVS
Title: "Endpoint X509 Public Key Usage Flag Value Set"
Description: "Codes for documenting X509 Public Key Usage Flag"
* ^experimental = false
* codes from system EndpointX509PublicKeyUsageFlagCS
*/

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
* codes from system NdhEndpointConnectionTypeCS 
//* codes from system EndpointHieSpecificConnectionTypeCS

/*
ValueSet: EndpointHieSpecificConnectionTypeVS
Title: "Endpoint IHE Specific Connection Types Value Set"
Description:  "Endpoint IHE Specific Connection Types"
* ^experimental = false
* codes from system EndpointHieSpecificConnectionTypeCS
*/

ValueSet: EndpointIheSpecificConnectionTypeVS
Title: "Endpoint IHE Specific Connection Types Value Set"
Description:  "Endpoint IHE Specific Connection Types"
* ^experimental = false
* codes from system $IheMCSDEndpointTypesCS

/*
ValueSet: EndpointConnectionTypeVersionVS
Title: "Endpoint Connection Type Version Value Set"
Description: "Endpoint Connection Type Version"
* ^experimental = false
* $FHIRVersionCS#0.0.80 "DSTU 1 Official version"
* $FHIRVersionCS#0.0.81 "DSTU 1 Official version Technical Errata #1"
* $FHIRVersionCS#0.0.82 "DSTU 1 Official version Technical Errata #2"
* $FHIRVersionCS#1.0.1  "DSTU 2 (Official version)"
* $FHIRVersionCS#1.0.2  "DSTU 2 (Official version with 1 technical errata)"
* $FHIRVersionCS#3.0.0  "FHIR Release 3 (STU)"
* $FHIRVersionCS#3.0.1  "FHIR Release 3 (STU) with 1 technical errata"
* $FHIRVersionCS#4.0.0  "FHIR Release 4 (Normative + STU)"
* $FHIRVersionCS#4.0.1  "FHIR Release 4 Technical Correction"
//* $FHIRVersionCS#4.3.0  "FHIR Release 4B (Normative + STU)."
* codes from system EndpointConnectionTypeVersionCS
//* EndpointConnectionTypeVersionCS#4.3.0 "FHIR Release 4B"
*/

ValueSet: EndpointPayloadTypeVS
Title: "Endpoint Payload Type Value Set"
Description:  "Endpoint Payload Types are constrained to NA (Not Applicable) as part of this IG"
* ^experimental = false
* $DataAbsentReasonCS#not-applicable  "Not Applicable"

ValueSet: EndpointFhirMimeTypeVS
Title: "Endpoint FHIR Mimetype Value Set"
Description: "Endpoint FHIR mimetype"
* ^experimental = false
* $BCP13#application/fhir+xml "FHIR XML"
* $BCP13#application/fhir+json "FHIR JSON"
* $BCP13#application/fhir+turtle "FHIR Turtle"
//* $V3MimeCS#application/fhir+xml "FHIR XML"
//* $V3MimeCS#application/fhir+json "FHIR JSON"
//* $V3MimeCS#application/fhir+turtle "FHIR Turtle"

ValueSet: EndpointCommonMimeTypeVS
Title: "Endpoint common mimetype Value Set"
Description: "Endpoint common mimetype"
* ^experimental = false
* $BCP13#audio/aac "AAC audio"
* $BCP13#application/x-abiword "AbiWord document"
* $BCP13#application/x-freearc "Archive document (multiple files embedded)"
* $BCP13#image/avif "AVIF image"
* $BCP13#video/x-msvideo "AVI: Audio Video Interleave"
* $BCP13#application/vnd.amazon.ebook "Amazon Kindle eBook format"
* $BCP13#application/octet-stream "Any kind of binary data"
* $BCP13#image/bmp "Windows OS/2 Bitmap Graphics"
* $BCP13#application/x-bzip "BZip archive"
* $BCP13#application/x-bzip2 "BZip2 archive"
* $BCP13#application/x-cdf "CD audio"
* $BCP13#application/x-csh "C-Shell script"
* $BCP13#text/css "Cascading Style Sheets (CSS)"
* $BCP13#text/csv "Comma-separated values (CSV)"
* $BCP13#application/msword "Microsoft Word"
* $BCP13#application/vnd.openxmlformats-officedocument.wordprocessingml.document "Microsoft Word (OpenXML)"
* $BCP13#application/vnd.ms-fontobject "MS Embedded OpenType fonts"
* $BCP13#application/epub+zip "Electronic publication (EPUB)"
* $BCP13#application/gzip "GZip Compressed Archive"
* $BCP13#image/gif "Graphics Interchange Format (GIF)"
* $BCP13#text/html "HyperText Markup Language (HTML)"
* $BCP13#image/vnd.microsoft.icon "Icon format"
* $BCP13#text/calendar "iCalendar format"
* $BCP13#application/java-archive "Java Archive (JAR)"
* $BCP13#image/jpeg "JPEG images"
* $BCP13#text/javascript "JavaScript"
* $BCP13#application/json "JSON format"
* $BCP13#application/ld+json "JSON-LD format"
* $BCP13#audio/midi "Musical Instrument Digital Interface (MIDI)"
* $BCP13#audio/x-midi "Musical Instrument Digital Interface (MIDI)"
* $BCP13#audio/mpeg "MP3 audio"
* $BCP13#video/mp4 "MP4 video"
* $BCP13#video/mpeg "MPEG Video"
* $BCP13#application/vnd.apple.installer+xml "Apple Installer Package"
* $BCP13#application/vnd.oasis.opendocument.presentation "OpenDocument presentation document"
* $BCP13#application/vnd.oasis.opendocument.spreadsheet "OpenDocument spreadsheet document"
* $BCP13#application/vnd.oasis.opendocument.text "OpenDocument text document"
* $BCP13#audio/ogg "OGG audio"
* $BCP13#video/ogg "OGG video"
* $BCP13#application/ogg "OGG"
* $BCP13#audio/opus "Opus audio"
* $BCP13#font/otf "OpenType font"
* $BCP13#image/png "Portable Network Graphics"
* $BCP13#application/pdf "Adobe Portable Document Format (PDF)"
* $BCP13#application/x-httpd-php "Hypertext Preprocessor (Personal Home Page)"
* $BCP13#application/vnd.ms-powerpoint "Microsoft PowerPoint"
* $BCP13#application/vnd.openxmlformats-officedocument.presentationml.presentation "Microsoft PowerPoint (OpenXML)"
* $BCP13#application/vnd.rar "RAR archive"
* $BCP13#application/rtf "Rich Text Format (RTF)"
* $BCP13#application/x-sh "Bourne shell script"
* $BCP13#image/svg+xml "Scalable Vector Graphics (SVG)"
* $BCP13#application/x-tar "Tape Archive (TAR)"
* $BCP13#image/tiff "Tagged Image File Format (TIFF)"
* $BCP13#video/mp2t "MPEG transport stream"
* $BCP13#font/ttf "TrueType Font"
* $BCP13#text/plain "Text, (generally ASCII or ISO 8859-n)"
* $BCP13#application/vnd.visio "Microsoft Visio"
* $BCP13#audio/wav "Waveform Audio Format"
* $BCP13#audio/webm "WEBM audio"
* $BCP13#video/webm "WEBM video"
* $BCP13#image/webp "WEBP image"
* $BCP13#font/woff "Web Open Font Format (WOFF)"
* $BCP13#font/woff2 "Web Open Font Format (WOFF)"
* $BCP13#application/xhtml+xml "XHTML"
* $BCP13#application/vnd.ms-excel "Microsoft Excel"
* $BCP13#application/vnd.openxmlformats-officedocument.spreadsheetml.sheet "Microsoft Excel (OpenXML)"
* $BCP13#application/xml "XML"
* $BCP13#text/xml "XML"
* $BCP13#application/atom+xml "XML"
* $BCP13#application/vnd.mozilla.xul+xml "XUL"
* $BCP13#application/zip "ZIP archive"
* $BCP13#video/3gpp "3GPP audio/video container"
* $BCP13#audio/3gpp "3GPP audio/video container if it does not contain video"
* $BCP13#video/3gpp2 "3GPP2 audio/video container"
* $BCP13#audio/3gpp2 "3GPP2 audio/video container  if it doesn't contain video"
* $BCP13#application/x-7z-compressed "7-zip archive"
* $BCP13#text/hl7v2 "HL7 v2 message"
* $BCP13#text/rtf "Rich Text Format (RTF)"
* $BCP13#application/cda+xml "CDA XML"
* $BCP13#application/fhir+json "FHIR JSON"
* $BCP13#application/fhir+xml "FHIR XML"

/*
ValueSet: EndpointTypeVS
Title: "Endpoint Type Value Set"
Description: "Codes to identify Endpoint Type"
* ^experimental = false
* codes from system EndpointTypeCS
*/

/*
// Need to be redefined lead by Lisa Nelson (MaxMD)
ValueSet: EndpointUsecaseVS
Title: "Endpoint Usecases Value Set"
Description:  "Codes for documenting business use case by a general grouping by business area."
* ^experimental = false
* $V3ActReason#TREAT  "treatment"
* $V3ActReason#HPAYMT "healthcare payment"
* $V3ActReason#COC "coordination of care"
* $V3ActReason#COVERAGE "eligibility verification and determination"
* $V3ActReason#HOPERAT "healthcare operations"
* $V3ActReason#PUBHLTH "public health"
* $V3ActReason#HRESCH "healthcare research"
* $V3ActReason#ETREAT "emergency treatment"
* $V3ActReason#PATRQT "patient requested" 
*/

ValueSet: NdhFhirEndpointUseCaseVS
Title: "NDH FHIR Endpoint Usecase Value Set"
Description:  "Codes for documenting business use case by a general grouping by business area."
* ^experimental = false
* codes from system NdhFhirEndpointUseCaseCS


//for now
ValueSet: NdhDirectTrustEndpointUsecaseVS
Title: "NDH Direct Trust Endpoint Usecase Value Set"
Description:  "Codes for documenting business use case by a general grouping by business area."
* ^experimental = false
* codes from system NdhDirectTrustEndpointUsecaseCS

ValueSet: TrustProfileVS
Title: "Trust Profile Value Set"
Description:  "Codes for documenting trust profile"
* ^experimental = false
* codes from system NdhTrustProfileCS

/*
ValueSet: NdhVerificationCommunicationMethodVS
Title: "NDH Verification Communication Method Value Set"
Description:  "Codes for documenting communication method used for verification"
* ^experimental = false
* codes from system $VerificationCommunicationMethodCS
*/

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

/*
ValueSet: HealthcareServiceRatingTypeVS
Title: "Healthcare Service Rating Type Value Set"
Description: "Codes for Healthcare Service Rating Type"
* ^experimental = false
* codes from system HealthcareServiceRatingTypeCS
*/

ValueSet: HealthcareServiceEligibilityCodeVS
Title: "Healthcare Service Eligibility Code Value Set"
Description: "Codes for Healthcare Service Eligibility Code"
* ^experimental = false
* codes from valueset $ConditionCode
* codes from valueset $ProcedureCode

/*
ValueSet: HealthcareServiceReferralMethodVS
Title: "Healthcare Service Referral Method Value Set"
Description: "Codes for Healthcare Service Referral Method"
* ^experimental = false
* codes from system HealthcareServiceReferralMethodCS
*/

/*
ValueSet: HealthcareServiceProgramVS
Title: "Healthcare Service Program Value Set"
Description: "Codes for Healthcare Service Program"
* ^experimental = false
//* codes from system HealthcareServiceProgramCS
* codes from system $ProgramCS
*/

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


ValueSet: IgActorVS
Title: "IG Actor Value Set"
Description: "Codes to identify IG Actor"
* ^experimental = false
* codes from system NdhIgActorCS

/*
ValueSet: IgTypeVS
Title: "IG Type Value Set"
Description: "Codes to identify IG Type"
* ^experimental = false
* codes from system IgTypeCS
*/

ValueSet: IndividualSpecialtyAndDegreeLicenseCertificateVS
Title: "Individual Specialties, Degrees, Licenses, and Certificates Value Set"
Description: "Individual Specialties, Degrees, Licenses, and Certificates"
* ^experimental = false
* codes from system $V2table0360CS
* codes from valueset IndividualAndGroupSpecialtiesVS

/*
ValueSet: InsuranceProductTypeVS
Title: "Insurance Product Type Value Set"
Description: "A distinct package of health insurance coverage benefits that are offered using a particular product network type"
* ^experimental = false
* codes from system InsuranceProductTypeCS
*/

/*
ValueSet: InsurancePlanTypeVS
Title: "Insurance Plan Type Value Set"
Description: "Categories of cost-sharing used by plans"
* ^experimental = false
* codes from system InsurancePlanTypeCS
*/

/*
ValueSet: LanguageProficiencyVS
Title: "Language Proficiency Value Set"
Description: "Codes for documenting spoken language proficiency based on the Interagency Language Roundtable scale of abilities to communicate in a language"
* ^experimental = false
* codes from system $ILRSpeakingScaleCS
*/


/*
ValueSet: MinEndpointConnectionTypeVS
Title: "Minimum Endpoint Connection Types Value Set"
Description:  "Minimum Endpoint Connection Types"
* ^experimental = false
* $ConnectionTypeCS#hl7-fhir-rest "HL7 FHIR"
* $ConnectionTypeCS#hl7-fhir-msg "HL7 FHIR Messaging"
* EndpointConnectionTypeCS#hl7-fhir-opn "HL7 FHIR Operation"
* $ConnectionTypeCS#direct-project	"Direct Project"
* EndpointConnectionTypeCS#rest-non-fhir "REST (not FHIR)"
*/

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

/*
ValueSet: OrganizationAffiliationRoleForHieVS
Title: "OrganizationAffiliation Roles for HIE or HIO"
Description: "Value Set for Organization Affiliation Roles for HIE or HIO"
* ^experimental = false
* codes from system OrganizationAffiliationRoleForHieCS
*/

ValueSet: NdhDirectTrustPayloadTypeVS
Title: "NDH Direct Trust Payload Type Value Set"
Description: "Payload types for NDH Direct Trust"
* ^experimental = false
* codes from system NdhDirectTrustPayloadTypeCS
* codes from system $IHEFormatCodeCS
* codes from system $HL7DocumentFormatCodesCS



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

ValueSet: SpecialtiesVS
Title: "Specialties Value Set"
Description:  "Specialties value set based on National Uniform Claim Committee (NUCC) Health Care Provider Taxonomy code set"
* ^experimental = false
* codes from valueset IndividualAndGroupSpecialtiesVS
* codes from valueset NonIndividualSpecialtiesVS

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

/*
ValueSet: ValidationProcessVS
Title: "Validation Type Value Set"
Description: "Codes to identify Validation Type"
* ^experimental = false
* ValidationTypeCS#editcheck  "edit check"
* ValidationTypeCS#valueset	"Valueset"
* ValidationTypeCS#extsource	"External source"
* ValidationTypeCS#standalone	"Stand alone"
* ValidationTypeCS#incontext	"In context"
* ValidationTypeCS#attester	"Attester"
*/

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


/*
ValueSet: NdhCoverageTypeVS
Title: "NDH Insurance Coverage Type Value Set"
Description:  "Codes for NDH Insurance Coverage Type."
* ^experimental = false
* $NdhPayerCharacteristicsCS#medical   "Medical"
* $NdhPayerCharacteristicsCS#dental   "Dental"
* $NdhPayerCharacteristicsCS#menthlth   "Mental Health"
* $NdhPayerCharacteristicsCS#substanceabuse   "Substance Abuse"
* $NdhPayerCharacteristicsCS#vision   "Vision"
* $NdhPayerCharacteristicsCS#drug   "Drug"
* $NdhPayerCharacteristicsCS#stc   "Short Term Care"
* $NdhPayerCharacteristicsCS#ltc   "Long Term Care"
* $NdhPayerCharacteristicsCS#hospice   "Hospice"
* $NdhPayerCharacteristicsCS#homehealth   "Home Health"
* $NdhPayerCharacteristicsCS#dmepos   "DMEPOS"
* $NdhPayerCharacteristicsCS#imagingadv   "Advanced Imaging (CT/PET Scans, MRIs)"
* $NdhPayerCharacteristicsCS#prev   "Preventive Care/Screening/Immunization"
* $NdhPayerCharacteristicsCS#rehab   "Rehabilitation"
*/