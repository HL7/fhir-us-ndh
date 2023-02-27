CodeSystem: AcceptingPatientsCS
Title: "Accepting Patients Codes Code System"
Description: "Codes to identify if the practice is accepting new patients"
* ^experimental = false
* #nopt	"Not Accepting" "Not accepting patients"
* #newpt "Accepting" "Accepting patients"
* #existptonly "Accepting existing patients" "Accepting existing patients"
* #existptfam "Accepting existing patients and their families" "Accepting existing patients and members of their families"
* ^caseSensitive = true

CodeSystem: AccessibilityCS
Title: "Accessibility Code System"
Description: "General categories of accommodations available."
* ^experimental = false
* #cultcomp	"Cultural competence"	"Provides services that meet the social, cultural, and linguistic needs of persons."
* #handiaccess	"handicap accessible"	"Provides access to persons with disabilities."
* #adacomp	"ADA compliant"	"Provides access which complies with the Americans with Disabilities Act and/or amendments."
* #pubtrans	"public transit options"	"Provides access using public transportation modes."
* #anssrvc	"answering service"	"Provides capability to communicate when intended recipient is not immediately available."
* #cognitive	"cognitive"	"Provides services for cognitively impaired persons."
* #mobility	"mobility"	"Provides services for mobility impaired persons."
* ^caseSensitive = true

CodeSystem: CredentialStatusCS
Title: "Credential Status Code System"
Description: "This code system contains codes for indicating the status of a credential, such as an identifier or qualification."
* ^experimental = false
* #active	"active"	"The credential may be considered valid for use."
* #inactive "inactive"	"The credential may not be considered valid for use."
* #issued-in-error	"issued in error"	"The credential was mistakenly assigned and should not be considered valid for use."
* #revoked	"revoked"	"The credential was revoked by the issuing organization and should not be considered valid for use."
* #pending	"pending"	"The credential has not been officially assigned. It may or may not be considered valid for use."
* #unknown	"unknown"	"The status of this credential is unknown. It may or may not be considered valid for use."
* ^caseSensitive = true

CodeSystem: ConsentScopeNdhCS
Title: "NDH ConsentScopeCodes Code System"
Description:  "This code system includes the Consent scope codes for National Healthcare Directory"
* ^experimental = false
* #directory-privacy "Directory Privacy Consent" "Global Use Agreement to access, use or disclose (share) information."
* ^caseSensitive = true

CodeSystem: ConsentPolicyRulesCS
Title: "National Healthcare Directory ConsentPolicyRules Code System"
Description:  "This code system includes Policy Rule codes."
* ^experimental = false
* #ndh-restriction "NDH Restriction" "NDH Agreement to access, use or disclose(share) information"
* #distributed-directory-restriction "Distributed Directory Restriction" "Distributed Directory Agreement to collect, access, use or disclose (share) information"
* ^caseSensitive = true

CodeSystem: ConsentCategoryNdhCS
Title: "National Healthcare Directory Consent Category Code System"
Description:  "This code system includes Directory Consent Category codes."
* ^experimental = false
* #DRC "Directory Restriction" "Directory Global Use Agreement to access, use or disclose (share) information"
* ^caseSensitive = true



CodeSystem: DigitalcertificateUseCS
Title: "Digitalcertificate Use Code System"
Description: "This code System includes the choice of use digital certification"
* ^experimental = false
* #signing "Signing" "A certificate issued for the purpose of digitally signing information to confirm the author and guarantee that the content has not been altered or corrupted since it was signed by use of a cryptographic hash."
* #encrypt "Encryption" "A certificate containing a public key that can encrypt or decrypt electronic messages, files, documents, or data transmissions, or establish or exchange a session key for these same purposes."
* #auth "Authentication" "A certificate which can be used to obtain assurance of the accuracy of the claimed identity of an entity."
* ^caseSensitive = true

CodeSystem: DeliveryMethodCS
Title: "Delivery Methods Code System"
Description: "Categories of healthcare service delivery methods."
* ^experimental = false
* #virtual	"Virtual" "Delivery not requiring provider and patient to be physically co-located, such as tele-medicine"
* #physical	"Physical" "Traditional delivery requiring provider and patient to be physically co-located."
* ^caseSensitive = true

// FHIR-39478 to remove EndpointTypeCS +++++
CodeSystem: EndpointTypeCS
Title: "Endpoint Type Code System"
Description: "Endpoint Type"
* ^experimental = false
* #FHIR	"FHIR Server"
* #OpEndpoint "Operation Endpoint"
* #CDS "CDS Hooks"
* ^caseSensitive = true

