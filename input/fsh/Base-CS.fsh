/*
CodeSystem: AcceptingPatientsCS
Title: "Accepting Patients Codes Code System"
Description: "Codes to identify if the practice is accepting new patients"
* ^experimental = false
* #nopt	"Not Accepting" "Not accepting patients"
* #newpt "Accepting" "Accepting patients"
* #existptonly "Accepting existing patients" "Accepting existing patients"
* #existptfam "Accepting existing patients and their families" "Accepting existing patients and members of their families"
* ^caseSensitive = true
*/
/*
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
*/

/*
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
*/

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



CodeSystem: NdhDigitalcertificateUseCS
Title: "NDH Digitalcertificate Use Code System"
Description: "This code System includes the choice of use digital certification"
* ^experimental = false
* #signing "Signing" "A certificate issued for the purpose of digitally signing information to confirm the author and guarantee that the content has not been altered or corrupted since it was signed by use of a cryptographic hash."
* #encrypt "Encryption" "A certificate containing a public key that can encrypt or decrypt electronic messages, files, documents, or data transmissions, or establish or exchange a session key for these same purposes."
* #auth "Authentication" "A certificate which can be used to obtain assurance of the accuracy of the claimed identity of an entity."
* ^caseSensitive = true

/*
CodeSystem: DeliveryMethodCS
Title: "Delivery Methods Code System"
Description: "Categories of healthcare service delivery methods."
* ^experimental = false
* #virtual	"Virtual" "Delivery not requiring provider and patient to be physically co-located, such as tele-medicine"
* #physical	"Physical" "Traditional delivery requiring provider and patient to be physically co-located."
* ^caseSensitive = true
*/

/*
CodeSystem: EmploymentStatusCS
Title: "Employment Status Code System"
Description: "This code system includes codes for indicating the status of a person's employment."
* ^experimental = false
* ^caseSensitive = true
* #employed	"employed"	"The person is currently employed."
* #unemployed	"unemployed"	"The person is currently unemployed."
*/

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


//web-server sercurity (username token, x.509 certificate, saml assertion, kerberos ticket)
CodeSystem: EndpointAccessControlMechanismCS
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

/*
CodeSystem: EndpointX509PublicKeyUsageFlagCS
Title: "`Endpoint X509 Public Key Usage Flag Code System"
Description: "Endpoint X509 Public Key Usage Flag"
* ^experimental = false
* ^caseSensitive = true
* #digital-signature "Digital Signature" "indicates that the public key in the certificate can be used for digital signatures"
* #non-repudiation "Non Repudiation" "indicates that the public key in the certificate can be used for non-repudiation, which is the ability to prove that a message was sent by a particular sender"
* #key-encipherment "Key Encipherment" "indicates that the public key in the certificate can be used for key encipherment, which is the process of encrypting other keys"
* #data-encipherment "Data Encipherment" "indicates that the public key in the certificate can be used for data encipherment, which is the process of encrypting data"
* #key-agreement "Key Agreement" "indicates that the public key in the certificate can be used for key agreement, which is the process of agreeing on a shared secret key between two parties"
* #certificate-signing "Certificate Signing" "indicates that the public key in the certificate can be used for signing other certificates"
*/

/*
// FHIR-39478 to remove EndpointTypeCS +++++
CodeSystem: EndpointTypeCS
Title: "Endpoint Type Code System"
Description: "Endpoint Type"
* ^experimental = false
* #FHIR	"FHIR Server"
* #OpEndpoint "Operation Endpoint"
* #CDS "CDS Hooks"
* ^caseSensitive = true
*/

