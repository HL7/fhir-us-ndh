



CodeSystem: NdhDigitalcertificateUseCS
Title: "NDH Digitalcertificate Use Code System"
Description: "This code System includes the choice of use digital certification"
* ^experimental = false
* #signing "Signing" "A certificate issued for the purpose of digitally signing information to confirm the author and guarantee that the content has not been altered or corrupted since it was signed by use of a cryptographic hash."
* #encrypt "Encryption" "A certificate containing a public key that can encrypt or decrypt electronic messages, files, documents, or data transmissions, or establish or exchange a session key for these same purposes."
* #auth "Authentication" "A certificate which can be used to obtain assurance of the accuracy of the claimed identity of an entity."
* ^caseSensitive = true



CodeSystem: NdhAgeGroupCS
Title: "NDH Age Range Code System"
Description: "This code system includes codes for indicating the age range of a person."
* ^experimental = false
* ^caseSensitive = true
* #infants  "Infants"	"Infants Age range 0-2 years"
* #children "Children"	"Children Age range 3-12 years"
* #teens "Teens"	"Teens Age range 13-19 years"
* #adults "Adults"	"Adults Age range 20-65 years"
* #seniors "Seniors"	"Seniors Age range 65+ years"

CodeSystem: NdhInsuranceStatusCS
Title: "NDH Insurance Status Code System"
Description: "This code system includes codes for indicating the status of a person's insurance coverage."
* ^experimental = false
* ^caseSensitive = true
* #insured	"insured"	"The person is currently insured."
* #uninsured	"uninsured"	"The person is currently uninsured."
* #underinsured	"underinsured"	"The person is currently underinsured."


//web-server security (username token, x.509 certificate, saml assertion, kerberos ticket)
CodeSystem: NdhEndpointAccessControlMechanismCS
Title: "Endpoint Access Control Mechanism Code System"
Description: "Endpoint Access Control Mechanism"
* ^experimental = false
* ^caseSensitive = true
* #public  "Public" "Public access without any specific access control."
* #OAuth "OAuth" "OAuth (unspecified version see oauth.net)."
* #SMART-on-FHIR "SMART-on-FHIR" "OAuth2 using SMART-on-FHIR profile (see http://docs.smarthealthit.org/)."
* #NTLM "NTLM" "Microsoft NTLM Authentication."
* #basic "Basic" "Basic authentication defined in HTTP specification."
* #Kerberos "Kerberos" "see http://www.ietf.org/rfc/rfc4120.txt."
* #Certificates "Certificates" "SSL where client must have a certificate registered with the server."
* #opaque-access-token "Opaque Access Token" "Uses an opaque token for access control, which is a token whose structure is not visible or meaningful to the client."
* #jwt-access-token "JWT Access Token" "Uses a JSON Web Token (JWT) for access control, which is a compact, URL-safe means of representing claims to be transferred between two parties."
* #mutual-tls "Mutual TLS" "Uses mutual Transport Layer Security (TLS) where both client and server authenticate each other using certificates."
* #wss-saml-token "WSS SAML Token" "Uses a Security Assertion Markup Language (SAML) token within the Web Services Security (WSS) framework for access control."
* #wss-username-token "WSS User Name Token" "Uses a username token within the WSS framework for access control."
* #wss-kerberos-token "WSS Kerberos Token" "Uses a Kerberos token within the WSS framework for access control."
* #wss-x509-token "WSS X509 Token" "Uses an X.509 certificate token within the WSS framework for access control."
* #wss-custom-token "WSS Custom Token" "Uses a custom token within the WSS framework for access control."


CodeSystem:  NdhEndpointConnectionTypeCS
  Title: "Endpoint Connection Types (additional) Code System"
  Description:  "Extension codes for http://terminology.hl7.org/CodeSystem/endpoint-connection-type"