// 
CodeSystem:  EndpointConnectionTypeCS
  Title: "Endpoint Connection Types (additional) Code System"
  Description:  "Extension codes for http://terminology.hl7.org/CodeSystem/endpoint-connection-type"
* ^experimental = false
* #hl7-fhir-opn "HL7 FHIR Operation" "Interact with a FHIR server interface using FHIR's RESTful interface using an operation other than messaging. For details on its version/capabilities you should connect the value in Endpoint.address and retrieve the FHIR CapabilityStatement."
* #rest-non-fhir "REST (not FHIR)" "Interact with a server using HTTP/REST but not FHIR.  Should be used for web portals."
* #ihe-xcpd "IHE XCPD" "IHE Cross Community Patient Discovery Profile (XCPD) - http://wiki.ihe.net/index.php/Cross-Community_Patient_Discovery"
* #ihe-xca "IHE XCA" "IHE Cross Community Access Profile (XCA) - http://wiki.ihe.net/index.php/Cross-Community_Access"
* #ihe-xdr "IHE XDR" "IHE Cross-Enterprise Document Reliable Exchange (XDR) - http://wiki.ihe.net/index.php/Cross-enterprise_Document_Reliable_Interchange"
* #ihe-xds "IHE XDS" "IHE Cross-Enterprise Document Sharing (XDS) - http://wiki.ihe.net/index.php/Cross-Enterprise_Document_Sharing"
* #ihe-iid "IHE IID" "IHE Invoke Image Display (IID) - http://wiki.ihe.net/index.php/Invoke_Image_Display"
* #XCPD-InitGateway-PatientDiscovery-AsyncResponse "XCPD-InitGateway-PatientDiscovery-AsyncResponse" "XCPD-InitGateway-PatientDiscovery-AsyncResponse"
* #XCPD-RespGateway-PatientDiscovery "XCPD-RespGateway-PatientDiscovery" "XCPD-RespGateway-PatientDiscovery"
* #XCPD-RespGateway-PatientDiscovery-Async "XCPD-RespGateway-PatientDiscovery-Async" "XCPD-RespGateway-PatientDiscovery-Async"
* #XCA-InitGateway-Query "XCA-InitGateway-Query" "XCA-InitGateway-Query"
* #XCA-InitGateway-Query-Async "XCA-InitGateway-Query-Async" "XCA-InitGateway-Query-Async"
* #XCA-InitGateway-Query-AsyncResponse "XCA-InitGateway-Query-AsyncResponse" "XCA-InitGateway-Query-AsyncResponse"
* #XCA-InitGateway-Retrieve "XCA-InitGateway-Retrieve" "XCA-InitGateway-Retrieve"
* #XCA-InitGateway-Retrieve-Async "XCA-InitGateway-Retrieve-Async" "XCA-InitGateway-Retrieve-Async"
* #XCA-InitGateway-Retrieve-AsyncResponse "XCA-InitGateway-Retrieve-AsyncResponse" "XCA-InitGateway-Retrieve-AsyncResponse"
* #XCA-RespGateway-Query "XCA-RespGateway-Query" "XCA-RespGateway-Query"
* #XCA-RespGateway-Retrieve "XCA-RespGateway-Retrieve" "XCA-RespGateway-Retrieve"
* #XCA-RespGateway-Query-Async "XCA-RespGateway-Query-Async" "XCA-RespGateway-Query-Async"
* #XCA-RespGateway-Retrieve-Async "XCA-RespGateway-Retrieve-Async" "XCA-RespGateway-Retrieve-Async"
* #PDQ-Supplier-Query "PDQ-Supplier-Query" "PDQ-Supplier-Query"
* #XDS-Registry-Query "XDS-Registry-Query" "XDS-Registry-Query"
* #XDS-Registry-Query-Async "XDS-Registry-Query-Async" "XDS-Registry-Query-Async"
* #XDS-Repository-Retrieve "XDS-Repository-Retrieve" "XDS-Repository-Retrieve"
* #XDS-Repository-Retrieve-Async "XDS-Repository-Retrieve-Async" "XDS-Repository-Retrieve-Async"
* #XDS-OnDemandSource-Retrieve "XDS-OnDemandSource-Retrieve" "XDS-OnDemandSource-Retrieve"
* #XDS-OnDemandSource-Retrieve-Async "XDS-OnDemandSource-Retrieve-Async" "XDS-OnDemandSource-Retrieve-Async"
* #XDS-Consumer-Query-AsyncResponse "XDS-Consumer-Query-AsyncResponse" "XDS-Consumer-Query-AsyncResponse"
* #XDS-Consumer-Retrieve-AsyncResponse "XDS-Consumer-Retrieve-AsyncResponse" "XDS-Consumer-Retrieve-AsyncResponse"
* ^caseSensitive = true