/*
CodeSystem: EndpointHieSpecificConnectionTypeCS
Title: "Endpoint IHE Specific Connection Type Code System"
Description: "Endpoint IHE Specific Connection Type"
* ^experimental = false
* #XCPD-InitGateway-PatientDiscovery-AsyncResponse "XCPD-InitGateway-PatientDiscovery-AsyncResponse" "XCPD InitiatingGateway ITI-55 Cross Gateway Patient Discovery Asynchronous Response"
* #XCPD-RespGateway-PatientDiscovery "XCPD-RespGateway-PatientDiscovery" "XCPD RespondingGateway ITI-55 Cross Gateway Patient Discovery Synchronous"
* #XCPD-RespGateway-PatientDiscovery-Async "XCPD-RespGateway-PatientDiscovery-Async" "XCPD RespondingGateway ITI-55 Cross Gateway Patient Discovery Asynchronous"
* #XCA-InitGateway-Query "XCA-InitGateway-Query" "XCA InitiatingGateway ITI-18 Registry Stored Query Synchronous"
* #XCA-InitGateway-Retrieve "XCA-InitGateway-Retrieve" "XCA InitiatingGateway ITI-43 Retrieve Document Set Synchronous"
* #XCA-InitGateway-Query-Async "XCA-InitGateway-Query-Async" "XCA InitiatingGateway ITI-18 Registry Stored Query Asynchronous"
* #XCA-InitGateway-Retrieve-Async "XCA-InitGateway-Retrieve-Async" "XCA InitiatingGateway ITI-43 Retrieve Document Set Asynchronous"
* #XCA-InitGateway-Query-AsyncResponse "XCA-InitGateway-Query-AsyncResponse" "XCA InitiatingGateway ITI-38 Cross Gateway Query Asynchronous Response"
* #XCA-InitGateway-Retrieve-AsyncResponse "XCA-InitGateway-Retrieve-AsyncResponse" "XCA InitiatingGateway ITI-39 Cross Gateway Retrieve Asynchronous Response"
* #XCA-RespGateway-Query "XCA-RespGateway-Query" "XCA RespondingGateway ITI-38 Cross Gateway Query Synchronous"
* #XCA-RespGateway-Retrieve "XCA-RespGateway-Retrieve" "XCA RespondingGateway ITI-39 Cross Gateway Retrieve Synchronous"
* #XCA-RespGateway-Query-Async "XCA-RespGateway-Query-Async" "XCA RespondingGateway ITI-38 Cross Gateway Query Asynchronous"
* #XCA-RespGateway-Retrieve-Async "XCA-RespGateway-Retrieve-Async" "XCA RespondingGateway ITI-39 Cross Gateway Retrieve Asynchronous"
* #XDS-Registry-Feed "XDS-Registry-Feed" "XDS Registry ITI-8 Patient Identity Feed Synchronous"
* #XDS-Registry-Feed-v3 "XDS-Registry-Feed-v3" "XDS Registry ITI-44 Patient Identity Feed HL7v3 Synchronous"
* #XDS-Registry-Register "XDS-Registry-Register" "XDS Registry ITI-42 Register Document Set-b Synchronous"
* #XDS-Registry-Query "XDS-Registry-Query" "XDS Registry ITI-18 Registry Stored Query Synchronous"
* #XDS-Registry-RegOnDemand "XDS-Registry-RegOnDemand" "XDS Registry ITI-61 Register On-Demand Document Entry Synchronous"
* #XDS-Registry-Register-Async "XDS-Registry-Register-Async" "XDS Registry ITI-42 Register Document Set-b Asynchronous"
* #XDS-Registry-Query-Async "XDS-Registry-Query-Async" "XDS Registry ITI-18 Registry Stored Query Asynchronous"
* #XDS-Registry-RegOnDemand-Async "XDS-Registry-RegOnDemand-Async" "XDS Registry ITI-61 Register On-Demand Document Entry Asynchronous"
* #XDS-Repository-ProvideReg "XDS-Repository-ProvideReg" "XDS Repository ITI-41 Provide&Register Document Set-b Synchronous"
* #XDS-Repository-Retrieve "XDS-Repository-Retrieve" "XDS Repository/IntegratedSourceRepository ITI-43 Retrieve Document Set Synchronous"
* #XDS-Repository-ProvideReg-Async "XDS-Repository-ProvideReg-Async" "XDS Repository ITI-41 Provide&Register Document Set-b Asynchronous"
* #XDS-Repository-Retrieve-Async "XDS-Repository-Retrieve-Async" "XDS Repository/IntegratedSourceRepository ITI-43 Retrieve Document Set Asynchronous"
* #XDS-Repository-Register-AsyncResponse "XDS-Repository-Register-AsyncResponse" "XDS Repository/IntegratedSourceRepository ITI-42 Register Document Set-b Asynchronous Response"
* #XDS-OnDemandSource-Retrieve "XDS-OnDemandSource-Retrieve" "XDS OnDemandSource ITI-43 Retrieve Document Set Synchronous"
* #XDS-OnDemandSource-Retrieve-Async "XDS-OnDemandSource-Retrieve-Async" "XDS OnDemandSource ITI-43 Retrieve Document Set Asynchronous"
* #XDS-OnDemandSource-RegOnDemand-AsyncResponse "XDS-OnDemandSource-RegOnDemand-AsyncResponse" "XDS OnDemandSource ITI-61 Register On-Demand Document Entry Asynchronous Response"
* #XDS-Source-ProvideReg-AsyncResponse "XDS-Source-ProvideReg-AsyncResponse" "XDS Document Source ITI-41 Provide&Register Document Set-b Asynchronous Response"
* #XDS-Consumer-Query-AsyncResponse "XDS-Consumer-Query-AsyncResponse" "XDS Document Consumer ITI-18 Registry Stored Query Asynchronous Response"
* #XDS-Consumer-Retrieve-AsyncResponse "XDS-Consumer-Retrieve-AsyncResponse" "XDS Document Consumer ITI-43 Retrieve Document Set Asynchronous Response"
* #PDQ-Supplier-Query "PDQ-Supplier-Query" "PDQ Patient Demographics Supplier ITI-21 Patient Demographics Query Synchronous"
* #PDQ-Supplier-VisitQuery "PDQ-Supplier-VisitQuery" "PDQ Patient Demographics Supplier ITI-22 Patient Demographics and Visit Query Synchronous"
* #PIX-Xmanager-Feed "PIX-Xmanager-Feed" "PIX Patient Identity Cross-Reference Manager ITI-8 Patient Identity Feed Synchronous"
* #PIX-Xmanager-Feed-v3 "PIX-Xmanager-Feed-v3" "PIX Patient Identity Cross-Reference Manager ITI-30 Patient Identity Management Synchronous"
* #PIX-Xmanager-Query "PIX-Xmanager-Query" "PIX Patient Identity Cross-Reference Manager ITI-9 PIX Query Synchronous"
* #PIX-Consumer "PIX-Consumer" "PIX Patient Identifier Cross-reference Consumer ITI-10 PIX Update Notification Synchronous"
* #XDR-Recipient-ProvideReg "XDR-Recipient-ProvideReg" "XDR Document Recipient ITI-41 Provide and Register Document Set-B Synchronous"
* #MHD-Recipient-ProvideReg "MHD-Recipient-ProvideReg" "MHD Document Recipient ITI-65 Provide Document Bundle"
* ^caseSensitive = true
*/