* ^experimental = false
//* #hl7-fhir-opn "HL7 FHIR Operation" "Interact with a FHIR server interface using FHIR's RESTful interface using an operation other than messaging. For details on its version/capabilities you should connect the value in Endpoint.address and retrieve the FHIR CapabilityStatement."
* #rest-non-fhir "REST (not FHIR)" "Interact with a server using HTTP/REST but not FHIR.  Should be used for web portals."
//* #ihe-xcpd "IHE XCPD" "IHE Cross Community Patient Discovery Profile (XCPD) - http://wiki.ihe.net/index.php/Cross-Community_Patient_Discovery"
//* #ihe-xca "IHE XCA" "IHE Cross Community Access Profile (XCA) - http://wiki.ihe.net/index.php/Cross-Community_Access"
//* #ihe-xdr "IHE XDR" "IHE Cross-Enterprise Document Reliable Exchange (XDR) - http://wiki.ihe.net/index.php/Cross-enterprise_Document_Reliable_Interchange"
//* #ihe-xds "IHE XDS" "IHE Cross-Enterprise Document Sharing (XDS) - http://wiki.ihe.net/index.php/Cross-Enterprise_Document_Sharing"
//* #ihe-iid "IHE IID" "IHE Invoke Image Display (IID) - http://wiki.ihe.net/index.php/Invoke_Image_Display"
//* #ihe-pdq "IHE PDQ" "IHE Patient Demographics Query (PDQ) - http://wiki.ihe.net/index.php/Patient_Demographics_Query"
//* #ihe-pix "IHE PIX" "IHE Patient Identity Feed (PIX) - http://wiki.ihe.net/index.php/Patient_Identity_Feed"
//* #ihe-mhd "IHE MHD" "IHE Mobile Healthcare (MHD) - http://wiki.ihe.net/index.php/Mobile_Healthcare"
* ^caseSensitive = true




CodeSystem: NdhEndpointTestingMethodCS
Title: "Ndh Endpoint Testing Method Code System"
Description: "Endpoint Testing Method"
* ^experimental = false
* ^caseSensitive = true
* #self-test "Self Test" "Self Test"
* #procter "Procter" "Procter"
* #attestation "Attestation" "Attestation"

CodeSystem: NdhEndpointEnvironmentCS
Title: "NDH Endpoint Environment Code System"
Description: "NDH Endpoint Environment"
* ^experimental = false
* ^caseSensitive = true
* #prod "Production" "Production environment and is expected to contain real data and should be protected appropriately"
* #staging "Staging" "Staging environment typically used while preparing for a release to production"
* #dev "Development" "Development environment used while building systems"
* #test "Test" "Test environment, it is not intended for production usage."
* #train "Training" "Training environment, it is not intended for production usage and typically contains data specifically prepared for training usage."



CodeSystem:  NdhOrgTypeCS
  Title: "Ndh Organization Type Code System"
  Description:  "Categories of organizations based on criteria in provider directories."
* ^experimental = false
* ^caseSensitive = true
* #fac "Facility" "A physical healthcare facility."
* #prvgrp "Provider Group" "A healthcare provider entity"
//* #payer "Payer" "A healthcare payer."
* #atyprv "Atypical Provider" "Providers that do not provide healthcare"
//* #bus "Non-Healthcare Business" "An organization that does not meet the definitions of a Healthcare or Atypical Provider, and is not a payer or healthcare facility"
//* #ntwk "Network" "A healthcare provider insurance network"
//* #gov "Government" "A government agency for social services"
//* #comm "Community" "A community based organization for social services"
//* #edu "Education" "An educational institution or organization"
//* #reli "Religious" "A religious organization for social services"