//since our Ig fhir base is 4.0.1, http://hl7.org/fhir/FHIR-version will not contain the version beyond 4.0.1
//Therefore we have to define this value set to indicate the endpont beyond 4.0.1
CodeSystem: EndpointConnectionTypeVersionCS
Title: "Endpoint Connection Type Version Code System"
Description: "Endpoint Connection Type Version"
* ^experimental = false
* #4.3.0 "4.3.0" "FHIR Release 4B"
* ^caseSensitive = true

CodeSystem: EndpointFhirMimeTypeCS
Title: "Endpoint FHIR MimeType Code System"
Description: "Endpoint FHIR MimeType"
* ^experimental = false
* ^caseSensitive = true
* #application/fhir+json "fhr+json"
* #application/fhir+xml "fhir+xml"
* #application/fhir+turtle "fhir+turtle"

CodeSystem: EndpointCommonMimeTypeCS
Title: "Endpoint Common MimeType Code System"
Description: "Endpoint Common MimeType"
* ^experimental = false
* ^caseSensitive = true
* #audio/aac  ".aac"  "AAC audio"
* #application/x-abiword  ".abw"  "AbiWord document"
* #application/x-freearc  ".arc"  "Archive document (multiple files embedded)"
* #image/avif  ".avif"  "AVIF image"
* #video/x-msvideo  ".avi"  "AVI: Audio Video Interleave"
* #application/vnd.amazon.ebook  ".azw"  "Amazon Kindle eBook format"
* #application/octet-stream  ".bin"  "Any kind of binary data"
* #image/bmp  ".bmp"  "Windows OS/2 Bitmap Graphics"
* #application/x-bzip  ".bz"  "BZip archive"
* #application/x-bzip2  ".bz2"  "BZip2 archive"
* #application/x-cdf  ".cda"  "CD audio"
* #application/x-csh  ".csh"  "C-Shell script"
* #text/css  ".css"  "Cascading Style Sheets (CSS)"
* #text/csv  ".csv"  "Comma-separated values (CSV)"
* #application/msword  ".doc"  "Microsoft Word"
* #application/vnd.openxmlformats-officedocument.wordprocessingml.document  ".docx"  "Microsoft Word (OpenXML)"
* #application/vnd.ms-fontobject  ".eot"  "MS Embedded OpenType fonts"
* #application/epub+zip  ".epub"  "Electronic publication (EPUB)"
* #application/gzip  ".gz"  "GZip Compressed Archive"
* #image/gif  ".gif"  "Graphics Interchange Format (GIF)"
* #text/html  ".htm, .html"  "HyperText Markup Language (HTML)"
* #image/vnd.microsoft.icon  ".ico"  "Icon format"
* #text/calendar  ".ics"  "iCalendar format"
* #application/java-archive  ".jar"  "Java Archive (JAR)"
* #image/jpeg  ".jpeg, .jpg"  "JPEG images"
* #text/javascript  ".js, .mjs"  "JavaScript"
* #application/json  ".json"  "JSON format"
* #application/ld+json  ".jsonld"  "JSON-LD format"
* #audio/midi  ".mid"  "Musical Instrument Digital Interface (MIDI)"
* #audio/x-midi  ".midi"  "Musical Instrument Digital Interface (MIDI)"
* #audio/mpeg  ".mp3"  "MP3 audio"
* #video/mp4  ".mp4"  "MP4 video"
* #video/mpeg  ".mpeg"  "MPEG Video"
* #application/vnd.apple.installer+xml  ".mpkg"  "Apple Installer Package"
* #application/vnd.oasis.opendocument.presentation  ".odp"  "OpenDocument presentation document"
* #application/vnd.oasis.opendocument.spreadsheet  ".ods"  "OpenDocument spreadsheet document"
* #application/vnd.oasis.opendocument.text  ".odt"  "OpenDocument text document"
* #audio/ogg  ".oga"  "OGG audio"
* #video/ogg  ".ogv"  "OGG video"
* #application/ogg  ".ogx"  "OGG"
* #audio/opus  ".opus"  "Opus audio"
* #font/otf  ".otf"  "OpenType font"
* #image/png  ".png"  "Portable Network Graphics"
* #application/pdf  ".pdf"  "Adobe Portable Document Format (PDF)"
* #application/x-httpd-php  ".php"  "Hypertext Preprocessor (Personal Home Page)"
* #application/vnd.ms-powerpoint  ".ppt"  "Microsoft PowerPoint"
* #application/vnd.openxmlformats-officedocument.presentationml.presentation  ".pptx"  "Microsoft PowerPoint (OpenXML)"
* #application/vnd.rar  ".rar"  "RAR archive"
* #application/rtf  ".rtf"  "Rich Text Format (RTF)"
* #application/x-sh  ".sh"  "Bourne shell script"
* #image/svg+xml  ".svg"  "Scalable Vector Graphics (SVG)"
* #application/x-tar  ".tar"  "Tape Archive (TAR)"
* #image/tiff  ".tif, .tiff"  "Tagged Image File Format (TIFF)"
* #video/mp2t  ".ts"  "MPEG transport stream"
* #font/ttf  ".ttf"  "TrueType Font"
* #text/plain  ".txt"  "Text, (generally ASCII or ISO 8859-n)"
* #application/vnd.visio  ".vsd"  "Microsoft Visio"
* #audio/wav  ".wav"  "Waveform Audio Format"
* #audio/webm  ".weba"  "WEBM audio"
* #video/webm  ".webm"  "WEBM video"
* #image/webp  ".webp"  "WEBP image"
* #font/woff  ".woff"  "Web Open Font Format (WOFF)"
* #font/woff2  ".woff2"  "Web Open Font Format (WOFF)"
* #application/xhtml+xml  ".xhtml"  "XHTML"
* #application/vnd.ms-excel  ".xls"  "Microsoft Excel"
* #application/vnd.openxmlformats-officedocument.spreadsheetml.sheet  ".xlsx"  "Microsoft Excel (OpenXML)"
* #application/xml  ".xml"  "XML"
* #text/xml  ".xml"  "XML"
* #application/atom+xml  ".xml"  "XML"
* #application/vnd.mozilla.xul+xml  ".xul"  "XUL"
* #application/zip  ".zip"  "ZIP archive"
* #video/3gpp  ".3gp"  "3GPP audio/video container"
* #audio/3gpp  ".3gp"  "3GPP audio/video container if it does not contain video"
* #video/3gpp2  ".3g2"  "3GPP2 audio/video container"
* #audio/3gpp2  ".3g2"  "3GPP2 audio/video container  if it doesn't contain video"
* #application/x-7z-compressed  ".7z"  "7-zip archive"

 