CodeSystem:  NdhEndpointConnectionTypeCS
  Title: "NDH Endpoint Connection Types (additional) Code System"
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


//since our Ig fhir base is 4.0.1, http://hl7.org/fhir/FHIR-version will not contain the version beyond 4.0.1
//Therefore we have to define this value set to indicate the endpont beyond 4.0.1
/*
CodeSystem: EndpointConnectionTypeVersionCS
Title: "Endpoint Connection Type Version Code System"
Description: "Endpoint Connection Type Version"
* ^experimental = false
* #4.3.0 "4.3.0" "FHIR Release 4B"
* ^caseSensitive = true
*/

CodeSystem: NdhEndpointTestingMethodCS
Title: "Ndh Endpoint Testing Method Code System"
Description: "Endpoint Testing Method"
* ^experimental = false
* ^caseSensitive = true
* #self-test "Self Test" "Self Test"
* #procter "Procter" "Procter"
* #attestation "Attestation" "Attestation"

/*
CodeSystem: EndpointFhirMimeTypeCS
Title: "Endpoint FHIR MimeType Code System"
Description: "Endpoint FHIR MimeType"
* ^experimental = false
* ^caseSensitive = true
* #application/fhir+json "fhr+json"
* #application/fhir+xml "fhir+xml"
* #application/fhir+turtle "fhir+turtle"
*/

/*
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
* #text/hl7v2 "hl7v2"  "HL7 v2.x message"
* #text/rtf "rtf"  "Rich Text Format (RTF)"
* #application/cda+xml "cda"  "Clinical Document Architecture (CDA) XML"
* #application/fhir+json "fhir"  "FHIR JSON"
* #application/fhir+xml "fhir"  "FHIR XML"
*/


 
/*
CodeSystem:  EndpointPayloadTypeCS
  Title: "Endpoint Payload Types Code System"
  Description:  "Endpoint Payload Types are constrained to NA (Not Applicable) as part of this IG"
* ^experimental = false
* #NA "Not Applicable" "Not Applicable"
* ^caseSensitive = true
*/
 
/*
CodeSystem: NdhHealthcareServiceCategoryCS
 Title: "Healthcare Service Category Code System"
 Description: "Broad categories of healthcare services being performed or delivered"
* ^experimental = false
* #behav "Behavioral Health" "Services related to the promotion of mental health, resilience and wellbeing; the treatment of mental and substance use disorders; 
and the support of those who experience and/or are in recovery from these conditions, along with their families and communities."
* #dent "Dental" "Services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the mouth."
* #dme "DME/Medical Supplies" "Health care consumables or equipments supplied to patients"
* #emerg "Emergency care" "Health care services rendered within a designated emergency care facility, for point-in-time evaluation and/or treatment any medical condition 
such that a prudent layperson possessing an average knowledge of medicine and health, believes that immediate unscheduled medical care is required."
* #group "Medical Group" "Health care services rendered by a group of people, e.g. a group of Physicians."
* #home "Home Health"	"Health care services delivered to patients within their residence rather than a clinical setting; usually provided by nurses, home health aides, 
and other professionals on a regularly scheduled visit."
* #hosp "Hospital" "Health care services rendered within a hospital or other inpatient setting providng patient treatment with specialzed medical and nursing staff and 
medical equipment."
* #lab "Laboratory" "Pathology and laboratory testing on clinical specimenst to obtain informaion about the health of a paeint to aid in diagnosis, 
treatment and prevention of disease."
* #other "Other" "Other"
* #outpat "Clinic or Outpatient Facility" "Health care services rendered in an outpatient facility, e.g. medical procedures, surgeries, etc."
* #prov "Medical Provider"  "Health care services rendered by a person, e.g. Physician."
* #pharm "Pharmacy" "Services related to the storage, compounding, dispensing and sale of drugs."
* #trans "Transportation" "Services related to the transportation of patients to and from a healthcare facility, or programs related to transportation insecurity."
* #urg "Urgent Care" "Unscheduled health care services which provide for point-in-time evaluation or treatment of a non-life-threatening medical condition."
* #vis "Vision" "Services related to the study, diagnosis, prevention, and treatment of diseases, disorders, and conditions of the eyes."
* #education "Education" "Services or programs related to education, including health literacy, health education, and health promotion (stress management, smoking cessation, etc.)"
* #employment "Employment" "Services or programs related to employment assistance"
* #financial "Financial" "Services or programs related to financial insecurity, material hardship, or medical cost burden"
* #food "Food" "Services or programs related to food insecurity or inadequate nutrition"
* #housing "Housing" "Services or programs related to housing instability, inadequate housing, or homelessness"
* #personal-safety "Personal Safety" "Services or programs related to personal safety, including intimate partner violence, elder abuse, sexual violence, and child abuse and neglect"
* #social-connection "Social Connection" "Services or programs related to social isolation or social connection"
* ^caseSensitive = true
*/