CodeSystem: NdhPractitionerRoleCS
Title: "NDH Practitioner Role Codes Code System"
Description: "A capability that an individual, group, or organization is acknowledged to have in a payer network."
* ^experimental = false
// These are Payer Roles from Gail
* #ap "Admitting Privileges" "Practitioner has admitting privileges at hospital (organization)"
* #apn "Advanced Practice Nursing Providers" "Advanced Practice Nursing Providers"
* #at "Athletic Trainer" "Athletic Trainer"
* #att "Attending Provider" "Attending Provider"
* #au "Audiologist" "Audiologist"
* #bh "Behavioral Health & Social Service Providers" "Behavioral Health & Social Service Providers"
* #ba "Board Certified Behavior Analyst" "Board Certified Behavior Analyst"
* #bt "Member Of" "Has a relationship of participation with.  This does NOT represent a member of an insurance plan, but other types of membership such as membership of physician in the AMA"    // Added 7/15/2020
* #cnw "Certified Nurse Midwife" "Certified Nurse Midwife"
* #crnp "Certified Registered Nurse Practitioner" "Certified Registered Nurse Practitioner"
* #ch "Chiropractor" "Chiropractor"
* #cs "Christian Science Practitioner" "Christian Science Practitioner"
* #co "Counselor" "Counselor"
* #dp "Dental Provider" "Dental Provider"
* #de "Dentist" "Dentist"
* #drr "Developmental, Rehabilitative and Restorative Service Providers" "Developmental, Rehabilitative and Restorative Service Providers"
* #dn "Dietary and Nutritional Service Provider" "Dietary and Nutritional Service Provider"
* #om "Doctor of Oriental Medicine" "Doctor of Oriental Medicine"
* #em "Emergency Medical Service Provider" "Emergency Medical Service Provider"
* #ho "Homeopath" "Homeopath"
* #lpn "Licensed Practical Nurse" "Licensed Practical Nurse"
* #ml "Medical Learner" "Medical Learner e.g., student, intern, resident, fellow, etc."
* #mt "Marriage/Family Therapist" "Marriage/Family Therapist"
* #ma "Massage Therapist" "Massage Therapist"
* #nh "Naprapath" "Naprapath"
* #na "Naturopath" "Naturopath"
* #nu "Nursing Service Related Providers" "Nursing Service Related Providers"
* #ot "Occupational Therapist" "Occupational Therapist"
* #op "Optician" "Optician"
* #oo "Optometrist" "Optometrist"
* #os "Other Service Provider" "Other Service Provider"
* #rx "Pharmacy Service Providers" "Pharmacy Service Providers"
* #pt "Physical Therapist" "Physical Therapist"
* #ph "Physician" "Physician"
* #pa "Physician Assistant" "Physician Assistant"
* #po "Podiatrist" "Podiatrist"
* #py "Psychologist" "Psychologist"
* #rn "Registered Nurse" "Registered Nurse"
* #rt "Respiratory Therapist" "Respiratory Therapist"
* #sw "Social Worker" "Social Worker"
* #sp "Speech Language Pathologist" "Speech Language Pathologist"
* #sh "Speech, Language and Hearing Service Providers" "Speech, Language and Hearing Service Providers"
* #te "Technologists, Technicians and Other Technical Service Providers" "Technologists, Technicians and Other Technical Service Providers"
* #doctor "Doctor" "Doctor"
* #nurse "Nurse" "Nurse"
* #pharmacist "Pharmacist" "Pharmacist"
* #researcher "Researcher" "Researcher"
* #teacher "Teacher" "Teacher"
* #ict "Information and Communication Technology" "Information and Communication Technology"
* ^caseSensitive = true



CodeSystem: NdhSecureExchangeArtifactsCS
Title: "NDH Secure Exchange Artifacts Code System"
Description: "NDH Secure Exchange Artifacts"
* ^experimental = false
* ^caseSensitive = true
* #x509-ssl-tls-certificates "X509 SSL/TLS certificates" "SSL/TLS certificates"
* #x509-mtls-certificate "X509 MTLS certificate" "MTLS certificate"
* #x509-identity-certificate "X509 identity certificate" "X509 identity certificate"
* #x509-signing-certificate "X509 signing certificate" "X509 signing certificate"
* #x509-encryption-certificate "X509 encryption certificate" "X509 encryption certificate"
//* #x-509-certificates "X.509 certificates" "X.509 certificates"
//* #open-pgp-certificates "OpenPGP certificates" "OpenPGP certificates"
//* #kerberos-certificates "Kerberos certificates" "Kerberos certificates"
//* #saml-certificates "SAML certificates" "SAML certificates"
//* #self-signed-certificates "Self-signed certificates" "Self-signed certificates"
//* #authorization-server-certificate "Authorization server certificate" "Authorization server certificate"
//* #token-endpoint-certificate "Token endpoint certificate" "Token endpoint certificate"
//* #jwks-endpoint-certificate "JWKS endpoint certificate" "JWKS endpoint certificate"
//* #userinfo-endpoint-certificate "Userinfo endpoint certificate" "Userinfo endpoint certificate"
//* #revocation-endpoint-certificate "Revocation endpoint certificate" "Revocation endpoint certificate"
//* #introspection-endpoint-certificate "Introspection endpoint certificate" "Introspection endpoint certificate"
//* #registration-endpoint-certificate "Registration endpoint certificate" "Registration endpoint certificate"
//* #management-endpoint-certificate "Management endpoint certificate" "Management endpoint certificate"