CodeSystem:  EndpointPayloadTypeCS
  Title: "Endpoint Payload Types Code System"
  Description:  "Endpoint Payload Types are constrained to NA (Not Applicable) as part of this IG"
* ^experimental = false
* #NA "Not Applicable" "Not Applicable"
* ^caseSensitive = true
 
CodeSystem: HealthcareServiceCategoryCS
 Title: "Healthcare Service Category Code System"
 Description: "Broad categories of healthcare services being performed or delivered"
* ^experimental = false
* #behav "Behavioral Health" "Services related to the promotion of mental health, resilience and wellbeing; the treatment of mental and substance use disorders; and the support of those who experience and/or are in recovery from these conditions, along with their families and communities."
* #dent "Dental" "Services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the mouth."
* #dme "DME/Medical Supplies" "Health care consumables or equipments supplied to patients"
* #emerg "Emergency care" "Health care services rendered within a designated emergency care facility, for point-in-time evaluation and/or treatment any medical condition such that a prudent layperson possessing an average knowledge of medicine and health, believes that immediate unscheduled medical care is required."
* #group "Medical Group" "Health care services rendered by a group of people, e.g. a group of Physicians."
* #home "Home Health"	"Health care services delivered to patients within their residence rather than a clinical setting; usually provided by nurses, home health aides, and other professionals on a regularly scheduled visit."
* #hosp "Hospital" "Health care services rendered within a hospital or other inpatient setting providng patient treatment with specialzed medical and nursing staff and medical equipment."
* #lab "Laboratory" "Pathology and laboratory testing on clinical specimenst to obtain informaion about the health of a paeint to aid in diagnosis, treatment and prevention of disease."
* #other "Other" "Other"
* #outpat "Clinic or Outpatient Facility" "Health care services rendered in an outpatient facility, e.g. medical procedures, surgeries, etc."
* #prov "Medical Provider"  "Health care services rendered by a person, e.g. Physician."
* #pharm "Pharmacy" "Services related to the storage, compounding, dispensing and sale of drugs."
* #trans "Transportation" "Services which transport patients to or from a medical facility, e.g., ambulance."
* #urg "Urgent Care" "Unscheduled health care services which provide for point-in-time evaluation or treatment of a non-life-threatening medical condition."
* #vis "Vision" "Services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the eyes."
* ^caseSensitive = true