/*
CodeSystem: HealthcareServiceRatingTypeCS
Title: "Healthcare Service Rating Type Code System"
Description: "Types of ratings for a healthcare service"
* ^experimental = false
* ^caseSensitive = true
//* #quality-of-care "Quality of Care" "Quality ratings consider factors like the success rate of surgeries, patient outcomes, error rates, adherence to best practices, and compliance with safety standards."
//* #patient-satisfaction "Patient Satisfaction" "Patient satisfaction ratings  assessed through patient surveys. Patients may be asked to rate their overall satisfaction with the care they received, as well as specific aspects like the friendliness of staff, the cleanliness of facilities, the wait time, and the communication skills of healthcare professionals."
//* #value-of-money "Value of Money" "Value ratings compares the cost of services to their quality. It can be quite complex, as it often involves considering both the immediate cost of care and the long-term financial impact of health outcomes."
//* #accessibility "Accessibility" "Accessibility ratings consider factors like the availability of appointments, the ease of scheduling urgent appointments, the availability of after-hours care, and the availability of electronic communication with healthcare professionals."
//* #efficiency "Efficiency" "Efficiency ratings  evaluates how effectively a healthcare provider uses resources to deliver care. It might consider factors like the average length of hospital stays, the use of testing and procedures, and the readmission rate."
//* #clinical-outcomes "Clinical Outcomes" "Clinical outcomes ratings  assess the health outcomes of patients who received care from a particular healthcare provider. They might consider factors like the mortality rate, the rate of complications, and the rate of hospital readmission."
//* #patient-safety "Patient Safety" "Patient safety ratings  assess the safety of care provided by a healthcare provider. They might consider factors like the rate of hospital-acquired infections, the rate of surgical complications, and the rate of medication errors."
//* #experience-of-care "Experience of Care" "Experience of care ratings  assess the experience of patients who received care from a particular healthcare provider. They might consider factors like the friendliness of staff, the cleanliness of facilities, the wait time, and the communication skills of healthcare professionals."
//* #equity "Equity" "Equity ratings evaluates whether healthcare services are provided fairly to all patients, regardless of their race, ethnicity, gender, socioeconomic status, or other demographic factors."
* #hospital-compare "Hospital Compare" "This is a consumer-oriented website created by the Centers for Medicare & Medicaid Services (CMS). It provides data on how well hospitals provide recommended care to their patients. This can be used to compare the quality of care at over 4,000 Medicare-certified hospitals."
* #hedis "HEDIS" "The Healthcare Effectiveness Data and Information Set (HEDIS) is a tool used by more than 90 percent of America's health plans to measure performance on important dimensions of care and service. This tool is maintained by National Committee for Quality Assurance (NCQA)."
* #hcahps "HCAHPS" "The HCAHPS (Hospital Consumer Assessment of Healthcare Providers and Systems) Survey, also known as Hospital CAHPS, is a standardized survey instrument and data collection methodology for measuring patients' perspectives on hospital care. This tool is maintained by Centers for Medicare & Medicaid Services (CMS)."
* #healthgrades "Healthgrades" "Healthgrades is a website that provides information about physicians, hospitals and health care providers. Healthgrades collects data and other information regarding hospitals, physicians, long-term care facilities and other providers of healthcare services from a variety of sources."
* #joint-commission-quality-check "Joint Commission Quality Check" "A consumer-oriented website created by the Centers for Medicare & Medicaid Services (CMS). It provides data on how well hospitals provide recommended care to their patients. This can be used to compare the quality of care at over 4,000 Medicare-certified hospitals."
* #leapfrog "Leapfrog" "The Leapfrog Hospital Survey is the gold standard for comparing hospitals' performance on the national standards of safety, quality, and efficiency that are most relevant to consumers and purchasers of care. This tool is maintained by The Leapfrog Group."
* #usnews "US News" "U.S. News & World Report is an American media company that publishes news, opinion, consumer advice, rankings, and analysis. Founded as a newsweekly magazine in 1933, U.S. News transitioned to primarily web-based publishing in 2010. This tool is maintained by U.S. News & World Report."
* #vitals "Vitals" "Vitals is an online resource for patients to find doctors and medical facilities. It provides information about the doctor's education, training, board certification, and malpractice and disciplinary history. This tool is maintained by Vitals."
* #yelp "Yelp" "Yelp is an American public company headquartered in San Francisco, California. The company develops, hosts, and markets the Yelp.com website and the Yelp mobile app, which publish crowd-sourced reviews about businesses. This tool is maintained by Yelp."
*/

/*
CodeSystem: HealthcareServiceReferralMethodCS
Title: "Healthcare Service Referral Method Code System"
Description: "Methods of referral"
* ^experimental = false
* ^caseSensitive = true
* #ccda "CCDA" "CCDA with endpoints"
* #elec "Secure Messaging" "Referrals may be accepted via a secure messaging system. To determine the types of secure messaging systems supported, 
refer to the identifiers collection. Callers will need to understand the specific identifier system used to know that they are able to transmit messages."
* #electronic-referral "Electronic Referral" "Referrals may be accepted via Electronic Referral endpoints"
* #electronic-scheduling "Electronic Scheduling" "Referrals may be accepted via Electronic Scheduling endpoints"
* #fax "Fax" "Referrals may be accepted by fax."
* #phone "Phone" "Referrals may be accepted over the phone from a practitioner."
* #mail "Mail" "Referrals may be accepted via regular postage or hand delivered."
* #semail "Secure Email" "Referrals may be accepted via a secure email. To send please encrypt with the services public key."
*/

CodeSystem: NdhIgActorCS
Title: "NDH IG Actor Code System"
Description: "IG Actor"
* ^experimental = false
* #client	"client"  "client"
* #server	"server"  "server"
* #sender "sender" "sender"
* #recipient "recipient" "recipient"
* #requester "requester" "requester"
* ^caseSensitive = true

/*
CodeSystem: IgTypeCS
Title: "IG Type Code System"
Description: "IG Type"
* ^experimental = false
* #FHIR	"FHIR"
* #direct "Direct"
* ^caseSensitive = true
*/

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