CodeSystem: NdhAssociatedServersTypeCS
Title: "NDH Associated Servers Type Code System"
Description: "NDH Associated Servers Type"
* ^experimental = false
//* #fhir "FHIR" "FHIR"
* #proxy-server "Proxy Server" "Proxy Server"
* #testing-proxy-server "Testing Proxy Server" "Testing Proxy Server"
//* #paticipant-gateway-server "Participant Gateway Server"   "Participant Gateway Server"
//* #service-prvider-server "Service Provider Server" "Service Provider Server"
* #indentity-provider-server "Identity Provider Server" "Identity Provider Server"
* #record-locator-service-server "Record Locator Service Server"  "Record Locator Service Server"
//* #consent-managment-service-server "Consent Management Service Server" "Consent Management Service Server" 
//* #audit-logging-server "Audit Logging Server"   "Audit Logging Server"
//* #payer-gateway-server "Payer Gateway Server" "Payer Gateway Server"
//* #data-requestor-server "Data Requestor Server"  "Data Requestor Server"
//* #data-provider-server "Data Provider Server" "Data Provider Server"
* #master-patient-index-server "Master Patient Index (MPI) Server" "Master Patient Index (MPI) Server"
* #authorization-authentication-server "Authorization/Authentication Server" "Authorization/Authentication Server"
//* #authorizartion-registration-server "Authorization/Registration Server" "Authorization/Registration Server"
//* #query-broker-server "Query Broker Server" "Query Broker Server"
//* #data-source-server "Data Source Server" "Data Source Server"
//* #hie-gateway-server "HIE Gateway Server"  "HIE Gateway Server"
//* #provider-directory-server "Provider Directory Server" "Provider Directory Server"
//* #patient-identity-matching-server "Patient Identity Matching Server" "Patient Identity Matching Server"
//* #query-health-service-server "Query Health Service Server" "Query Health Service Server"
//* #certificate-authority-server "Certificate Authority Server" "Certificate Authority Server"
//* #trust-anchor-bundle-server "Trust Anchor Bundle Server" "Trust Anchor Bundle Server"
//* #direct-service-server "Direct Service Server" "Direct Service Server"
* ^caseSensitive = true

CodeSystem: NdhTrustProfileCS
Title: "NDH Trust Profile Code System"
Description: "Trust Profile"
* ^experimental = false
* ^caseSensitive = true
* #udap "UDAP" "Unified Data Access Profiles"
* #smart "SMART" "Substitutable Medical Applications and Reusable Technologies"


CodeSystem: NdhTrustFrameworkTypeCS
Title: "NDH Trust FrameworkType Code System"
Description: "Trust Framework Type"
* ^experimental = false
* #DirectTrust "Direct Trust" "Direct Trust revolves around the secure and reliable exchange of health information, primarily through Direct Secure Messaging."
* #CareQuality "Carequality" "Carequality is a national-level framework that enables health information networks to connect and share patient data."
* #Commonwell "Commonwell" "CommonWell Health Alliance is a non-profit trade association dedicated to enabling nationwide health data interoperability."
* #TEFCA "TEFCA" "Trusted Exchange Framework and Common Agreement (TEFCA) It is a national framework designed to support the secure exchange of electronic health information across the United States"
* #PayerToPayer	"Payer to Payer Trust Network"	"Payer to Payer Trust Network"
* #Exchange	"Exchange Required by Federal Regulations"	"Exchange Required by Federal Regulations"
* #PCDH "Patient Centered Data Home" "Patient Centered Data Home"
* ^caseSensitive = true


CodeSystem: NdhVerificationStatusCS
Title: "NDH Resource Instance Verification Status Code System"
Description: "NDH Resource Instance Verification Status"
* ^experimental = false
* ^caseSensitive = true
* #complete "Complete" "Complete"
* #incomplete "Incomplete" "Incomplete"
* #not-required "Not Required" "Not Required"