CodeSystem: IgTypeCS
Title: "IG Type Code System"
Description: "IG Type"
* ^experimental = false
* #FHIR	"FHIR"
* #direct "Direct"
* ^caseSensitive = true


CodeSystem: InsuranceProductTypeCS
Title: "Insurance Product Type Code System"
Description:  "A distinct package of health insurance coverage benefits that are offered using a particular product network type."
* ^experimental = false
* #commppo "Commercial PPO"  "Health insurance provided through a Preferred Provider Organization (PPO)."
* #commhdhp "Commercial HDHP" "Health insurance provided through a High Deductible Health Plan (HDHP)."
* #commpos "Commercial POS" "Health insurance provided through a Point-of-Service (POS) Plan."
* #commhmo "Commercial HMO" "Health insurance provided through a Health Maintenance Organization (HMO)."
* #commepo "Commercial EPO" "Health insurance provided through a Exclusive Provider Organization(EPO)."
* #medi "Medicaid" "Health insurance provided to eligible adults and children under the Federal Medicaid program"
* #medihmo "Medicaid HMO" "Health insurance provided to eligible adults and children under the Federal Medicaid program through a Health Maintenance Organization (HMO)."
* #mediadv "Medicare Advantage" "Health insurance provided by a private company that contracts with Medicare to provide all Medicare Part A and Part B benefits."
* #mediadvhmo "Medicare Advantage HMO" "Health insurance offered by a private company that contracts with Medicare to provide all Medicare Part A and Part B benefits through a Health Maintenance Organization (HMO)."
* #media "Medicare Part A" "Health insurance provided under the Federal Medicare program covering inpatient hospital stays, care in a skilled nursing facility, hospice care, and some home health care."
* #medib "Medicare Part B" "Health insurance provided under the Federal Medicfare program covering certain doctors' services, outpatient care, medical supplies, and preventive services."
* #medid "Medicare Part D" "Health insurance provided under the Federal Medicare program covering prescription drugs."
* #mediab "Medicare A/B" "Health insurance provided under the Federal Medicare program covering inpatient hospital stays, care in a skilled nursing facility, hospice care, some home health care, certain doctors' services, outpatient care, medical supplies, and preventive services."
* #qhp "Qualified Health Plan" "Health insurance provided through and certified by the Health Insurance Marketplace that provides essential health benefits (EHBs), follows established limits on cost sharing, and meets other requirements outlined within the application process."
* #ihs "Indian Health Service" "Health care program provided to United States American Indians and Alaska Natives."
* #fep "Federal Employee Program" "Health insurance provided to employees of the Federal government."
* #tri "TRICARE" "Health care program provided to uniformed service members, retirees, and their families around the world."
* #va "Veterans Affairs Plan"  "Health care program provided to eligible veterans."
* #dent "Dental Plan" "Health insurance provided to cover services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the oral cavity."
* #denthmo "Dental HMO" "Health insurance provided to cover services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the oral cavity provided through a Health Maintenance Organization (HMO)."
* #vis "Vision Plan" "Health insurance provided to cover services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the eyes."
* #vishmo "Vision HMO" "Health insurance provided to cover services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the eyes provided through a Health Maintenance Organization (HMO)."
* ^caseSensitive = true

CodeSystem: InsurancePlanTypeCS
Title: "Insurance Plan Type Code System"
Description:  "Categories of cost-sharing used by plans"
* ^experimental = false
* #platinum "Platinum-QHP" "Plan with highest monthly premium and lowest costs when you need care	A Qualified Health Plan with the highest monthly premiums and smallest out-of-pocket costs for the member in comparison to other metal-category plans"
* #gold "Gold-QHP" "Plan with high monthly premium and low costs when you need care	A Qualified Health Plan with the higher monthly premiums and smaller out-of-pocket costs for the member in comparison to other metal-category plans"
* #silver "Silver-QHP" "Plan with moderate monthly premium and moderate costs when you need care	A Qualified Health Plan with the lower monthly premiums and larger out-of-pocket costs for the member in comparison to other metal-category plans"
* #bronze "Bronze-QHP" "Plan with lowest monthly premium and highest costs when you need care	A Qualified Health Plan with the lowest monthly premiums and largest out-of-pocket costs for the member in comparison to other metal-category plans"
* #catastrophic "Catastrophic-QHP" "A plan with low monthly premiums and very high deductibles and are available only to those under 30 or with certain special exemptions."
* #lowdeductible "Low Deductible" "A plan that requires the insured to pay out of pocket a smaller proportion of incurred health care costs than a traditional insurance plan."
* #highdeductible "High Deductible" "A plan that requires the insured to pay out of pocket a larger proportion of incurred health care costs than a traditional insurance plan."
* #catastrophicplan "Catastrophic Plan" "A plan that requires the insured to pay out of pocket a much larger proportion of incurred health care costs than a traditional insurance plan."
* ^caseSensitive = true