//for now, it will be added to https://terminology.hl7.org/4.0.0/ValueSet-v3-HL7FormatCodes.html
CodeSystem: NdhDirectTrustPayloadTypeCS
Title: "NDH Direct Trust Payload Type Code System"
Description: "NDH Direct Trust Payload Type"
* ^experimental = false
* ^caseSensitive = true
* #urn:dt-org:dsm:adt-en:SMTP+CIG+V2:1.0 "urn:dt-org:dsm:adt-en:SMTP+CIG+V2:1.0" "urn:dt-org:dsm:adt-en:SMTP+CIG+V2:1.0"
* #urn:dt-org:dsm:adt-en:SMTP+XDM:1.0 "urn:dt-org:dsm:adt-en:SMTP+XDM:1.0" "urn:dt-org:dsm:adt-en:SMTP+XDM:1.0"
* #urn:dt-org:dsm:ix4hs-ref:SMTP+CDA+FHIR:1.0 "urn:dt-org:dsm:ix4hs-ref:SMTP+CDA+FHIR:1.0" "urn:dt-org:dsm:ix4hs-ref:SMTP+CDA+FHIR:1.0"

CodeSystem: NdhFhirEndpointUseCaseCS
Title: "NDH FHIR Endpoint Use Case Code System"
Description: "NDH FHIR Endpoint Use Case"
* ^experimental = false
* ^caseSensitive = true
* #cdex "CDex" "Clinical Data Exchange"
* #patientAccess "Patient Access" "Patient Access"
* #pasOperation "PAS Operation" "PAS Operation"
* #payerAttachment "Payer Attachment" "Payer Attachment"
* #payerToPayer "Payer to Payer" "Payer to Payer"
* #providerApi "Provider API" "Provider API" //FHIR-41273

//for now it will be added
CodeSystem: NdhDirectTrustEndpointUsecaseCS
Title: "NDH Direct Trust Endpoint Usecase Code System"
Description: "NDH Direct Trust Endpoint Usecase"
* ^experimental = false
* ^caseSensitive = true
*  #payer-payer-data-exchange  "information exchange between payers" "information exchange between payers"
*  #payer-provider-data-exchange  "information exchange between payers and providers" "information exchange between payers and providers"
*  #payer-patient-data-exchange  "information exchange between payers and patients" "information exchange between payers and patients"
*  #provider-provider-data-exchange  "information exchange between providers" "information exchange between providers"
*  #provider-payer-data-exchange  "information exchange between providers and payers" "information exchange between providers and payers"
*  #provider-to-patient-data-exchange  "information exchange between providers and patients" "information exchange between providers and patients"
*  #patient-payer-data-exchange  "information exchange between patients and payers" "information exchange between patients and payers"
*  #patient-provider-data-exchange  "information exchange between patients and providers" "information exchange between patients and providers"
*  #patient-public-health-data-exchange  "information exchange between patients and public health" "information exchange between patients and public health"
*  #patient-research-data-exchange  "information exchange between patients and research" "information exchange between patients and research"
*  #public-health-patient-data-exchange  "information exchange between public health and patients" "information exchange between public health and patients"
*  #research-patient-data-exchange  "information exchange between research and patients" "information exchange between research and patients"
*  #patient-access  "information exchange for patients" "information exchange for patients"
*  #care-case-manager  "information exchange with a care or case managers" "information exchange with a care or case managers"
*  #care-coordination  "information exchange for care coordination across the entire patient care team" "information exchange for care coordination across the entire patient care team"
*  #advanced-eob  "information exchange for advanced eobs" "information exchange for advanced eobs"
*  #coverage-requirements-discovery-crd  "information exchange for discovering coverage requirements" "information exchange for discovering coverage requirements"
*  #documentation-templates-rules-dtr  "information exchange for documentation templates and rules" "information exchange for documentation templates and rules"
*  #prior-authorization  "information exchange for prior authorization" "information exchange for prior authorization"
*  #formulary  "information exchange for drug formulary" "information exchange for drug formulary"
*  #prescriptions  "information exchange for prescriptions" "information exchange for prescriptions"
*  #item-service-price-transparency  "information exchange for item or service price transparency" "information exchange for item or service price transparency"
*  #patient-cost-transparency-gfe  "information exchange for making patient costs transparent" "information exchange for making patient costs transparent"
*  #quality-measure-reporting  "information exchange for quality measure reporting" "information exchange for quality measure reporting"
*  #adverse-event-reporting  "information exchange for adverse event reporting" "information exchange for adverse event reporting"
*  #notifications  "information exchange for notifications" "information exchange for notifications"
*  #adt-notifications  "information exchange for ADT notifications" "information exchange for ADT notifications"
*  #scheduling  "information exchange for scheduling" "information exchange for scheduling"
*  #release-of-information  "information exchange for release of information" "information exchange for release of information"
*  #medical-records  "information exchange for medical records" "information exchange for medical records"
*  #administrative  "information exchange for administrative activities" "information exchange for administrative activities"
*  #support  "information exchange for technical or customer support activities" "information exchange for technical or customer support activities"
*  #billing  "information exchange for billing" "information exchange for billing"
*  #referrals  "information exchange for referrals" "information exchange for referrals"
*  #transfer-transition-of-care  "information exchange for transfers and transitions of care" "information exchange for transfers and transitions of care"
*  #provider-directory  "information exchange for directory maintenance and quality" "information exchange for directory maintenance and quality"
*  #care-plans-review-or-approval  "information exchange to support care plan review and approval" "information exchange to support care plan review and approval"
*  #public-health-reporting  "information exchange for public health reporting" "information exchange for public health reporting"
*  #payers-and-payments  "information exchange for billing" "information exchange for billing"
*  #break-the-glass  "information exchange that requires break the glass" "information exchange that requires break the glass"
*  #individual-practitioner  "information exchange with an individual provider" "information exchange with an individual provider"
*  #individual-patient-member-consumer  "information exchange with an individual patient-member-client-consumer" "information exchange with an individual patient-member-client-consumer"
*  #location  "information exchange with a treating facility" "information exchange with a treating facility"
*  #group  "information exchange with a provider group" "information exchange with a provider group"
*  #department  "information exchange with a provider department" "information exchange with a provider department"
*  #no-reply  "endpoint does not accept information for exchange" "endpoint does not accept information for exchange"
*  #any-all  "endpoint that accepts any and all types of information exchange possible for its endpoint type" "endpoint that accepts any and all types of information exchange possible for its endpoint type"