CodeSystem: InsuranceBenefitType
Title: "Insurance Benefit Type Code System"
Description: "Categories of insurance benefits."
Id: insurance-benefit-type
* ^url = "http://terminology.hl7.org/CodeSystem/insurance-benefit-type"
* ^experimental = false
* ^caseSensitive = true
* #medical   "Medical"   "Medical insurance coverage."
* #dental   "Dental"   "Dental insurance coverage."
* #menthlth   "Mental Health"   "Mental health insurance coverage."
* #substanceabuse   "Substance Abuse"   "Substance abuse services insurance coverage."
* #vision   "Vision"   "Vision insurance coverage."
* #drug   "Drug"   "Prescription drug coverage."
* #stc   "Short Term Care"   "Short term care."
* #ltc   "Long Term Care"   "Long term care."
* #hospice   "Hospice"   "Hospice insurance coverage."
* #homehealth   "Home Health"   "Home health services insurance coverage."
* #dmepos   "DMEPOS"   "Durable Medical Equipment, Prosthetics/Orthotics and Supplies."
* #imagingadv   "Advanced Imaging (CT/PET Scans, MRIs)"   "Advances imaging techniques services (CT/PET Scans, MRIs) coverage."
* #rehab   "Rehabilitation"   "Rehabilitation."
* #pcpov   "Primary Care Visit to Treat an Injury or Illness"   "Benefit plan covers services rendered by a primary care physician during an office visit with the purpose to treat injury or illness, except for preventive care services."
* #specialistov   "Specialist Office Visit"   "Covered healthcare service rendered to a patient by a specialty provider."
* #mlpov   "Other Practitioner Office Visit (Nurse, Physician Assistant) - Mid Level Professional"   "Benefit plan covers covered health related services rendered by a practitioner other than MD or DO and referred to as other practitioner."
* #outpatient   "Outpatient Facility Fee (e.g., Ambulatory Surgery Center)"   "Benefit plan covers health related services rendered to patient at an outpatient facility, outside of a facility that requires a patient admission."
* #outpatstx   "Outpatient Surgery Physician/Surgical Services"   "Benefit plan covers surgical services rendered to patient outside of a facility admission, referred to as outpatient."
* #hospserv   "Hospice Services"   "Benefit plan covers hospice services."
* #routinedental   "Routine Dental Services (Adult)"   "Benefit plan covers routine dental services."
* #infertilitytx   "Infertility Treatment"   "Benefit plan covers eligible infertility treatment services."
* #ltnhc   "Long-Term/Custodial Nursing Home Care"   "Long-Term/Custodial Nursing Home Care."
* #privatenurse   "Private-Duty Nursing"   "Private-Duty Nursing."
* #routineeye   "Routine Eye Exam (Adult)"   "Routine Eye Exam (Adult)."
* #ucservice   "Urgent Care Centers or Facilities"   "Urgent Care Centers or Facilities."
* #erservice   "Emergency Room Services"   "Emergency Room Services."
* #ambulance   "Emergency Room Services"   "Emergency Room Services."
* #inpatienthospital   "Inpatient Hospital Services (e.g., Hospital Stay)"   "A person who is hospitalized for at least one night to receive treatment or participate in a study."
* #inpatientprovider   "Inpatient Physician and Surgical Services"   "A healthcare provider who is delivering healthcare services in a hospital environment."
* #bariatricsurg   "Bariatric Surgery"   "Bariatric surgery service Skilled nursing service (qualifier value)."
* #cosmeticsurg   "Cosmetic Surgery"   "Cosmetic surgery service Skilled nursing service (qualifier value)."
* #skillednursing   "Skilled Nursing Facility"   "Skilled nursing service (qualifier value)."
* #ppnatalcare   "Prenatal and Postnatal Care"   "Prenatal and Postnatal services."
* #maternitycare   "Delivery and All Inpatient Services for Maternity Care"   "All maternity care services."
* #menthlthoutp   "Mental/Behavioral Health Outpatient Services"   "Mental health service delivered in an outpatient setting."
* #menthlthinp   "Mental/Behavioral Health Inpatient Services"   "Mental health service delivered in an hospital or inpatient facility setting."
* #sadoutp   "Substance Abuse Disorder Outpatient Services"   "Substance abuse related services delivered in a outpatient setting."
* #sadinp   "Substance Abuse Disorder Inpatient Services"   "Substance abuse related services delivered in a inpatient setting."
* #drggenric   "Generic Drugs"   "Generic drugs eligible benefits."
* #drgbrand   "Preferred Brand Drugs"   "Preferred brand drugs eligible benefits."
* #drgnonpreferred   "Non-Preferred Brand Drugs"   "Non-Preferred drugs brands eligible benefits."
* #drgspecialty   "Specialty Drugs"   "Benefit plan covers specialty drugs."
* #rehaboutp   "Outpatient Rehabilitation Services"   "Benefit plan covers outpatient rehabilitation services."
* #servicehablitation   "Habilitation Services"   "Habilitation Services."
* #chiro   "Chiropractic Care"   "Benefit plan covers chiropractor eligible benefits."
* #dme   "Durable Medical Equipment"   "Benefit plan covers Durable medical equipment eligible benefits."
* #hearingaids   "Hearing Aids"   "Benefit plan covers hearing aids."
* #imgctpetmri   "Imaging (CT/PET Scans, MRIs)"   "Benefit plan covers advances imaging techniques services (CT/PET Scans, MRIs) eligible services."
* #prev   "Preventive Care/Screening/Immunization"   "Routine healthcare services to prevent health related problems eligible benefits."
* #rtnpod   "Routine Foot Care"   "Routine Foot Care."
* #acupuncture   "Acupuncture"   "Benefit plan covers acupuncture treatment."
* #weightloss   "Weight Loss Programs"   "Benefit plan covers weight loss services eligible benefits."
* #rtneyechld   "Routine Eye Exam for Children"   "Routine eye exam for children eligible benefits."
* #glasseschld   "Eye Glasses for Children"   "Eye glasses children eligible benefits."
* #rtndntlchld   "Dental Check-Up for Children"   "Dental Check-Up for Children."
* #speachthpy   "Rehabilitative Speech Therapy"   "Benefit plan covers rehabilitative speech therapy eligible benefits."
* #rehaboccandpt   "Rehabilitative Occupational and Rehabilitative Physical Therapy"   "Benefit plan covers rehabilitative occupational and rehabilitative physical eligible benefits."
* #wellbaby   "Well Baby Visits and Care"   "Regularly scheduled, preventive care services, including immunizations, provided to children up to an age as specified by a health insurance company or mandated by a government agency."
* #laboutp   "Laboratory Outpatient and Professional Services"   "Benefit plan covers laboratory testing and related professional services received as outpatient."
* #imagingdx   "X-rays and Diagnostic Imaging"   "Benefit plan covers diagnostic imaging procedures that produce images of internal structures of the human body and uses radiation to diagnose and treat diseases."
* #dntlbaschld   "Basic Dental Care - Child"   "Benefit plan covers diagnostic basic dental care."
* #orthochld   "Orthodontia - Child"   "Benefit plan covers orthodontia for children."
* #dntlmajchld   "Major Dental Care - Child"   "Benefit plan covers major dental care for children."
* #dntlbasadlt   "Basic Dental Care - Adult"   "Benefit plan covers basic dental care for adults."
* #orthodadlt   "Orthodontia - Adult"   "Benefits plan covers services provided that are required for orthodontic purposes for an adult."
* #dntlmajadlt   "Major Dental Care - Adult"   "Benefit plan covers major dental care for adult."
* #abortion   "Abortion for Which Public Funding is Prohibited"   "Benefit plan covers services for abortion for which public funding is prohibited."
* #transplant   "Transplant"   "Benefit plan covers transplant related services."
* #accdntl   "Accidental Dental"   "Benefit plan covers dental care services related to an accident."
* #dialysis   "Dialysis"   "The plan benefit covers services used to treat end stage renal disease."
* #testallrgy   "Allergy Testing"   "The plan benefits covers services for diagnostic procedures ordered or performed to evaluate whether a sensitivity to a substance is present. This test may be associated with specimen collection and/or substance administration challenge activities."
* #chemotherapy   "Chemotherapy"   "The plan benefits cover services the use of drugs and approved chemicals to treat disease."
* #radiation   "Radiation"   "The plan benefits cover services the use radiation to treat disease."
* #edudiab   "Diabetes Education"   "The plan benefits cover services related to instruction or training that encourages behaviors most likely to optimize health potentials through information about diabetes; facilitates the prevention of diabetes."
* #prosthetic   "Prosthetic Devices"   "Plan benefit covers services related to prosthesis devices."
* #infusiontx   "Infusion Therapy"   "Plan benefit covers services related to infusion therapy."
* #tmjtx   "Treatment for Temporomandibular Joint Disorders"   "Plan benefit covers services related to treatment of Temporomandibular Joint disorder."
* #nutrition   "Nutritional Counseling"   "Nutritional Counseling."
* #reconsurg   "Reconstructive Surgery"   "Plan benefit covers services related to reconstructive surgery."
* #days   "Days"   "Measure of service covered by the plan benefit expressed in a definite number of days."
* #visit   "Visits"   "Measure of service covered by the plan benefit expressed in a definite number of visits."
* #procedure   "Procedures"   "Measure of service covered by the plan benefit expressed in a set of actions covered."
* #admission   "Admissions"   "Measure of services covered by the benefit plan expressed in relation to patient's acceptance for medical and nursing care in a hospital or other health care institution."
* #visithrs   "Hours per visit"   "Measure expresses how many hours per visit are covered by the insurance benefit plan."
* #weekhrs   "Hours per week"   "Measure expresses how many hours per week are covered by the insurance benefit plan."
* #mthhrs   "Hours per month"   "Measure expressed how many hours per month are covered by the insurance benefit plan."
* #yrhrs   "Hours per year"   "Measure expreses how many hours per year are covered by the insurance benfit plan."
* #daysperwk   "Days per week"   "Measure of service covered by the plan benefit expressed in a how many days are covered in a week."
* #dayspermth   "Days per month"   "Measure of service covered by the plan benefit expressed in a how many days are covered in a month."
* #daysperyr   "Days per year"   "Measure of service covered by the plan benefit expressed in a how many days are covered in a year."
* #mthsperyr   "Months per year"   "Measure of service covered by the plan benefit expressed in a how many month are covered in a year."
* #visitsperday   "Visits per day"   "Measure of service covered by the plan benefit expressed in a definite number of visits covered per day."
* #visitsperweek   "Visits per week"   "Measure of service covered by the plan benefit expressed in a definite number of visits covered per week."
* #visitspermth   "Visits per month"   "Measure of service covered by the plan benefit expressed in a definite number of visits covered per month."
* #visitsperyr   "Visits per year"   "Measure of service covered by the plan benefit expressed in a definite number of visits covered per year."
* #lifetimevisits   "Lifetime visits"   "Measure of service covered by the plan benefit expressed in a definite number of visits covered through lifetime."
* #txperweek   "Treatments per week"   "Measure of service covered by the plan benefit expressed in a definite number of treatment actions covered in a week."
* #txpermnth   "Treatments per month"   "Measure of service covered by the plan benefit expressed in a definite number of treatment actions covered in a month."
* #txlifetime   "Lifetime treatments"   "Measure of service covered by the plan benefit expressed in a definite number of treatment actions covered in a lifetime."
* #admitslifetime   "Lifetime admissions"   "Measure of service covered by the plan benefit expressed in a definite number admission actions covered through lifetime."
* #procperwk   "Procedures per week"   "Measure of service covered by the plan benefit expressed in a definite number procedure covered per week."
* #procpermnth   "Procedures per month"   "Measure of service covered by the plan benefit expressed in a definite number procedure covered per month."
* #procperyr   "Procedures per year"   "Measure of service covered by the plan benefit expressed in a definite number procedure covered per year."
* #proclifetime   "Lifetime procedures"   "Measure of service covered by the plan benefit expressed in a definite number procedure covered per lifetime."
* #daysperadmission   "Days per admission"   "Measure of service covered by the plan benefit expressed in a definite number of days covered for each individual admission."
* #procperepi   "Procedures per episode"   "Measure of service covered by the plan benefit expressed in a definite number of procedures covered for each individual treatment episode."
* #cat   "Catastrophic"   "'Catastrophic' health insurance plans have low monthly premiums and very high deductibles. They may cover worst-case scenarios, like getting seriously sick or injured. Patient pays most routine medical expenses."
* #bronze   "Bronze"   "'Bronze' type plan defines the estimated split costs of the plan, where patient is responsible for 40% of their healthcare cost while 60% is covered by the plan."
* #bronzeexp   "Expanded Bronze"   "The 'extended bronze' plan is an addition to the bronze metal level which establishes the de minimis variation range for the actuarial value (AV) level of coverage to allow variation in the AV to -4/+2 percentage points."
* #silver   "Silver"   "'Silver' type plan defines the estimated split costs of the plan, where patient is responsible for 30% of their healthcare cost while 70% is covered by the plan."
* #gold   "Gold"   "'Gold' type plan defines the estimated split costs of the plan, where patient is responsible for 20% of their healthcare cost while 80% is covered by the plan."
* #platinum   "Platinum"   "'Platinum' type plan defines the estimated split costs of the plan, where patient is responsible for 10% of their healthcare cost while 90% is covered by the plan."
* #lowded   "Low deductible"   "A health insurance plan with higher premiums and lower out of pocket cost than a traditional health plan."
* #highded   "High deductible"   "A health insurance plan with lower premiums and higher out of pocket cost than a traditional health plan."