CodeSystem:  LanguageProficiencyCS
Title: "Language Proficiency Code System"
Description: "Codes for documenting spoken language proficiency based on the Interagency Language Roundtable scale of abilities to communicate in a language."
* ^experimental = false
* #00	"No proficiency"	"Unable to function in the spoken language."
//* #06	"Memorized proficiency"	"Able to satisfy immediate needs using rehearsed utterances. Shows little real autonomy of expression, flexibility or spontaneity."
* #10	"Elementary proficiency"	"Able to satisfy minimum courtesy requirements and maintain very simple face-to-face conversations on familiar topics. A native speaker must often use slowed speech, repetition, paraphrase, or a combination of these to be understood by this individual."
//* #16	"Elementary proficiency, plus"	"Can initiate and maintain predictable face-to-face conversations and satisfy limited social demands."
* #20	"Limited working proficiency"	"Able to satisfy routine social demands and limited work requirements."
//* #26	"Limited working proficiency, plus"	"Able to satisfy most work requirements with language usage that is often, but not always, acceptable and effective."
* #30	"General professional proficiency"	"Able to speak the language with sufficient structural accuracy and vocabulary to participate effectively in most formal and informal conversations in practical, social and professional topics."
//* #36	"General professional proficiency, plus"	"Is often able to use the language to satisfy professional needs in a wide range of sophisticated and demanding tasks."
* #40	"Advanced professional proficiency"	"Able to use the language fluently and accurately on all levels normally pertinent to professional needs."
//* #46	"Advanced professional proficiency, plus"	"Speaking proficiency is regularly superior in all respects, usually equivalent to that of a well educated, highly articulate native speaker."
* #50	"Functional native proficiency"	"Speaking proficiency is functionally equivalent to that of a highly articulate well-educated native speaker and reflects the cultural standards of the country where the language is natively spoken."
* ^caseSensitive = true


CodeSystem:  OrgTypeCS
  Title: "Organization Type Code System"
  Description:  "Categories of organizations based on criteria in provider directories."
* ^experimental = false
* #fac "Facility" "A physical healthcare facility."
* #prvgrp "Provider Group" "A healthcare provider entity"
* #payer "Payer" "A healthcare payer."
* #atyprv "Atypical Provider" "Providers that do not provide healthcare"
* #bus "Non-Healthcare Business" "An organization that does not meet the definitions of a Healthcare or Atypical Provider, and is not a payer or healthcare facility"
* #ntwk "Network" "A healthcare provider insurance network"
* ^caseSensitive = true


CodeSystem: OrgAliasTypeCS
Title: "Organization Alias Type Code System"
Description: "The state indicating if an Organization has an alias."
* ^experimental = false
* #legalalternative "Legal Alternative" "A pseudonym used by an organization to perform their business under a name that differs from the registered, legal name of the business, also known as a trade name, business name, or 'doing business as' (d.b.a.)."
* #historical "Historical" "Any previously used legal or trade names used by an organization since the creation of the business. Could include names used by independent organizations before a merger or other reorganization."
* ^caseSensitive = true 