/*
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
*/

/*
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
*/

/*
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
*/


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


/*
CodeSystem: OrgAliasTypeCS
Title: "Organization Alias Type Code System"
Description: "The state indicating if an Organization has an alias."
* ^experimental = false
* #legalalternative "Legal Alternative" "A pseudonym used by an organization to perform their business under a name that differs from the registered, legal name of the business, also known as a trade name, business name, or 'doing business as' (d.b.a.)."
* #historical "Historical" "Any previously used legal or trade names used by an organization since the creation of the business. Could include names used by independent organizations before a merger or other reorganization."
* #common "Common" "common name, i.e. SNAF, Rehab, etc."
* ^caseSensitive = true 
*/

/*
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
* #HieInitiator "HIE Initiator" "This code indicates that the organization referenced in .participatingOrganization is a member of the network led by the organization 
mentioned in .organization. It has both the permission and the intention to request data from other members of the network. In this context, OrganizationAffiliation.endpoint 
refers to the endpoint utilized by .participatingOrganization to make requests to the Initiating Gateway, acting under the authority of .organization."
* #HieResponder "HIE Responder" "This code indicates that the organization linked in .participatingOrganization is a member of the network overseen by the organization 
in .organization. It possesses an Endpoint capable of receiving requests from other network members that maintain an HIEInitiator relationship with the network's governing 
organization. In this context, OrganizationAffiliation.endpoint includes endpoints utilized by other network members to transmit requests to .participatingOrganization. 
This Endpoint may also serve Initiating and Responding gateways operated by .organization."
* #PartnerConnectivity "Partner Connectivity" "This code indicates that .participatingOrganization should be able to directly contact .organization via .Endpoint. 
It does not assert the availability of connectivity for any organizations other than those two directly linked through the OrganizationAffiliation Resource. 
It's important to note that many document-sharing networks might opt to distribute the information required to establish these connections out of band, 
rather than through the directory."
* #DocShareFederateInt "Document Sharing Federated Internal" "This code indicates that documents from .participatingOrganization are accessible to organizations within 
the network through communication with the network's Initiating Gateway, which is operated by .organization. In this context, 'within the network' refers to organizations 
that maintain an HIEInitiator relationship with .organization. This code is analogous to the DocShare-federate code in mCSD (Mobile Care Services Directory), 
but its scope is confined to organizations internal to the network."
* #DocShareFederateExt "Document Sharing Federated External" "This code indicates that documents from .participatingOrganization are accessible to organizations outside the network 
through communication with the network's Responding Gateway, operated by .organization. Here, 'outside the network' refers to organizations that do not have a child relationship 
with .organization, yet possess upper-level network or peer connectivity with that organization. This code is analogous to the DocShare-federate code in 
mCSD (Mobile Care Services Directory), but its scope is restricted to organizations external to the network."
* ^caseSensitive = true
*/ 

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

/*
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
*/



/*
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
*/

/*
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
*/


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

/*
CodeSystem: NdhVerificationCommunicationMethodCS
Title: "NDH Verification Communication Method Code System"
Description: "NDH Verification Communication Method"
* ^experimental = false
* ^caseSensitive = true
* #manual "Manual" "Manual"
* #portal "Portal" "Portal"
* #pull "Pull" "Pull"
* #push "Push" "Push"
*/

/*
CodeSystem: NdhVerificationProcessCS
Title: "NDH Verification Process Code System"
Description: "NDH Verification Process"
* ^experimental = false
* ^caseSensitive = true
* #primary "Primary source" "Primary source"
* #multi "Multiple source" "Multiple source"
* #manual "Manual" "Manual"
* #in-context "In-context" "element or resource is verified by existence or value of another related element or resource"
* #attester "Attester" "Attester"
* #editcheck "Edit check" "element or resource is verified for format, range, presence, or other similar properties"
* #valueset "Value set" "element or resource is verified against a value set"
* #extsource "External source" "element or resource is verified against an external source"
* #standalone "Standalone" "element or resource is verified by itself and is releated to other elements or resources"
*/

CodeSystem: NdhVerificationStatusCS
Title: "NDH Resource Instance Verification Status Code System"
Description: "NDH Resource Instance Verification Status"
* ^experimental = false
* ^caseSensitive = true
* #complete "Complete" "Complete"
* #incomplete "Incomplete" "Incomplete"
* #not-required "Not Required" "Not Required"


//CodeSystem: NdhPayerCharacteristicsCS
//itle: "NDH Payer Characteristics Code System"
//Description: "NDH Payer Characteristics"
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


//FHIR-35965 service-category and service-type code systems are erroneously defined as 'example'
/*
CodeSystem: HealthcareServiceTypeCS
Title: "HealthcareServiceTypeCS"
Description: "The type of healthcare service"
* ^experimental = false
* ^caseSensitive = true
* #1  "Adoption/Permanent Care Info/Support"   "Adoption/Permanent Care Information and Support"
* #3	"Aged Care Information/Referral"   "Aged Care Information and Referral"
* #8	"Home Care/Housekeeping Assistance"	"Home care/housekeeping assistance"
* #9	"Home Maintenance and Repair"	"Home maintenance and repair"
* #10	"Personal Alarms/Alerts"  "Personal alarms/alerts"
* #11	"Personal Care for Older Persons"	"Personal care for older persons"
* #21	"Hydrotherapy" "Hydrotherapy"
* #26 "Meditation" "Meditation"
* #31 "Relaxation Therapy" "Relaxation Therapy"
* #33 "Western Herbal Medicine" "Western Herbal Medicine"
* #34 "Family Day care" "Family Day care"
* #36 "Kindergarten Inclusion Support" "Kindergarten Inclusion Support"
* #42 "Parenting/Family Support/Education" "Parenting/Family Support/Education"
* #51 "Blood Donation" "Blood Donation"
* #55 "Health Advocacy/Liaison Service" "Health Advocacy/Liaison Service" 
* #67 "Sexual Health" "Sexual Health"
* #68 "Speech Pathology/Therapy" "Speech Pathology/Therapy"
* #69 "Bereavement Counselling" "Bereavement Counselling"
* #70 "Crisis Counselling" "Crisis Counselling"
* #71 "Family Counselling/Therapy" "Family Counselling/Therapy"
* #72 "Family Violence Counselling" "Family Violence Counselling"
* #75 "Genetic Counselling" "Genetic Counselling"
* #76 "Health Counselling" "Health Counselling"
* #78 "Problem Gambling Counselling" "Problem Gambling Counselling"
* #79 "Relationship Counselling" "Relationship Counselling" 
* #80 "Sexual Assault Counselling" "Sexual Assault Counselling"
* #81 "Trauma Counselling" "Trauma Counselling"
* #82 "Victims of Crime Counselling" "Victims of Crime Counselling"
* #96 "Disability Advocacy" "Disability Advocacy"
* #97 "Disability Aids & Equipment" "Disability Aids & Equipment"
* #99 "Disability Day Programs/Activities" "Disability Day Programs/Activities"
* #102 "Disability Supported Accommodation" "Disability Supported Accommodation"
* #103 "Early Childhood Intervention" "Early Childhood Intervention"
* #105 "Drug and/or Alcohol Counselling" "Drug and/or Alcohol Counselling"
* #106 "Drug/Alcohol Information/Referral" "Drug/Alcohol Information/Referral"
* #107 "Needle & Syringe Exchange" "Needle & Syringe Exchange"
* #108 "Non-resid. Alcohol/Drug Treatment" "Non-resid. Alcohol/Drug Treatment"
* #111 "Residential Alcohol/Drug Treatment" "Residential Alcohol/Drug Treatment"
* #118 "Employment Placement and/or Support" "Employment Placement and/or Support"
* #119 "Vocational Rehabilitation" "Vocational Rehabilitation"
* #126 "Crisis/Emergency Accommodation" "Crisis/Emergency Accommodation"
* #127 "Homelessness Support" "Homelessness Support"
* #128 "Housing Information/Referral" "Housing Information/Referral"
* #130 "Interpreting/Multilingual Service" "Interpreting/Multilingual Service"
* #134 "Mental Health Advocacy" "Mental Health Advocacy"
* #146 "Physical Activity Programs" "Physical Activity Programs"
* #147 "Physical Fitness Testing" "Physical Fitness Testing"
* #224 "Support Groups" "Support Groups"
* #230 "Patient Transport" "Patient Transport"
* #233 "Abuse" "Abuse"
* #238 "Adult Day Programs" "Adult Day Programs"
* #245 "Aids" 
* #275 "Cancer Support" "Cancer Support"
* #284 "Child Care" "Child Care"
* #296 "Companion Visiting" "Companion Visiting"
* #301 "Contraception Inform" "Contraception Information"
* #308 "Crisis Assessment And Treatment" "Crisis Assessment And Treatment"
* #309 "Crisis Assistance" "Crisis Assistance"
* #310 "Crisis Refuge" "Crisis Refuge"
* #316 "Depression" "Depression"
* #317 "Detoxification" "Detoxification"
* #323 "Divorce" "Divorce"
* #328 "Eating Disorder" "Eating Disorder"
* #331 "Employment And Train" "Employment And Training"
* #344 "Food" "Food"
* #345 "Food Vouchers" "Food Vouchers"
* #352 "Grief Counselling" "Grief Counselling"
* #366 "Household Items" "Household Items"
* #400 "Pain" "Pain"
* #409 "Postnatal" "Postnatal"
* #411 "Pregnancy Tests" "Pregnancy Tests"
* #427 "Rent Assistance" "Rent Assistance"
* #429 "Residential Respite" "Residential Respite"
* #440 "Sexual Issues" "Sexual Issues"
* #446 "Speech Therapist" "Speech Therapist"
* #459 "Tenancy Advice" "Tenancy Advice"
* #468 "Vocational Guidance" "Vocational Guidance"
* #470 "Welfare Assistance" "Welfare Assistance"
* #488 "Diabetes Educator" "Diabetes Educator"
* #494 "Youth Services" "Youth Services"
* #495 "Youth Health" "Youth Health"
* #501 "Cancer Services" "Cancer Services"
* #513 "Cancer Support Groups" "Cancer Support Groups"
* #530 "Disability Care Transport" "Disability Care Transport"
* #531 "Aged Care Transport" "Aged Care Transport"
* #532 "Diabetes Education Service" "Diabetes Education services"
* #534 "Young Adult Diabetes" "Young Adult Diabetes"
* #535 "Pulmonary Rehabilita" "Pulmonary Rehabilitation"
* #537 "Medication Reviews" "Medication Reviews"
* #539 "Telephone Help Line" "Telephone Help Line"
* #546 "Veterans Services" "Veterans Services"
* #548 "Food Relief/Food/Meals" "Food Relief/Food/Meals"
* #552 "Drug and/or Alcohol Support Groups" "Drug and/or Alcohol Support Groups"
* #554 "Chronic Disease Management" "Chronic Disease Management"
* #559 "Women Health" "Women Health"
* #560 "Men Health" "Men Health"
* #565 "Youth Drop In/Assistance/Support" "Youth Drop In/Assistance/Support"
* #569 "Migrant Health Clinic" "Migrant Health Clinic"
* #570 "Refugee Health Clinic" "Refugee Health Clinic"
* #571 "Aboriginal Health Clinic" "Aboriginal Health Clinic"
* #614 "Development-Life Skills" "Development-Life Skills"
* #628 "Vehicle modifications" "Vehicle modifications"
*/