CodeSystem: OrganizationAffiliationRoleCS
Title: "Organization Affiliation Role"
Description: "Codes For Organization Affiliation Role"
* ^experimental = false
* #behavioral	"Outpatient Behavioral Health Provider" "Provider of services related to the promotion of mental health, resilience and wellbeing; the treatment of mental and substance use disorders; and the support of those who experience and/or are in recovery from these conditions, along with their families and communities."
* #bt "Member Of" "Has a relationship of participation with.  This does NOT represent a member of an insurance plan, but other types of membership such as membership of a hospital in an HIE"    // Added 7/15/2020
* #dme	"DME/Medical Supplier"	"Supplier of health care consumables or equipments supplied to patients."
* #group	"Medical Group"	"A group of people, e.g. a group of Physicians, who render health care services."
* #home	"Home Health Provider"	"Provider of health care services delivered to patients within their residence rather than a clinical setting; usually provided by nurses, home health aides, and other professionals on a regularly scheduled visit."
* #hospital	"Hospital"	"An inpatient facility, other than long-term care, providng patient treatment with specialzed medical and nursing staff and medical equipment."
* #laboratory	"Laboratory"	"Pathology and laboratory testing on clinical specimenst to obtain informaion about the health of a paeint to aid in diagnosis, treatment and prevention of disease."
* #other	"Other"		"A provider of heatlh care services not otherwise listed in this value set."
* #outpatient	"Clinic or Outpatient Facility"	 "An outpatient facility providing patient services, e.g. medical procedures, surgeries, etc."
* #pharmacy	"Pharmacy"	"An entity which provider services related to the storage, compounding, dispensing and sale of drugs."
* #transport	"Transporation Provider"	"A provider which transports patients to or from a medical facility, e.g., ambulance."
* #urgent	"Urgent Care Center"	"A center in which unscheduled health care services are provided for point-in-time evaluation or treatment of a non-life-threatening medical condition."
* #hospice "Hospice" "Hospice"
* #nurseCustodial "Nursing and Custodial Care Facility" "Nursing and Custodial Care Facility"
* #residential "Residential Treatment Facility" "Residential Treatment Facility"
* #respite "Respite Care Facility" "Respite Care Facility"
* #retail	"Retail Health Center"	"Retail Health Center"
* ^caseSensitive = true

CodeSystem: OrganizationAffiliationRoleForHieCS
Title: "NDH Organization Affiliation Role for HIE"
Description: "Codes For Organization Affiliation Role for HIE"
* ^experimental = false
* #HieInitiator "HIE Initiator" "Indicate the participatingOrganization will initiate requests"
* #HieResponder "HIE Responder" "Indicate the participatingOrganization will respond to the requests from other organization members"
* #PartnerConnectivity "Partner Connectivity" "Partner Connectivity"
* #DocShareFederateInt "Document Sharing Federated Internal" "Document Sharing Federated Internal"
* #DocShareFederateExt "Document Sharing Federated External" "Document Sharing Federated External"
* ^caseSensitive = true

CodeSystem: PractitionerRoleCS
Title: "Practitioner Role Codes Code System"
Description: "A capability that an individual, group, or organization is acknowledged to have in a payer network."
* ^experimental = false
// These are Payer Roles from Gail
* #ap "Admitting Privileges" "Practitioner has admitting privileges at hospital (organization)"
* #apn "Advanced Practice Nursing Providers" "Advanced Practice Nursing Providers"
* #at "Athletic Trainer" "Athletic Trainer"
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
* ^caseSensitive = true


CodeSystem: QualificationStatusCS
Title: "Qualification Status Code System"
Description: "The state indicating if a qualification is currently valid."
* ^experimental = false
* #active "active" "The credential may be considered valid for use."
* #inactive "inactive" "The credential may not be considered valid for use."
* #issiner "issued in error" "The credential was mistakenly assigned and should not be considered valid for use."
* #revoked "revoked" "The credential was revoked by the issuing organization and should not be considered valid for use."
* #pending "pending" "The credential has not been officially assigned. It may or may not be considered valid for use."
* #unknown "unknown" "The status of this credential is unknown. It may or may not be considered valid for use."
* ^caseSensitive = true




CodeSystem: ValidationTypeCS
Title: "Validation Type Code System"
Description: "This code system contains codes for documenting the attributes of the FHIR resource Validation to reflect the business process of validating information in a Healthcare Directory.."
* ^experimental = false
* #noneneeded "None needed" "No validation needed/planned for this resource or element."
* #initial "Initial"    "Validation is only needed after initial attestation. For elements that typically do not change such as 'medical school attended and graduation date'."
* #periodic	"Periodic"	"Validation is needed after initial attestation and on a periodic basis. E.g. elements that expire or may change such as licensure."
* #attested	"Attested"	"Indicates the element or resource has only been attested."
* #validated "Validated"	"Indicates the element or resource has been successfully validated."
* #inprocess "Inprocess"	"Indicates the element or resource is currently being validated."
* #reqreval	"Required revalidation"	"Indicates the element or resource has passed an expiration date and requires revalidation."
* #valfailed "Valiation failed"	"Indicates validation was attepted on an element or resource and that validation failed."
* #nothing	"Nothing"	"No external validation is required."
* #single	"Single"	"Indicates the element or resource is validated against a single source."
* #multiple	"Multiple"	"Indicates the element or resource may require validation against multiple sources, e.g. a practitioner participating in an insurance network."
* #editcheck "Edit check"	"Indicates the element or resource is validated for format, range, presence, or other similar properties."
* #valueset	"Valueset"	"Indicates the element or resource is validated against a value set."
* #extsource "External source"	"Indicates the element or resource is validated against an external source."
* #standalone "Stand alone"	"Indicates the element or resource is validated by itself and is unrelated to other elements or resources."
* #incontext "In context"	"Indicates the element or resource is validated by the existence or value of another related element or resource."
* #fatal "Fatal"	"A failure that is likely relevant to local workflow environments, considered sufficient to suspend the resource/element and one or more action has been taken."
* #warning	"Warning"	"A failure that may be relevant to some local workflow environments, but in and of itself is not consider sufficient to suspend the resource/element. E.g. validating membership in an organization."
* #recordonly	"Record only"	"A failure that may be relevant to some local workflow environments and will be documented but not result in notification or publication of the error."
* #noaction	"No action"	"A failure that is unlikely to be relevant to any local workflow environment."
* #manual	"Manual"	"The resource or element is validated manually."
* #portal	"Portal"	"The resource or element is validated via a portal into a source of valid data."
* #push	"Push"	"Data is sent (i.e. pushed) from a source of valid data to the Healthcare Directory."
* #pull	"Pull"	"Data is retrieved (i.e. pulled) from a source of valid data into the Healthcare Directory"
* #successful	"Successful"	"The validation process is complete and a determination made that the the attested data is true and accurate."
* #failed	"Failed"	"The validation process is complete and a determination made that the the attested data is not true or accurate."
* #undetermined	"Undetermined"	"The validation process is complete and a determination could not be made that the the attested data is, or is not, true and accurate."
* #pushyes	"Yes"	"The primary source validation can be achieved via a push of data from the source of that information."
* #pushno	"No"	"The primary source validation cannot be achieved via a push of data from the source of that information."
* #pushundetermined	"Undetermined"	"It is if undetermined if primary source validation can be achieved via a push of data from the source of that information."
* #specific	"Specific requested changes"	"The sender will send specific changes to the healthcare directory as determined by agreement."
* #any	"Any changes"	"The sender will send all changes to the healthcare directory."
* #sourcedef	"As defined by the source/sender"	"The sender will only send changes they have determined to be significant."
* #owner	"Owner"	"Indicates the element or resource was attested to by the individual who owned the data."
* #authrep	"Authorized representative"	"Indicates the element or resource was attested to by an individual who was designated to attest by the owner of the data."
* #authint	"Authorized intermediary"	"Indicates the element or resource was attested to by a system (intermediary) that was designated to attest by the owner of the data."
* #non-auth-src	"Non-authorized source"	"Indicates the element or resource was attested to by an individual or system that was not designated to attest by the owner of the data."
* #licenseboard	"License Board"	"License Board"
* #primaryed	"Primary Education"	"Primary Education"
* #continuinged	"Continuing Education"	"Continuing Education"
* #postalservice	"Postal Service"	"Postal Service"
* #relowner	"Relationship owner"	"Relationship owner"
* #regauth	"Registration Authority"	"Registration Authority"
* #legalsource	"Legal source"	"Legal source"
* #issuingsource	"Issuing source"	"Issuing source"
* #attester	"Attester"	"Attester"
* ^caseSensitive = true

CodeSystem: VirtualModalitiesCS
Title: "Virtual Modalities Code System"
Description: "Categories of virtual service delivery modalities."
* ^experimental = false
* #phone	"phone" "Voice Telephone"
* #video	"video chat" "Video Chat"
* #tdd	"TDD" "Telecommunications Device for the Deaf"
* #sms	"SMS" "SMS Text Messaging"
* #app  "App" "Mobile Application"
* #web  "Website" "Website accessed through browser"
* ^caseSensitive = true

CodeSystem: TrustFrameworkTypeCS
Title: "Trust FrameworkType Code System"
Description: "Trust Framework Type"
* ^experimental = false
* #DirectTrust "Direct Trust"
* #CareQuality "Carequality"
* #Commonwell "Commonwell"
* #TEFCA "TEFCA"
* #PayerToPayer	"Payer to Payer Trust Network"
* #Exchange	"Exchange Required by Federal Regulations"
* #PCDH "Patient Centered Data Home"
* ^caseSensitive = true

CodeSystem: NdhPayerCharacteristicsCS
Title: "NDH Payer Characteristics Code System"
Description: "NDH Payer Characteristics"
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
* #mlpov   "Other Practitioner Office Visit (Nurse, Physician Assistant) - Mid Level Professional"   "Benefit plan covers covered health related services rendered by a practioner other than MD or DO and referred to as other practitioner."
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