/*
CodeSystem: HealthcareServiceProgramCS
Title: "Healthcare Program"
Description: "Healthcare Program"
* ^experimental = false
* ^caseSensitive = true
* #1 "Acquired Brain Injury (ABI) Program" "Acquired Brain Injury (ABI) Program"
* #2 "ABI Slow To Recover (ABI STR) Program" "ABI Slow To Recover (ABI STR) Program"
* #3 "Access Programs" "Access Programs"
* #4 "Adult and Further Education (ACFE) Program" "Adult and Further Education (ACFE) Program"
* #5 "Adult Day Activity and Support Services (ADASS) Program" "Adult Day Activity and Support Services (ADASS) Program"
* #6 "Adult Day Care Program" "Adult Day Care Program"
* #7 "ATSS (Adult Training Support Service)" "ATSS (Adult Training Support Service)"
* #8 "Community Aged Care Packages (CACP)" "Community Aged Care Packages (CACP)"
* #9 "Care Coordination & Supplementary Services (CCSS)" "Care Coordination & Supplementary Services (CCSS)"
* #10 "Cognitive Dementia Memory Service (CDAMS)" "Cognitive Dementia Memory Service (CDAMS)"
* #11 "ChildFIRST" "ChildFIRST"
* #12 "Children Contact Services" "Children Contact Services"
* #13 "Community Visitors Scheme" "Community Visitors Scheme"
* #14 "CPP (Community Partners Program)" "CPP (Community Partners Program)"
* #15 "Closing the Gap (CTG)" "Closing the Gap (CTG)"
* #16 "Coordinated Veterans' Care (CVC) Program" "Coordinated Veterans' Care (CVC) Program"
* #17 "Day Program" "Day Program"
* #18 "Drop In Program" "Drop In Program"
* #19 "Early Years Program" "Early Years Program"
* #20 "Employee Assistance Program" "Employee Assistance Program"
* #21 "Home And Community Care (HACC)" "Home And Community Care (HACC)"
* #22 "Hospital Admission Risk Program (HARP)" "Hospital Admission Risk Program (HARP)"
* #23 "Hospital in the Home (HITH) Program" "Hospital in the Home (HITH) Program"
* #24 "ICTP (Intensive Community Treatment Program)" "ICTP (Intensive Community Treatment Program)"
* #25 "IFSS (Intensive Family Support Program)" "IFSS (Intensive Family Support Program)"
* #26 "JPET (Job Placement, Education and Training)" "JPET (Job Placement, Education and Training)"
* #27 "Koori Juvenile Justice Program" "Koori Juvenile Justice Program"
* #28 "Language Literacy and Numeracy Program" "Language Literacy and Numeracy Program"
* #29 "Life Skills Program" "Life Skills Program"
* #30 "LMP (Lifestyle Modification Program)" "LMP (Lifestyle Modification Program)"
* #31 "MedsCheck Program" "MedsCheck Program"
* #32 "Methadone/Buprenorphine Program" "Methadone/Buprenorphine Program"
* #33 "National Disabilities Insurance Scheme (NDIS)" "National Disabilities Insurance Scheme (NDIS)"
* #34 "National Diabetes Services Scheme (NDSS)" "National Diabetes Services Scheme (NDSS)"
* #35 "Needle/Syringe Program" "Needle/Syringe Program"
* #36 "nPEP Program" "nPEP Program"
* #37 "Personal Support Program" "Personal Support Program"
* #38 "Partners in Recovery (PIR) Program" "Partners in Recovery (PIR) Program"
* #39 "Pre-employment Program" "Pre-employment Program"
* #40 "Reconnect Program" "Reconnect Program"
* #41 "Sexual Abuse Counselling and Prevention Program (SACPP)" "Sexual Abuse Counselling and Prevention Program (SACPP)"
* #42 "Social Support Programs" "Social Support Programs"
* #43 "Supported Residential Service (SRS)" "Supported Residential Service (SRS)"
* #44 "Tasmanian Aboriginal Centre (TAC)" "Tasmanian Aboriginal Centre (TAC)"
* #45 "Victim Assistance Program" "Victim Assistance Program"
*/



