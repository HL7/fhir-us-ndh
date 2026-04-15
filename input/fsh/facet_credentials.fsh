Instance: FaCeT-credentialPropertiesCS
InstanceOf: CodeSystem
Title: "FaCeT Credential Properties Code System"
Description: """
FaCeT Credential Properties Code System
"""
Usage: #definition
* status = #active
* experimental = false
* caseSensitive = true
* content = #complete
* name = "FaCeTCredentialPropertiesCS"
* concept[+].code = #cred_org
* concept[=].display = "Credentialing Organization"
* concept[+].code = #cred_url
* concept[=].display = "URL for Credential Organization"
* concept[+].code = #description
* concept[=].display = "Description of the credential"
* concept[+].code = #is_multisource
* concept[=].display = "Indicates whether the credential is offered by multiple organizations"
* concept[+].code = #is_clinical
* concept[=].display = "Indicates whether the credential is clinical in nature"
* concept[+].code = #is_board_certification
* concept[=].display = "Indicates whether the credential is a board certification"

/* Source

Github file: https://github.com/ftrotter-gov/FaCeT/blob/main/csv/FACET_credential_codeset.csv

code -> .code
abbr -> .display
credential_name -> .definition
credentialing_organization_name -> .property.code #cred_org
credentialing_organization_url -> .property.code #cred_url
credential_description -> .property.code #description
is_multisource -> .property.code #is_multisource
is_clinical -> .property.code #is_clinical
is_board_certification -> .property.code #is_board_certification
*/
Instance: FaCeT-credentialCS
InstanceOf: CodeSystem
Title: "FaCeT Credential Code System"
Description: """
FaCeT Credential Code System
"""
Usage: #definition
* status = #active
* experimental = false
* caseSensitive = true
* title = "FaCeT Credential Code System"
* name = "FaCeTCredentialCS"
* description = """
FaCeT Credential Code System
"""
* content = #complete
//* url = "https://github.com/ftrotter-gov/FaCeT/blob/main/csv/FACET_credential_codeset.csv"
* version = "0.1.0"
* jurisdiction[0] = http://unstats.un.org/unsd/methods/m49/m49.htm#840 "United States of America"
* caseSensitive = true
* property[+].code = FaCeT-credentialPropertiesCS#cred_org
* property[=].description = "Credentialing Organization"
* property[=].type = #string
* property[+].code = FaCeT-credentialPropertiesCS#cred_url
* property[=].description = "URL for Credential Organization"
* property[=].type = #string
* property[+].code = FaCeT-credentialPropertiesCS#description
* property[=].description = "Description of the credential"
* property[=].type = #string
* property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* property[=].description = "Indicates whether the credential is offered by multiple organizations"
* property[=].type = #boolean
* property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* property[=].description = "Indicates whether the credential is clinical in nature"
* property[=].type = #boolean
* property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* property[=].description = "Indicates whether the credential is a board certification"
* property[=].type = #boolean

// FaCeT credential concepts generated from FACET_credential_codeset.csv
* concept[+].code = #DVM
* concept[=].display = "DVM"
* concept[=].definition = "Doctor of Veterinary Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Multiple veterinary schools"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Veterinary medicine doctorate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #VMD
* concept[=].display = "VMD"
* concept[=].definition = "Doctor of Veterinary Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Multiple veterinary schools"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Veterinary medicine doctorate (variant of DVM)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BVScAH
* concept[=].display = "BVScAH"
* concept[=].definition = "Bachelor of Veterinary Science and Animal Husbandry"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Bachelor degree in veterinary science with animal husbandry specialization"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CAC
* concept[=].display = "CAC"
* concept[=].definition = "Certified Animal Chiropractor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified chiropractor specializing in animal chiropractic care"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CVA
* concept[=].display = "CVA"
* concept[=].definition = "Certified Veterinary Acupuncturist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified veterinarian or practitioner specializing in veterinary acupuncture"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #DACVD
* concept[=].display = "DACVD"
* concept[=].definition = "Diplomate of the American College of Veterinary Dermatology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American College of Veterinary Dermatology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certification in veterinary dermatology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #DDS
* concept[=].display = "DDS"
* concept[=].definition = "Doctor of Dental Surgery"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Accredited dental schools"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.ada.org/education-careers/dental-education/dental-schools"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Doctoral degree in dentistry qualifying graduates to practice general dentistry"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #DMD
* concept[=].display = "DMD"
* concept[=].definition = "Doctor of Medicine in Dentistry"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Accredited dental schools"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.ada.org/education-careers/dental-education/dental-schools"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Doctoral degree in dentistry equivalent to DDS, qualifying graduates to practice general dentistry"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #PharmD
* concept[=].display = "PharmD"
* concept[=].definition = "Doctor of Pharmacy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "ACPE-accredited pharmacy schools"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.acpe-accredit.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional doctoral degree for pharmacists to provide pharmaceutical care and medication therapy management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #PsyD
* concept[=].display = "PsyD"
* concept[=].definition = "Doctor of Psychology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "APA-accredited psychology programs"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.apa.org/ed/accreditation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional doctoral degree in psychology emphasizing clinical practice and applied psychology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #DPT
* concept[=].display = "DPT"
* concept[=].definition = "Doctor of Physical Therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "CAPTE-accredited PT programs"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.capteonline.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Entry-level doctoral degree for physical therapists to diagnose and treat movement dysfunction"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #DC
* concept[=].display = "DC"
* concept[=].definition = "Doctor of Chiropractic"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "CCE-accredited chiropractic colleges"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.cce-usa.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Doctoral degree in chiropractic medicine focusing on diagnosis and treatment of neuromuscular disorders"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #OD
* concept[=].display = "OD"
* concept[=].definition = "Doctor of Optometry"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "ACOE-accredited optometry schools"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.theacoe.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Doctoral degree in optometry for comprehensive eye and vision care, including diagnosis and treatment of eye diseases"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #DPM
* concept[=].display = "DPM"
* concept[=].definition = "Doctor of Podiatric Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "CPME-accredited podiatric medical schools"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.cpme.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Doctoral degree in podiatric medicine for comprehensive foot and ankle care, including surgery"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #AuD
* concept[=].display = "AuD"
* concept[=].definition = "Doctor of Audiology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "CAA-accredited audiology programs"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://caa.asha.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional doctoral degree in audiology for diagnosis and treatment of hearing and balance disorders"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #DNP
* concept[=].display = "DNP"
* concept[=].definition = "Doctor of Nursing Practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "CCNE or ACEN-accredited nursing programs"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aacnnursing.org/DNP"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Practice-focused doctoral degree in nursing for advanced nursing practice and clinical leadership"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #ND
* concept[=].display = "ND"
* concept[=].definition = "Doctor of Naturopathic Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "CNME-accredited naturopathic medical schools"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cnme.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Doctoral degree in naturopathic medicine emphasizing natural healing methods and preventive care"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #OTD
* concept[=].display = "OTD"
* concept[=].definition = "Doctor of Occupational Therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "ACOTE-accredited OT programs"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aota.org/education/accreditation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Entry-level doctoral degree in occupational therapy for helping people participate in meaningful activities"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #NMD
* concept[=].display = "NMD"
* concept[=].definition = "Doctor of Naturopathic Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "CNME-accredited naturopathic medical schools"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cnme.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Doctoral degree in naturopathic medicine (alternative abbreviation to ND) emphasizing natural healing methods"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #OMD
* concept[=].display = "OMD"
* concept[=].definition = "Oriental Medicine Doctor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "ACAOM-accredited acupuncture and oriental medicine programs"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://acaom.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Doctoral degree in Oriental Medicine/Traditional Chinese Medicine including acupuncture and herbal medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BHMS
* concept[=].display = "BHMS"
* concept[=].definition = "Bachelor of Homeopathic Medicine and Surgery"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Bachelor degree in homeopathic medicine and surgical practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CCH
* concept[=].display = "CCH"
* concept[=].definition = "Certified in Classical Homeopathy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified practitioner of classical homeopathic medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #DHANP
* concept[=].display = "DHANP"
* concept[=].definition = "Diplomate of the Homeopathic Academy of Naturopathic Physicians"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Homeopathic Academy of Naturopathic Physicians"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Diplomate-level certification in homeopathic medicine for naturopathic physicians"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #DHt
* concept[=].display = "DHt"
* concept[=].definition = "Diplomate in Homeotherapeutics"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Diplomate certification in homeotherapeutic medicine and treatment"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #DNBHE
* concept[=].display = "DNBHE"
* concept[=].definition = "Diplomate of the National Board of Homeopathic Examiners"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board of Homeopathic Examiners"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Diplomate certification from the National Board of Homeopathic Examiners"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RS_Hom
* concept[=].display = "RS Hom"
* concept[=].definition = "Registered with the Society of Homeopaths"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Society of Homeopaths"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Registered homeopath with the Society of Homeopaths"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CCSP
* concept[=].display = "CCSP"
* concept[=].definition = "Certified Chiropractic Sports Physician"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Chiropractor certified in sports medicine and athletic injury treatment"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #DACBN
* concept[=].display = "DACBN"
* concept[=].definition = "Diplomate of American Chiropractic Board of Nutrition"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Chiropractic Board of Nutrition"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Diplomate certification in chiropractic nutrition and dietary counseling"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CSPOMM
* concept[=].display = "CSPOMM"
* concept[=].definition = "Certified Specialty of Proficiency in Osteopathic Manipulation Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified specialty in osteopathic manipulative medicine techniques"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AOBSPOMM
* concept[=].display = "AOBSPOMM"
* concept[=].definition = "American Osteopathic Board of Special Proficiency in Osteopathic Manipulative Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Osteopathic Board of Special Proficiency in OMM"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certification in osteopathic manipulative medicine specialty"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CAAPM
* concept[=].display = "CAAPM"
* concept[=].definition = "Clinical Associate of the American Academy of Pain Management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Academy of Pain Management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Clinical associate certification in pain management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #DAAPM
* concept[=].display = "DAAPM"
* concept[=].definition = "Diplomate of American Academy of Pain Management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Academy of Pain Management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Diplomate certification in pain management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #DBA
* concept[=].display = "DBA"
* concept[=].definition = "Doctor of Business Administration"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Doctoral degree in business administration focusing on applied research and advanced business practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #DED
* concept[=].display = "DED"
* concept[=].definition = "Doctor of Education"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional doctoral degree in education for advanced educational leadership and practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #PHE
* concept[=].display = "PHE"
* concept[=].definition = "Doctor of Engineering"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional doctoral degree in engineering focusing on advanced engineering practice and applied research"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #PHD
* concept[=].display = "PHD"
* concept[=].definition = "Doctor of Philosophy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Research doctoral degree representing the highest level of academic achievement in various fields of study"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #PHS
* concept[=].display = "PHS"
* concept[=].definition = "Doctor of Science"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Research or professional doctoral degree in scientific disciplines"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #JD
* concept[=].display = "JD"
* concept[=].definition = "Juris Doctor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional doctoral degree in law required for legal practice in most jurisdictions"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CRNA
* concept[=].display = "CRNA"
* concept[=].definition = "Certified Registered Nurse Anesthetist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board of Certification and Recertification for Nurse Anesthetists"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nbcrna.com"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Advanced practice registered nurse specializing in anesthesia care, providing anesthesia services in various healthcare settings"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #FNP
* concept[=].display = "FNP"
* concept[=].definition = "Family Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Advanced practice registered nurse providing primary care across the lifespan to individuals and families"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #PA-C
* concept[=].display = "PA-C"
* concept[=].definition = "Physician Assistant Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Commission on Certification of Physician Assistants"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nccpa.net"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Healthcare professional licensed to practice medicine with physician supervision, certified by the national certifying body"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PA
* concept[=].display = "PA"
* concept[=].definition = "Physician Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Healthcare professional licensed to practice medicine with physician supervision"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #APRN-CNP
* concept[=].display = "APRN-CNP"
* concept[=].definition = "Advanced Practice Registered Nurse - Certified Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Advanced practice registered nurse with specialized graduate education and national certification in a nurse practitioner role"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #NP
* concept[=].display = "NP"
* concept[=].definition = "Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Advanced practice registered nurse with graduate education providing healthcare services including diagnosis, treatment, and management of medical conditions"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #ARNP
* concept[=].display = "ARNP"
* concept[=].definition = "Advanced Registered Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Advanced practice registered nurse with graduate education and expanded scope of practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CRNP
* concept[=].display = "CRNP"
* concept[=].definition = "Certified Registered Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified registered nurse with advanced education and training to provide comprehensive healthcare services"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #FNP-BC
* concept[=].display = "FNP-BC"
* concept[=].definition = "Family Nurse Practitioner Board Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/ancc"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified family nurse practitioner providing comprehensive primary care to individuals and families"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #NP-C
* concept[=].display = "NP-C"
* concept[=].definition = "Nurse Practitioner Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Nationally certified nurse practitioner with advanced education and training"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNP
* concept[=].display = "CNP"
* concept[=].definition = "Certified Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified nurse practitioner with advanced practice nursing education and national certification"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNM
* concept[=].display = "CNM"
* concept[=].definition = "Certified Nurse Midwife"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Midwifery Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.amcbmidwife.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Advanced practice registered nurse providing comprehensive reproductive healthcare and midwifery services to women"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #APN
* concept[=].display = "APN"
* concept[=].definition = "Advanced Practice Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Registered nurse with advanced graduate education and clinical training in a specialized area of nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #PMHNP
* concept[=].display = "PMHNP"
* concept[=].definition = "Psychiatric Mental Health Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Advanced practice registered nurse specializing in mental health care, diagnosis and treatment of psychiatric disorders"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #PMHNP-BC
* concept[=].display = "PMHNP-BC"
* concept[=].definition = "Psychiatric Mental Health Nurse Practitioner Board Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/ancc"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified psychiatric mental health nurse practitioner providing comprehensive mental health services"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PAC
* concept[=].display = "PAC"
* concept[=].definition = "Physician Assistant Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified physician assistant licensed to practice medicine under physician supervision"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CPNP
* concept[=].display = "CPNP"
* concept[=].definition = "Certified Pediatric Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Pediatric Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.pncb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified nurse practitioner specializing in comprehensive healthcare for infants, children, and adolescents"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ANP
* concept[=].display = "ANP"
* concept[=].definition = "Adult Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Nurse practitioner specializing in healthcare for adults across the adult lifespan"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #APNP
* concept[=].display = "APNP"
* concept[=].definition = "Advanced Practice Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Advanced practice nurse with graduate education providing comprehensive healthcare services"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #PNP
* concept[=].display = "PNP"
* concept[=].definition = "Pediatric Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Nurse practitioner specializing in healthcare for infants, children, and adolescents"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #AGACNP-BC
* concept[=].display = "AGACNP-BC"
* concept[=].definition = "Adult-Gerontology Acute Care Nurse Practitioner Board Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/ancc"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified nurse practitioner specializing in acute care for adults and older adults"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RPA-C
* concept[=].display = "RPA-C"
* concept[=].definition = "Registered Physician Assistant Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Registered and certified physician assistant licensed to practice medicine under physician supervision"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ACNP
* concept[=].display = "ACNP"
* concept[=].definition = "Acute Care Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Nurse practitioner specializing in acute and critical care across various healthcare settings"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #NNP
* concept[=].display = "NNP"
* concept[=].definition = "Neonatal Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Nurse practitioner specializing in the care of newborns, especially high-risk and critically ill neonates"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #WHNP
* concept[=].display = "WHNP"
* concept[=].definition = "Womens Health Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Nurse practitioner specializing in comprehensive healthcare for women across the lifespan"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CPNP-PC
* concept[=].display = "CPNP-PC"
* concept[=].definition = "Certified Pediatric Nurse Practitioner Primary Care"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Pediatric Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.pncb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified nurse practitioner providing primary care to infants, children, and adolescents"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CFNP
* concept[=].display = "CFNP"
* concept[=].definition = "Certified Family Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified nurse practitioner providing comprehensive primary care to individuals and families"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AGPCNP-BC
* concept[=].display = "AGPCNP-BC"
* concept[=].definition = "Adult-Gerontology Primary Care Nurse Practitioner Board Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/ancc"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified nurse practitioner providing primary care to adults and older adults"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AGNP
* concept[=].display = "AGNP"
* concept[=].definition = "Adult-Gerontology Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Nurse practitioner specializing in healthcare for adults and older adults across care settings"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #WHNP-BC
* concept[=].display = "WHNP-BC"
* concept[=].definition = "Womens Health Nurse Practitioner Board Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified nurse practitioner specializing in comprehensive womens health care"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PA-S
* concept[=].display = "PA-S"
* concept[=].definition = "Physician Assistant Student"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Student enrolled in an accredited physician assistant educational program"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #NNP-BC
* concept[=].display = "NNP-BC"
* concept[=].definition = "Neonatal Nurse Practitioner Board Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified nurse practitioner specializing in neonatal care and high-risk newborn management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ANP-BC
* concept[=].display = "ANP-BC"
* concept[=].definition = "Adult Nurse Practitioner Board Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/ancc"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified nurse practitioner specializing in adult healthcare across the adult lifespan"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ACNP-BC
* concept[=].display = "ACNP-BC"
* concept[=].definition = "Acute Care Nurse Practitioner Board Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/ancc"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified nurse practitioner specializing in acute and critical care management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #MPAS
* concept[=].display = "MPAS"
* concept[=].definition = "Master of Physician Assistant Studies"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Masters degree in physician assistant studies from an accredited educational program"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CPNP-AC
* concept[=].display = "CPNP-AC"
* concept[=].definition = "Certified Pediatric Nurse Practitioner - Acute Care"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Pediatric Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.pncb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified nurse practitioner specializing in acute care management for critically ill infants, children, and adolescents"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AGPCNP
* concept[=].display = "AGPCNP"
* concept[=].definition = "Adult Gerontology Primary Care Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Nurse practitioner providing primary care services to adults and older adults in outpatient and community settings"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #RNP
* concept[=].display = "RNP"
* concept[=].definition = "Registered Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Registered nurse with advanced practice education and licensing to provide comprehensive healthcare services"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AG-ACNP
* concept[=].display = "AG-ACNP"
* concept[=].definition = "Adult Gerontology - Acute Care Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Nurse practitioner specializing in acute care management for adult and geriatric patients in hospital settings"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ARNP-C
* concept[=].display = "ARNP-C"
* concept[=].definition = "Advanced Registered Nurse Practitioner Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Advanced registered nurse practitioner with national certification and expanded scope of practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ANP-C
* concept[=].display = "ANP-C"
* concept[=].definition = "Adult Nurse Practitioner Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified nurse practitioner specializing in comprehensive healthcare for adult patients"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RPA
* concept[=].display = "RPA"
* concept[=].definition = "Registered Physician Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Registered physician assistant licensed to practice medicine under physician supervision with expanded clinical privileges"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #FAAPA
* concept[=].display = "FAAPA"
* concept[=].definition = "Fellow of the American Academy of Physician Assistants"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Academy of Physician Assistants"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aapa.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Fellowship recognizing leadership in physician assistant profession"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #EdD
* concept[=].display = "EdD"
* concept[=].definition = "Doctor of Education"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional doctoral degree for advanced practice in education leadership and policy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #DPH
* concept[=].display = "DPH"
* concept[=].definition = "Doctor of Public Health"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional doctoral degree focusing on population health, policy, and public health practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MS
* concept[=].display = "MS"
* concept[=].definition = "Master of Science"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate degree in scientific, technical, or mathematical fields"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MPH
* concept[=].display = "MPH"
* concept[=].definition = "Master of Public Health"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional masters degree in public health practice and research"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MA
* concept[=].display = "MA"
* concept[=].definition = "Master of Arts"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate degree in liberal arts, humanities, and social sciences"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MBA
* concept[=].display = "MBA"
* concept[=].definition = "Master of Business Administration"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional masters degree in business management and administration"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MSW
* concept[=].display = "MSW"
* concept[=].definition = "Master of Social Work"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional masters degree for clinical and macro social work practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MSED
* concept[=].display = "MSED"
* concept[=].definition = "Master of Science in Education"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate degree focusing on educational theory, research, and practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MED
* concept[=].display = "MED"
* concept[=].definition = "Master of Education"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional masters degree for educational leadership and teaching"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MPA
* concept[=].display = "MPA"
* concept[=].definition = "Master of Public Administration"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional masters degree for public sector management and policy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MHA
* concept[=].display = "MHA"
* concept[=].definition = "Master of Health Administration"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional masters degree for healthcare management and administration"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MASTERS
* concept[=].display = "MASTERS"
* concept[=].definition = "Masters Degree"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "General masters level academic degree"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BA
* concept[=].display = "BA"
* concept[=].definition = "Bachelor of Arts"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Undergraduate degree in liberal arts, humanities, and social sciences"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BS
* concept[=].display = "BS"
* concept[=].definition = "Bachelor of Science"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Undergraduate degree in scientific, technical, or mathematical fields"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BSW
* concept[=].display = "BSW"
* concept[=].definition = "Bachelor of Social Work"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional undergraduate degree for entry-level social work practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #AA
* concept[=].display = "AA"
* concept[=].definition = "Associate of Arts"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Two-year undergraduate degree in liberal arts and general studies"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CPA
* concept[=].display = "CPA"
* concept[=].definition = "Certified Public Accountant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Institute of CPAs"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aicpa.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional certification for accounting and auditing practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CSFA
* concept[=].display = "CSFA"
* concept[=].definition = "Certified School Food Administrator"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "School Nutrition Association"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://schoolnutrition.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional certification for school food service management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #HIS
* concept[=].display = "HIS"
* concept[=].definition = "Health Information Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional specializing in health information management and systems"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CEO
* concept[=].display = "CEO"
* concept[=].definition = "Chief Executive Officer"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Executive leadership position responsible for organizational management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LNHA
* concept[=].display = "LNHA"
* concept[=].definition = "Licensed Nursing Home Administrator"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "State-licensed administrator for long-term care facilities"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #AO
* concept[=].display = "AO"
* concept[=].definition = "Administrative Officer"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Administrative professional responsible for organizational operations"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CRM
* concept[=].display = "CRM"
* concept[=].definition = "Certified Risk Manager"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Risk and Insurance Management Society"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.rims.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional certification in organizational risk management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #NHA
* concept[=].display = "NHA"
* concept[=].definition = "Nursing Home Administrator"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Administrator responsible for nursing home operations and compliance"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #ADMINISTRATOR
* concept[=].display = "ADMINISTRATOR"
* concept[=].definition = "Administrator"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "General administrative role in healthcare or organizational settings"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #STUDENT
* concept[=].display = "STUDENT"
* concept[=].definition = "Student"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Individual enrolled in educational or training programs"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CMP
* concept[=].display = "CMP"
* concept[=].definition = "Certified Meeting Professional"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Events Industry Council"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.eventscouncil.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional certification for meeting and event planning"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ESQ
* concept[=].display = "ESQ"
* concept[=].definition = "Esquire"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional title for licensed attorneys admitted to the bar"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #AAS
* concept[=].display = "AAS"
* concept[=].definition = "Associate of Applied Science"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Two-year degree typically in technical or applied fields"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #ASG
* concept[=].display = "ASG"
* concept[=].definition = "Affiliated Study Group"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Member of affiliated study group in medical specialty"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #HASG
* concept[=].display = "HASG"
* concept[=].definition = "Homeopathic Affiliated Study Group"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Member of homeopathic affiliated study group"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #HSG
* concept[=].display = "HSG"
* concept[=].definition = "Homoeopathic Study Group"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Member of homeopathic study group"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #SG
* concept[=].display = "SG"
* concept[=].definition = "Study Group"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Member of medical specialty study group"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LL
* concept[=].display = "LL"
* concept[=].definition = "Laymens League"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Member of medical laymens league"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #HLL
* concept[=].display = "HLL"
* concept[=].definition = "Homoeopathic Laymens League"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Member of homeopathic laymens league"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #RN
* concept[=].display = "RN"
* concept[=].definition = "Registered Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LPN
* concept[=].display = "LPN"
* concept[=].definition = "Licensed Practical Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #LVN
* concept[=].display = "LVN"
* concept[=].definition = "Licensed Vocational Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNA
* concept[=].display = "CNA"
* concept[=].definition = "Certified Nursing Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RNFA
* concept[=].display = "RNFA"
* concept[=].definition = "Registered Nurse First Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #BSN
* concept[=].display = "BSN"
* concept[=].definition = "Bachelor of Science in Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #STNA
* concept[=].display = "STNA"
* concept[=].definition = "State Tested Nursing Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #MSN
* concept[=].display = "MSN"
* concept[=].definition = "Master of Science in Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #NURSE
* concept[=].display = "NURSE"
* concept[=].definition = "Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #GNP-BC
* concept[=].display = "GNP-BC"
* concept[=].definition = "Gerontological Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PPCNP-BC
* concept[=].display = "PPCNP-BC"
* concept[=].definition = "Pediatric Primary Care Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #SNP-BC
* concept[=].display = "SNP-BC"
* concept[=].definition = "School Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ADM-BC
* concept[=].display = "ADM-BC"
* concept[=].definition = "Advanced Diabetes Management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ENP-BC
* concept[=].display = "ENP-BC"
* concept[=].definition = "Emergency Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AGCNS-BC
* concept[=].display = "AGCNS-BC"
* concept[=].definition = "Adult-Gerontology Clinical Nurse Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ACNS-BC
* concept[=].display = "ACNS-BC"
* concept[=].definition = "Adult Health Clinical Nurse Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PMHCNS-BC
* concept[=].display = "PMHCNS-BC"
* concept[=].definition = "Psychiatric Mental Health Clinical Nurse Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certification for clinical nurse specialists in psychiatric and mental health nursing."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #GCNS-BC
* concept[=].display = "GCNS-BC"
* concept[=].definition = "Gerontological Clinical Nurse Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #HHCNS-BC
* concept[=].display = "HHCNS-BC"
* concept[=].definition = "Home Health Clinical Nurse Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PCNS-BC
* concept[=].display = "PCNS-BC"
* concept[=].definition = "Pediatric Clinical Nurse Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PHCNS-BC
* concept[=].display = "PHCNS-BC"
* concept[=].definition = "Public/Community Health Clinical Nurse Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNS-BC
* concept[=].display = "CNS-BC"
* concept[=].definition = "Clinical Nurse Specialist Core"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AMB-BC
* concept[=].display = "AMB-BC"
* concept[=].definition = "Ambulatory Care Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CV-BC
* concept[=].display = "CV-BC"
* concept[=].definition = "Cardiac-Vascular Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #GERO-BC
* concept[=].display = "GERO-BC"
* concept[=].definition = "Gerontological Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #NI-BC
* concept[=].display = "NI-BC"
* concept[=].definition = "Informatics Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #MEDSURG-BC
* concept[=].display = "MEDSURG-BC"
* concept[=].definition = "Medical-Surgical Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #NE-BC
* concept[=].display = "NE-BC"
* concept[=].definition = "Nurse Executive"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #NEA-BC
* concept[=].display = "NEA-BC"
* concept[=].definition = "Nurse Executive Advanced"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CMGT-BC
* concept[=].display = "CMGT-BC"
* concept[=].definition = "Nursing Case Management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #NPD-BC
* concept[=].display = "NPD-BC"
* concept[=].definition = "Nursing Professional Development"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PMGT-BC
* concept[=].display = "PMGT-BC"
* concept[=].definition = "Pain Management Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PED-BC
* concept[=].display = "PED-BC"
* concept[=].definition = "Pediatric Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PMH-BC
* concept[=].display = "PMH-BC"
* concept[=].definition = "Psychiatric-Mental Health Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CCCTM
* concept[=].display = "CCCTM"
* concept[=].definition = "Care Coordination and Transition Management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RN-BC_1
* concept[=].display = "RN-BC"
* concept[=].definition = "Certified Vascular Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RN-BC_2
* concept[=].display = "RN-BC"
* concept[=].definition = "College Health Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RN-BC_3
* concept[=].display = "RN-BC"
* concept[=].definition = "Community Health Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RN-BC_4
* concept[=].display = "RN-BC"
* concept[=].definition = "Faith Community Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AFN-BC
* concept[=].display = "AFN-BC"
* concept[=].definition = "Forensic Nursing Advanced"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RN-BC_5
* concept[=].display = "RN-BC"
* concept[=].definition = "General Nursing Practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AGN-BC
* concept[=].display = "AGN-BC"
* concept[=].definition = "Genetics Nursing Advanced"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RN-BC_6
* concept[=].display = "RN-BC"
* concept[=].definition = "Hemostasis Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RN-BC_7
* concept[=].display = "RN-BC"
* concept[=].definition = "High-Risk Perinatal Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RN-BC_8
* concept[=].display = "RN-BC"
* concept[=].definition = "Home Health Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RN-BC_9
* concept[=].display = "RN-BC"
* concept[=].definition = "Perinatal Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PHNA-BC
* concept[=].display = "PHNA-BC"
* concept[=].definition = "Public Health Nursing Advanced"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RN-BC_10
* concept[=].display = "RN-BC"
* concept[=].definition = "Rheumatology Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RN-BC_11
* concept[=].display = "RN-BC"
* concept[=].definition = "School Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RN-BC_12
* concept[=].display = "RN-BC"
* concept[=].definition = "General Nursing Practice Certification"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #NHDP-BC
* concept[=].display = "NHDP-BC"
* concept[=].definition = "National Healthcare Disaster"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #FNP-C
* concept[=].display = "FNP-C"
* concept[=].definition = "Family Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Academy of Nurse Practitioners Certification Board (AANPCB)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aanpcert.org/certifications"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AGNP-C
* concept[=].display = "AGNP-C"
* concept[=].definition = "Adult-Gerontology Primary Care Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Academy of Nurse Practitioners Certification Board (AANPCB)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aanpcert.org/certifications"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ENP-C
* concept[=].display = "ENP-C"
* concept[=].definition = "Emergency Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Academy of Nurse Practitioners Certification Board (AANPCB)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aanpcert.org/certifications"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PMHNP-C
* concept[=].display = "PMHNP-C"
* concept[=].definition = "Psychiatric Mental Health Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Academy of Nurse Practitioners Certification Board (AANPCB)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aanpcert.org/certifications"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CPN
* concept[=].display = "CPN"
* concept[=].definition = "Certified Pediatric Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Pediatric Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.pncb.org/certifications"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PMHS
* concept[=].display = "PMHS"
* concept[=].definition = "Pediatric Primary Care Mental Health Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Pediatric Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.pncb.org/certifications"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CCRN
* concept[=].display = "CCRN"
* concept[=].definition = "Critical Care Registered Nurse (Adult)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CCRN-P
* concept[=].display = "CCRN-P"
* concept[=].definition = "Critical Care Registered Nurse (Pediatric)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CCRN-N
* concept[=].display = "CCRN-N"
* concept[=].definition = "Critical Care Registered Nurse (Neonatal)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CCRN-K
* concept[=].display = "CCRN-K"
* concept[=].definition = "Critical Care Registered Nurse (Knowledge Professional)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CCRN-E
* concept[=].display = "CCRN-E"
* concept[=].definition = "Critical Care Registered Nurse (Tele-ICU)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PCCN
* concept[=].display = "PCCN"
* concept[=].definition = "Progressive Care Certified Nurse (Adult)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PCCN-K
* concept[=].display = "PCCN-K"
* concept[=].definition = "Progressive Care Certified Nurse (Knowledge Professional)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CMC
* concept[=].display = "CMC"
* concept[=].definition = "Cardiac Medicine (Adult)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CSC
* concept[=].display = "CSC"
* concept[=].definition = "Cardiac Surgery (Adult)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ACNPC-AG
* concept[=].display = "ACNPC-AG"
* concept[=].definition = "Acute Care Nurse Practitioner Certified (Adult-Gerontology)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ACCNS-AG
* concept[=].display = "ACCNS-AG"
* concept[=].definition = "Acute Care Clinical Nurse Specialist (Adult-Gerontology)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ACCNS-P
* concept[=].display = "ACCNS-P"
* concept[=].definition = "Acute Care Clinical Nurse Specialist (Pediatric)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ACCNS-N
* concept[=].display = "ACCNS-N"
* concept[=].definition = "Acute Care Clinical Nurse Specialist (Neonatal)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RNC-OB
* concept[=].display = "RNC-OB"
* concept[=].definition = "Inpatient Obstetric Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RNC-MNN
* concept[=].display = "RNC-MNN"
* concept[=].definition = "Maternal Newborn Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RNC-LRN
* concept[=].display = "RNC-LRN"
* concept[=].definition = "Low-Risk Neonatal Intensive Care Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RNC-NIC
* concept[=].display = "RNC-NIC"
* concept[=].definition = "Neonatal Intensive Care Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RNC-IAP
* concept[=].display = "RNC-IAP"
* concept[=].definition = "Inpatient Antepartum Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #C-EFM
* concept[=].display = "C-EFM"
* concept[=].definition = "Electronic Fetal Monitoring"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #C-NPT
* concept[=].display = "C-NPT"
* concept[=].definition = "Neonatal Pediatric Transport"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #C-NNIC
* concept[=].display = "C-NNIC"
* concept[=].definition = "Neonatal Neuro-Intensive Care"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #C-ELBW
* concept[=].display = "C-ELBW"
* concept[=].definition = "Care of the Extremely Low Birth Weight Neonate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #C-ONQS
* concept[=].display = "C-ONQS"
* concept[=].definition = "Obstetric and Neonatal Quality and Safety"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #C-RHI
* concept[=].display = "C-RHI"
* concept[=].definition = "Reproductive Health and Infertility"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #C-OBE
* concept[=].display = "C-OBE"
* concept[=].definition = "Obstetric Emergencies"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #OCN
* concept[=].display = "OCN"
* concept[=].definition = "Oncology Certified Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Oncology Nursing Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.oncc.org/certification-renewal-guide"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CPHON
* concept[=].display = "CPHON"
* concept[=].definition = "Certified Pediatric Hematology Oncology Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Oncology Nursing Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.oncc.org/certification-renewal-guide"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CBCN
* concept[=].display = "CBCN"
* concept[=].definition = "Certified Breast Care Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Oncology Nursing Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.oncc.org/certification-renewal-guide"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #BMTCN
* concept[=].display = "BMTCN"
* concept[=].definition = "Blood & Marrow Transplant Certified Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Oncology Nursing Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.oncc.org/certification-renewal-guide"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AOCNP
* concept[=].display = "AOCNP"
* concept[=].definition = "Advanced Oncology Certified Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Oncology Nursing Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.oncc.org/certification-renewal-guide"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AOCNS
* concept[=].display = "AOCNS"
* concept[=].definition = "Advanced Oncology Certified Clinical Nurse Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Oncology Nursing Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.oncc.org/certification-renewal-guide"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CPON
* concept[=].display = "CPON"
* concept[=].definition = "Certified Pediatric Oncology Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Oncology Nursing Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.oncc.org/certification-renewal-guide"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AOCN
* concept[=].display = "AOCN"
* concept[=].definition = "Advanced Oncology Certified Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Oncology Nursing Certification Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.oncc.org/certification-renewal-guide"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CEN
* concept[=].display = "CEN"
* concept[=].definition = "Certified Emergency Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Board of Certification for Emergency Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://bcen.org/cen/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CFRN
* concept[=].display = "CFRN"
* concept[=].definition = "Certified Flight Registered Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Board of Certification for Emergency Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://bcen.org/cen/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CPEN
* concept[=].display = "CPEN"
* concept[=].definition = "Certified Pediatric Emergency Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Board of Certification for Emergency Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://bcen.org/cen/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CTRN
* concept[=].display = "CTRN"
* concept[=].definition = "Certified Transport Registered Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Board of Certification for Emergency Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://bcen.org/cen/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #TCRN
* concept[=].display = "TCRN"
* concept[=].definition = "Trauma Certified Registered Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Board of Certification for Emergency Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://bcen.org/cen/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CBRN
* concept[=].display = "CBRN"
* concept[=].definition = "Certified Burn Registered Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Board of Certification for Emergency Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://bcen.org/cen/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AACRN
* concept[=].display = "AACRN"
* concept[=].definition = "Advanced HIV/AIDS Certified Registered Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "HIV/AIDS Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://hancb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ACRN
* concept[=].display = "ACRN"
* concept[=].definition = "HIV/AIDS Certified Registered Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "HIV/AIDS Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://hancb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ACLPN
* concept[=].display = "ACLPN"
* concept[=].definition = "HIV/AIDS Certified LPN/LVN"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "HIV/AIDS Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://hancb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ACHPN
* concept[=].display = "ACHPN"
* concept[=].definition = "Advanced Certified Hospice and Palliative Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Hospice and Palliative Credentialing Center"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://advancingexpertcare.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CHPN
* concept[=].display = "CHPN"
* concept[=].definition = "Certified Hospice and Palliative Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Hospice and Palliative Credentialing Center"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://advancingexpertcare.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CHPLN
* concept[=].display = "CHPLN"
* concept[=].definition = "Certified Hospice and Palliative Licensed Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Hospice and Palliative Credentialing Center"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://advancingexpertcare.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CHPPN
* concept[=].display = "CHPPN"
* concept[=].definition = "Certified Hospice and Palliative Pediatric Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Hospice and Palliative Credentialing Center"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://advancingexpertcare.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CHPNA
* concept[=].display = "CHPNA"
* concept[=].definition = "Certified Hospice and Palliative Nursing Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Hospice and Palliative Credentialing Center"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://advancingexpertcare.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CPLC
* concept[=].display = "CPLC"
* concept[=].definition = "Certified in Perinatal Loss Care"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Hospice and Palliative Credentialing Center"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://advancingexpertcare.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AE-C
* concept[=].display = "AE-C"
* concept[=].definition = "Certified Asthma Educator"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board for Respiratory Care"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://nbrc.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AHN-BC
* concept[=].display = "AHN-BC"
* concept[=].definition = "Advanced Holistic Nurse Board Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Holistic Nurses Credentialing Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://ahncc.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #APHN-BC
* concept[=].display = "APHN-BC"
* concept[=].definition = "Advanced Practice Holistic Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Holistic Nurses Credentialing Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://ahncc.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #HN-BC
* concept[=].display = "HN-BC"
* concept[=].definition = "Holistic Nurse Board Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Holistic Nurses Credentialing Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://ahncc.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #HNB-BC
* concept[=].display = "HNB-BC"
* concept[=].definition = "Holistic Baccalaureate Nurse Board Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Holistic Nurses Credentialing Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://ahncc.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #HWNC-BC
* concept[=].display = "HWNC-BC"
* concept[=].definition = "Health and Wellness Nurse Coach Board Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Holistic Nurses Credentialing Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://ahncc.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #NC-BC
* concept[=].display = "NC-BC"
* concept[=].definition = "Nurse Coach Board Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Holistic Nurses Credentialing Corporation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://ahncc.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AWCC
* concept[=].display = "AWCC"
* concept[=].definition = "Advanced Wound Care Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Alliance of Wound Care and Ostomy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://nawccb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #OMS
* concept[=].display = "OMS"
* concept[=].definition = "Ostomy Management Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Alliance of Wound Care and Ostomy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://nawccb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #WCC
* concept[=].display = "WCC"
* concept[=].definition = "Wound Care Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Alliance of Wound Care and Ostomy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://nawccb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CCCN
* concept[=].display = "CCCN"
* concept[=].definition = "Certified Continence Care Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CCCN-AP
* concept[=].display = "CCCN-AP"
* concept[=].definition = "Certified Continence Care Nurse-Advanced Practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CFCN
* concept[=].display = "CFCN"
* concept[=].definition = "Certified Foot Care Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #COCN
* concept[=].display = "COCN"
* concept[=].definition = "Certified Ostomy Care Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #COCN-AP
* concept[=].display = "COCN-AP"
* concept[=].definition = "Certified Ostomy Care Nurse-Advanced Practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CWCN
* concept[=].display = "CWCN"
* concept[=].definition = "Certified Wound Care Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CWCN-AP
* concept[=].display = "CWCN-AP"
* concept[=].definition = "Certified Wound Care Nurse-Advanced Practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CWOCN
* concept[=].display = "CWOCN"
* concept[=].definition = "Certified Wound Ostomy Continence Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CWOCN-AP
* concept[=].display = "CWOCN-AP"
* concept[=].definition = "Certified Wound Ostomy Continence Nurse-Advanced Practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CWON
* concept[=].display = "CWON"
* concept[=].definition = "Certified Wound Ostomy Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CWON-AP
* concept[=].display = "CWON-AP"
* concept[=].definition = "Certified Wound Ostomy Nurse-Advanced Practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #BC-ADM
* concept[=].display = "BC-ADM"
* concept[=].definition = "Board Certified-Advanced Diabetes Management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Certification Board for Diabetes Educators"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://ncbde.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CDCES
* concept[=].display = "CDCES"
* concept[=].definition = "Certified Diabetes Care and Education Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Certification Board for Diabetes Care and Education"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cbdce.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CHFN
* concept[=].display = "CHFN"
* concept[=].definition = "Certified Heart Failure Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Heart Failure Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://aahfn.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CHFN-K
* concept[=].display = "CHFN-K"
* concept[=].definition = "Non-Clinical Heart Failure Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Heart Failure Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://aahfn.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #IBCLC
* concept[=].display = "IBCLC"
* concept[=].definition = "International Board Certified Lactation Consultant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "International Board of Lactation Consultant Examiners"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://iblce.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CLC
* concept[=].display = "CLC"
* concept[=].definition = "Certified Lactation Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Center for Breastfeeding"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://centerforbreastfeeding.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CIC
* concept[=].display = "CIC"
* concept[=].definition = "Certified in Infection Control"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Certification Board of Infection Control and Epidemiology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cbic.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #NCSN
* concept[=].display = "NCSN"
* concept[=].definition = "National Certified School Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board for Certification of School Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://nbcsn.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CGRN
* concept[=].display = "CGRN"
* concept[=].definition = "Certified Gastroenterology Registered Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Certification for Gastroenterology Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://abcgn.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CRN_1
* concept[=].display = "CRN"
* concept[=].definition = "Certified Radiologic Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Association for Radiologic and Imaging Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://arinursing.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CRNO
* concept[=].display = "CRNO"
* concept[=].definition = "Certification for Registered Nurses of Ophthalmology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Society of Ophthalmic Registered Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://asorn.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CORLN
* concept[=].display = "CORLN"
* concept[=].definition = "Certified Otorhinolaryngology Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Society of Otorhinolaryngology and Head-Neck Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://sohnnurse.com"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNRN
* concept[=].display = "CNRN"
* concept[=].definition = "Certified Neuroscience Registered Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Neuroscience Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://abnncertification.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #SCRN
* concept[=].display = "SCRN"
* concept[=].definition = "Stroke Certified Registered Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Neuroscience Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://abnncertification.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CUA
* concept[=].display = "CUA"
* concept[=].definition = "Certified Urologic Associate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Certification Board for Urologic Nurses and Associates"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cbuna.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CUNP
* concept[=].display = "CUNP"
* concept[=].definition = "Certified Urologic Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Certification Board for Urologic Nurses and Associates"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cbuna.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CURN
* concept[=].display = "CURN"
* concept[=].definition = "Certified Urologic Registered Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Certification Board for Urologic Nurses and Associates"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cbuna.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CRRN
* concept[=].display = "CRRN"
* concept[=].definition = "Certified Rehabilitation Registered Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Rehabilitation Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://rehabnurse.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CANS
* concept[=].display = "CANS"
* concept[=].definition = "Certified Aesthetic Nurse Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Plastic Surgical Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://psncb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CPSN
* concept[=].display = "CPSN"
* concept[=].definition = "Certified Plastic Surgical Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Plastic Surgical Nursing Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://psncb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CAPA
* concept[=].display = "CAPA"
* concept[=].definition = "Certified Ambulatory Perianesthesia Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Perianesthesia Nursing Certification"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cpancapa.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CPAN
* concept[=].display = "CPAN"
* concept[=].definition = "Certified Post Anesthesia Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Perianesthesia Nursing Certification"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cpancapa.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CFPN
* concept[=].display = "CFPN"
* concept[=].definition = "Certified Foundational Perioperative Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Competency & Credentialing Institute"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cc-institute.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNOR
* concept[=].display = "CNOR"
* concept[=].definition = "Certified Perioperative Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Competency & Credentialing Institute"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cc-institute.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNS-CP
* concept[=].display = "CNS-CP"
* concept[=].definition = "Certified Clinical Nurse Specialist Perioperative"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Competency & Credentialing Institute"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cc-institute.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNAMB
* concept[=].display = "CNAMB"
* concept[=].definition = "Certified Ambulatory Surgery Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Competency & Credentialing Institute"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cc-institute.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CSSM
* concept[=].display = "CSSM"
* concept[=].definition = "Certified Surgical Services Manager"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Competency & Credentialing Institute"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cc-institute.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #NPDA-BC
* concept[=].display = "NPDA-BC"
* concept[=].definition = "Nursing Professional Development Advanced Board Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Competency & Credentialing Institute"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cc-institute.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CMSRN
* concept[=].display = "CMSRN"
* concept[=].definition = "Certified Medical-Surgical Registered Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Academy of Medical-Surgical Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://amsn.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CENP
* concept[=].display = "CENP"
* concept[=].definition = "Certified in Executive Nursing Practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Organization for Nursing Leadership"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://aonl.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNML
* concept[=].display = "CNML"
* concept[=].definition = "Nurse Manager and Leader"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Organization for Nursing Leadership"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://aonl.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNE
* concept[=].display = "CNE"
* concept[=].definition = "Certified Nurse Educator"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National League for Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://nln.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNE-cl
* concept[=].display = "CNE-cl"
* concept[=].definition = "Certified Academic Clinical Nurse Educator"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National League for Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://nln.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNL
* concept[=].display = "CNL"
* concept[=].definition = "Clinical Nurse Leader"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Colleges of Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aacnnursing.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CARN
* concept[=].display = "CARN"
* concept[=].definition = "Certified Addictions Registered Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Certified Addictions Registered Nurse - Board of Certification"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cnetnurse.com"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CARN-AP
* concept[=].display = "CARN-AP"
* concept[=].definition = "Certified Addictions Registered Nurse - Advanced Practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Certified Addictions Registered Nurse - Board of Certification"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cnetnurse.com"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CCHP-RN
* concept[=].display = "CCHP-RN"
* concept[=].definition = "Certified Correctional Health Professional-RN"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Commission on Correctional Health Care"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://ncchc.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNN_1
* concept[=].display = "CNN"
* concept[=].definition = "Certified Corrections Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Correctional Association"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://aca.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNN/M
* concept[=].display = "CNN/M"
* concept[=].definition = "Certified Corrections Nurse/Manager"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Correctional Association"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://aca.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CDN
* concept[=].display = "CDN"
* concept[=].definition = "Certified Dialysis Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Nephrology Nursing Certification Commission"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://nncc-exam.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNN_2
* concept[=].display = "CNN"
* concept[=].definition = "Certified Nephrology Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Nephrology Nursing Certification Commission"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://nncc-exam.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNN-NP
* concept[=].display = "CNN-NP"
* concept[=].definition = "Certified Nephrology Nurse-Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Nephrology Nursing Certification Commission"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://nncc-exam.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CCHT
* concept[=].display = "CCHT"
* concept[=].definition = "Certified Clinical Hemodialysis Technician"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Nephrology Nursing Certification Commission"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://nncc-exam.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CCHT-A
* concept[=].display = "CCHT-A"
* concept[=].definition = "Certified Clinical Hemodialysis Technician-Advanced"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Nephrology Nursing Certification Commission"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://nncc-exam.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CD-LPN
* concept[=].display = "CD-LPN"
* concept[=].definition = "Certified Dialysis Licensed Practical Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Nephrology Nursing Certification Commission"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://nncc-exam.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #DNC
* concept[=].display = "DNC"
* concept[=].definition = "Dermatology Nurse Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Dermatology Nurses Association"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://dnanurse.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #DCNP
* concept[=].display = "DCNP"
* concept[=].definition = "Dermatology Certified Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Dermatology Nurses Association"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://dnanurse.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #SANE-A
* concept[=].display = "SANE-A"
* concept[=].definition = "Sexual Assault Nurse Examiner - Adult/Adolescent"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "International Association of Forensic Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://forensicnurses.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #SANE-P
* concept[=].display = "SANE-P"
* concept[=].definition = "Sexual Assault Nurse Examiner - Pediatric"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "International Association of Forensic Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://forensicnurses.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CRNFA
* concept[=].display = "CRNFA"
* concept[=].definition = "Certified Registered Nurse First Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Association of Surgical Assistants"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://nascertification.com"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RNAS-C
* concept[=].display = "RNAS-C"
* concept[=].definition = "Registered Nurse Assistant at Surgery � Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Association of Surgical Assistants"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://nascertification.com"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CRNI
* concept[=].display = "CRNI"
* concept[=].definition = "Certified Registered Nurse Infusion"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Infusion Nurses Society"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://ins1.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #LNCC
* concept[=].display = "LNCC"
* concept[=].definition = "Legal Nurse Consultant Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Legal Nurse Consultants"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://lncc.aalnc.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #COHN
* concept[=].display = "COHN"
* concept[=].definition = "Certified Occupational Health Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board for Occupational Health Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://abohn.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #COHN-S
* concept[=].display = "COHN-S"
* concept[=].definition = "Certified Occupational Health Nurse-Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board for Occupational Health Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://abohn.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CM
* concept[=].display = "CM"
* concept[=].definition = "Occupational Health Nursing Case Management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board for Occupational Health Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://abohn.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CMCN
* concept[=].display = "CMCN"
* concept[=].definition = "Certification in Managed Care Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Managed Care Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://abmcn.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CPHQ
* concept[=].display = "CPHQ"
* concept[=].definition = "Certified Professional in Healthcare Quality"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Association for Healthcare Quality"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://cphq.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CPHRM
* concept[=].display = "CPHRM"
* concept[=].definition = "Certified Professional in Healthcare Risk Management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Hospital Association"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://aha.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CRN-BC
* concept[=].display = "CRN-BC"
* concept[=].definition = "Clinical Research Nurse Certification"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Clinical Research Nurse Certification Commission"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://crncc.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CWCA
* concept[=].display = "CWCA"
* concept[=].definition = "Certified Wound Care Associate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Wound Management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://abwmcertified.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CWS
* concept[=].display = "CWS"
* concept[=].definition = "Certified Wound Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Wound Management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://abwmcertified.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #MWC
* concept[=].display = "MWC"
* concept[=].definition = "Medical Writer Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Medical Writers Association"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://amwa.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #FAAN
* concept[=].display = "FAAN"
* concept[=].definition = "Fellow of the American Academy of Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Academy of Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aannet.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Honorary fellowship recognizing significant contributions to nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #ACNPC
* concept[=].display = "ACNPC"
* concept[=].definition = "Acute Care Nurse Practitioner Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aacn.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certification for acute care nurse practitioners"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #GNP
* concept[=].display = "GNP"
* concept[=].definition = "Gerontological Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Nurse practitioner specializing in geriatric care"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #NPC
* concept[=].display = "NPC"
* concept[=].definition = "Nurse Practitioner Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Various certification boards"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Generic nurse practitioner certification"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RN-C
* concept[=].display = "RN-C"
* concept[=].definition = "Registered Nurse Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Registered nurse with specialty certification in specific clinical area"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RNCS
* concept[=].display = "RNCS"
* concept[=].definition = "Registered Nurse Clinical Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Registered nurse with advanced clinical specialization and expertise"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RN/NP
* concept[=].display = "RN/NP"
* concept[=].definition = "Registered Nurse, Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Registered nurse with nurse practitioner qualification and advanced practice training"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #MNNP
* concept[=].display = "MNNP"
* concept[=].definition = "Master of Nursing, Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Masters degree in nursing with nurse practitioner specialization"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #PN
* concept[=].display = "PN"
* concept[=].definition = "Advanced Practice Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Advanced Practice Nurse with graduate-level education and clinical training"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BN
* concept[=].display = "BN"
* concept[=].definition = "Bachelor of Nursing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Bachelor degree in nursing providing foundational nursing education"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CANP
* concept[=].display = "CANP"
* concept[=].definition = "Certified Adult Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified Adult Nurse Practitioner specializing in adult healthcare"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CRN_2
* concept[=].display = "CRN"
* concept[=].definition = "Certified Registered Nurse"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified Registered Nurse with advanced certification beyond basic RN license"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNS
* concept[=].display = "CNS"
* concept[=].definition = "Certified Nurse Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified Nurse Specialist with advanced practice nursing expertise in specialized clinical areas"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #FPNP
* concept[=].display = "FPNP"
* concept[=].definition = "Family Practice Nurse Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Family Practice Nurse Practitioner providing comprehensive primary care to families"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #MSD
* concept[=].display = "MSD"
* concept[=].definition = "Master of Science in Dentistry"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Advanced graduate degree in dentistry beyond DDS/DMD"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #FAGD
* concept[=].display = "FAGD"
* concept[=].definition = "Fellow of the Academy of General Dentistry"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Academy of General Dentistry"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.agd.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Fellowship recognition for advanced general dentistry education"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #MAGD
* concept[=].display = "MAGD"
* concept[=].definition = "Master of the Academy of General Dentistry"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Academy of General Dentistry"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.agd.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Mastership recognition for extensive continuing education in general dentistry"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RDH
* concept[=].display = "RDH"
* concept[=].definition = "Registered Dental Hygienist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.adha.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed professional providing preventive dental care and education"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RDHAP
* concept[=].display = "RDHAP"
* concept[=].definition = "Registered Dental Hygienist in Alternative Practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Dental hygienist authorized to practice independently in certain states"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #BDS
* concept[=].display = "BDS"
* concept[=].definition = "Bachelor of Dental Surgery"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Dental degree common in international healthcare systems"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #PharmC
* concept[=].display = "PharmC"
* concept[=].definition = "Clinical Pharmacist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Pharmacist specializing in direct patient care and medication management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #RPH
* concept[=].display = "RPH"
* concept[=].definition = "Registered Pharmacist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nabp.pharmacy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed pharmacist authorized to dispense medications"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CPHT
* concept[=].display = "CPHT"
* concept[=].definition = "Certified Pharmacy Technician"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Pharmacy Technician Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.ptcb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified technician assisting pharmacists in medication preparation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PC
* concept[=].display = "PC"
* concept[=].definition = "Pharmacist Clinician"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Pharmacist providing clinical services in healthcare settings"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #RD
* concept[=].display = "RD"
* concept[=].definition = "Registered Dietitian"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Commission on Dietetic Registration"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.cdrnet.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed nutrition professional providing medical nutrition therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RDN
* concept[=].display = "RDN"
* concept[=].definition = "Registered Dietitian Nutritionist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Commission on Dietetic Registration"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.cdrnet.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Updated credential name for Registered Dietitian"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #REGISTERED-DIETITIAN
* concept[=].display = "REGISTERED-DIETITIAN"
* concept[=].definition = "Registered Dietitian"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Commission on Dietetic Registration"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.cdrnet.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed nutrition professional providing medical nutrition therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #HHA
* concept[=].display = "HHA"
* concept[=].definition = "Home Health Aide"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified aide providing basic health services in home settings"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CAA
* concept[=].display = "CAA"
* concept[=].definition = "Certified Audiologist Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Assistant supporting audiologists in hearing assessment and treatment"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CHW
* concept[=].display = "CHW"
* concept[=].definition = "Community Health Worker"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Health worker providing health education and advocacy in community settings"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CMA
* concept[=].display = "CMA"
* concept[=].definition = "Certified Medical Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aama-ntl.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified assistant performing clinical and administrative tasks in medical offices"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PCA
* concept[=].display = "PCA"
* concept[=].definition = "Personal Care Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Assistant providing personal care services to individuals with disabilities"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #RADT
* concept[=].display = "RADT"
* concept[=].definition = "Registered Radiologic Technologist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Registry of Radiologic Technologists"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.arrt.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified technologist performing diagnostic imaging procedures"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CNIM
* concept[=].display = "CNIM"
* concept[=].definition = "Certified Neurophysiologic Intraoperative Monitoring"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Neurophysiologic Monitoring"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.abnm.info"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Specialist monitoring nervous system function during surgery"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CT
* concept[=].display = "CT"
* concept[=].definition = "Computed Tomography Technologist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Registry of Radiologic Technologists"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.arrt.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Specialized technologist operating CT scanning equipment"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CCP
* concept[=].display = "CCP"
* concept[=].definition = "Certified Clinical Perfusionist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Cardiovascular Perfusion"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.abcp.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Specialist operating heart-lung machines during cardiac surgery"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CST
* concept[=].display = "CST"
* concept[=].definition = "Certified Surgical Technologist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board of Surgical Technology and Surgical Assisting"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nbstsa.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified technologist assisting in surgical procedures"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #OPTICIAN
* concept[=].display = "OPTICIAN"
* concept[=].definition = "Licensed Optician"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.abo-ncle.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional fitting and dispensing eyeglasses and contact lenses"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #LDO
* concept[=].display = "LDO"
* concept[=].definition = "Licensed Dispensing Optician"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed professional dispensing corrective eyewear"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #BC-HIS
* concept[=].display = "BC-HIS"
* concept[=].definition = "Board Certified Hearing Instrument Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board for Certification in Hearing Instrument Sciences"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nbc-his.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified specialist fitting and dispensing hearing aids"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #IDC
* concept[=].display = "IDC"
* concept[=].definition = "Infection Disease Control Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Specialist in preventing and controlling infectious diseases"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #IDMT
* concept[=].display = "IDMT"
* concept[=].definition = "Independent Duty Medical Technician"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Military medical technician providing independent patient care"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #DOULA
* concept[=].display = "DOULA"
* concept[=].definition = "Birth Doula"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Non-medical support person assisting during childbirth and postpartum"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CPM
* concept[=].display = "CPM"
* concept[=].definition = "Certified Professional Midwife"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "North American Registry of Midwives"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://narm.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified midwife providing care during pregnancy, birth, and postpartum"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CD-DONA
* concept[=].display = "CD-DONA"
* concept[=].definition = "Certified Doula - DONA International"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "DONA International"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.dona.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "DONA certified doula providing birth and postpartum support"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CPO
* concept[=].display = "CPO"
* concept[=].definition = "Certified Prosthetist Orthotist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board for Certification in Orthotics, Prosthetics and Pedorthics"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.abcop.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified professional designing and fitting prosthetic and orthotic devices"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #NBC-HWC
* concept[=].display = "NBC-HWC"
* concept[=].definition = "National Board Certified Health and Wellness Coach"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board for Health and Wellness Coaching"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://nbhwc.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified coach helping clients achieve health and wellness goals"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #MCD
* concept[=].display = "MCD"
* concept[=].definition = "Master of Communication Disorders"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate degree in communication sciences and disorders"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #AP_2
* concept[=].display = "AP"
* concept[=].definition = "Advanced Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "General designation for advanced level healthcare practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CDPT
* concept[=].display = "CDPT"
* concept[=].definition = "Clinical Doctor of Physical Therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Advanced clinical doctorate in physical therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BMS
* concept[=].display = "BMS"
* concept[=].definition = "Bachelor of Medical Science"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Undergraduate degree in medical sciences"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CGC
* concept[=].display = "CGC"
* concept[=].definition = "Certified Genetic Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Genetic Counseling"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.abgc.net"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified counselor providing genetic risk assessment and counseling"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RDHEF
* concept[=].display = "RDHEF"
* concept[=].definition = "Registered Dental Hygienist Extended Function"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Dental hygienist with expanded scope of practice beyond standard RDH"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RDA
* concept[=].display = "RDA"
* concept[=].definition = "Registered Dental Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified dental assistant with advanced clinical skills"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ORTHODONTIST
* concept[=].display = "ORTHODONTIST"
* concept[=].definition = "Orthodontist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Orthodontics"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.americanboardortho.com"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Dental specialist in tooth and jaw alignment correction"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ENDODONTIST
* concept[=].display = "ENDODONTIST"
* concept[=].definition = "Endodontist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Endodontics"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aae.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Dental specialist in root canal therapy and pulp diseases"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PERIODONTIST
* concept[=].display = "PERIODONTIST"
* concept[=].definition = "Periodontist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Periodontology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.perio.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Dental specialist in gum diseases and supporting structures"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PROSTHODONTIST
* concept[=].display = "PROSTHODONTIST"
* concept[=].definition = "Prosthodontist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Prosthodontics"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.prosthodontics.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Dental specialist in prosthetic and restorative dentistry"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #OMFS
* concept[=].display = "OMFS"
* concept[=].definition = "Oral and Maxillofacial Surgeon"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Oral and Maxillofacial Surgery"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aboms.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Dental specialist in surgical treatment of face, mouth, and jaw"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #BCPS
* concept[=].display = "BCPS"
* concept[=].definition = "Board Certified Pharmacotherapy Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Board of Pharmaceutical Specialties"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.bpsweb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified pharmacist specializing in pharmacotherapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #BCPP
* concept[=].display = "BCPP"
* concept[=].definition = "Board Certified Psychiatric Pharmacist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Board of Pharmaceutical Specialties"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.bpsweb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified pharmacist specializing in psychiatric medications"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RDMS
* concept[=].display = "RDMS"
* concept[=].definition = "Registered Diagnostic Medical Sonographer"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Registry for Diagnostic Medical Sonography"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.ardms.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Registered sonographer performing diagnostic ultrasound examinations"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RDCS
* concept[=].display = "RDCS"
* concept[=].definition = "Registered Diagnostic Cardiac Sonographer"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Registry for Diagnostic Medical Sonography"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.ardms.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Registered sonographer specializing in cardiac ultrasound examinations"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #DTR
* concept[=].display = "DTR"
* concept[=].definition = "Dietetic Technician, Registered"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Commission on Dietetic Registration"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.cdrnet.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Registered technician supporting dietitians in nutrition care"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CPC
* concept[=].display = "CPC"
* concept[=].definition = "Certified Professional Coder"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Academy of Professional Coders"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aapc.com"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified professional specializing in medical coding for healthcare billing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #LN
* concept[=].display = "LN"
* concept[=].definition = "Licensed Nutritionist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed professional providing nutrition counseling and dietary guidance"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LNC
* concept[=].display = "LNC"
* concept[=].definition = "Licensed Nutritionist Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed nutritionist with counseling credentials for dietary and nutrition therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #FIAOMT
* concept[=].display = "FIAOMT"
* concept[=].definition = "Fellow of the International Academy of Oral Medicine and Toxicology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "International Academy of Oral Medicine and Toxicology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://iaomt.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Fellowship in oral medicine and toxicology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #FICCMO
* concept[=].display = "FICCMO"
* concept[=].definition = "Fellow of the International College of Cranio Mandibular Orthopedics"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "International College of Cranio Mandibular Orthopedics"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Fellowship in cranio mandibular orthopedics"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #ABA
* concept[=].display = "ABA"
* concept[=].definition = "Associate of Business Administration"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Two-year associate degree in business administration covering basic business principles"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #AE
* concept[=].display = "AE"
* concept[=].definition = "Associate of Engineering"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Two-year associate degree in engineering providing technical foundation in engineering principles"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #AS
* concept[=].display = "AS"
* concept[=].definition = "Associate of Science"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Two-year associate degree in science covering mathematics, natural sciences, and related technical fields"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BBA
* concept[=].display = "BBA"
* concept[=].definition = "Bachelor of Business Administration"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Four-year undergraduate degree in business administration and management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BE
* concept[=].display = "BE"
* concept[=].definition = "Bachelor or Engineering"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Four-year undergraduate degree in engineering disciplines"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BFA
* concept[=].display = "BFA"
* concept[=].definition = "Bachelor of Fine Arts"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Four-year undergraduate degree in fine arts, visual arts, or performing arts"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BSL
* concept[=].display = "BSL"
* concept[=].definition = "Bachelor of Science - Law"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Four-year undergraduate degree combining science and legal studies"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BT_2
* concept[=].display = "BT"
* concept[=].definition = "Bachelor of Theology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Four-year undergraduate degree in theological studies and religious education"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CER
* concept[=].display = "CER"
* concept[=].definition = "Certificate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certificate credential representing completion of specialized training or education program"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CTR
* concept[=].display = "CTR"
* concept[=].definition = "Certified Tumor Registrar"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified professional specializing in cancer data collection and registry management"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #DIP
* concept[=].display = "DIP"
* concept[=].definition = "Diploma"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Diploma credential representing completion of educational or training program"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #EMT
* concept[=].display = "EMT"
* concept[=].definition = "Emergency Medical Technician"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified emergency medical technician providing basic emergency medical care and transportation"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #EMTP
* concept[=].display = "EMTP"
* concept[=].definition = "Emergency Medical Technician - Paramedic"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Advanced emergency medical technician with paramedic certification providing advanced life support"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #HS
* concept[=].display = "HS"
* concept[=].definition = "High School Graduate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "High school diploma or equivalent representing completion of secondary education"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MCE
* concept[=].display = "MCE"
* concept[=].definition = "Master of Civil Engineering"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate degree in civil engineering with specialized focus on infrastructure and construction"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MDI
* concept[=].display = "MDI"
* concept[=].definition = "Master of Divinity"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate degree in divinity and theological studies for religious ministry"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MEE
* concept[=].display = "MEE"
* concept[=].definition = "Master of Electrical Engineering"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate degree in electrical engineering with specialized technical focus"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #ME
* concept[=].display = "ME"
* concept[=].definition = "Master of Engineering"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate degree in engineering disciplines for advanced technical practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MFA
* concept[=].display = "MFA"
* concept[=].definition = "Master of Fine Arts"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate degree in fine arts, visual arts, creative writing, or performing arts"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MME
* concept[=].display = "MME"
* concept[=].definition = "Master of Mechanical Engineering"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate degree in mechanical engineering with specialized technical focus"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MSL
* concept[=].display = "MSL"
* concept[=].definition = "Master of Science - Law"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate degree combining science and legal studies"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MTH
* concept[=].display = "MTH"
* concept[=].definition = "Master of Theology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate degree in theology and advanced religious studies"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MDA
* concept[=].display = "MDA"
* concept[=].definition = "Medical Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Healthcare support professional performing clinical and administrative tasks in medical settings"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MT_2
* concept[=].display = "MT"
* concept[=].definition = "Medical Technician"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Healthcare technician providing technical support in medical laboratories and clinical settings"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #NG
* concept[=].display = "NG"
* concept[=].definition = "Non-Graduate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Individual who has not completed formal degree or certification program"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #RMA
* concept[=].display = "RMA"
* concept[=].definition = "Registered Medical Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Registered medical assistant with advanced certification in clinical and administrative medical support"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #SEC
* concept[=].display = "SEC"
* concept[=].definition = "Secretarial Certificate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certificate in secretarial skills and administrative support"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #TS
* concept[=].display = "TS"
* concept[=].definition = "Trade School Graduate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate of trade school or vocational training program in specialized technical skills"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #PT
* concept[=].display = "PT"
* concept[=].definition = "Physical Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed healthcare professional who diagnoses and treats individuals with medical problems or other health-related conditions that limit their abilities to move and perform functional activities."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LPTA
* concept[=].display = "LPTA"
* concept[=].definition = "Licensed Physical Therapist Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed assistant who works under the supervision of a physical therapist to help patients recover movement and manage pain through therapeutic exercises and modalities."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #OTR/L
* concept[=].display = "OTR/L"
* concept[=].definition = "Occupational Therapist Registered/Licensed"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board for Certification in Occupational Therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nbcot.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Registered occupational therapist certified by NBCOT and licensed by state to help people participate in everyday activities through therapeutic interventions."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PTA
* concept[=].display = "PTA"
* concept[=].definition = "Physical Therapist Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Assistant who provides physical therapy services under the supervision of a licensed physical therapist."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LMT
* concept[=].display = "LMT"
* concept[=].definition = "Licensed Massage Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed professional who uses therapeutic massage techniques to treat muscle tension, pain, and improve circulation."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #OTR
* concept[=].display = "OTR"
* concept[=].definition = "Occupational Therapist Registered"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board for Certification in Occupational Therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nbcot.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Registered occupational therapist certified by NBCOT who helps people participate in everyday activities through therapeutic interventions."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #SLP
* concept[=].display = "SLP"
* concept[=].definition = "Speech-Language Pathologist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed professional who diagnoses and treats communication and swallowing disorders across the lifespan."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #OT
* concept[=].display = "OT"
* concept[=].definition = "Occupational Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Healthcare professional who helps people participate in everyday activities through therapeutic interventions and environmental modifications."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #ATC
* concept[=].display = "ATC"
* concept[=].definition = "Athletic Trainer Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Board of Certification"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.bocatc.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Healthcare professional certified by BOC who specializes in prevention, assessment, and rehabilitation of injuries and illnesses in physically active populations."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CCC-SLP
* concept[=].display = "CCC-SLP"
* concept[=].definition = "Certificate of Clinical Competence in Speech-Language Pathology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Speech-Language-Hearing Association"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.asha.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "ASHA certification for speech-language pathologists demonstrating clinical competence in the profession."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #COTA
* concept[=].display = "COTA"
* concept[=].definition = "Certified Occupational Therapy Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board for Certification in Occupational Therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nbcot.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified occupational therapy assistant who provides OT services under supervision of an occupational therapist."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #COTA/L
* concept[=].display = "COTA/L"
* concept[=].definition = "Certified Occupational Therapy Assistant Licensed"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board for Certification in Occupational Therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nbcot.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "NBCOT certified occupational therapy assistant who is also state licensed to provide OT services under supervision."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #LMP
* concept[=].display = "LMP"
* concept[=].definition = "Licensed Massage Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed professional who provides therapeutic massage and bodywork services for health and wellness."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LAC
* concept[=].display = "LAC"
* concept[=].definition = "Licensed Acupuncturist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed practitioner who uses acupuncture and traditional Chinese medicine techniques to treat various health conditions."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MPT
* concept[=].display = "MPT"
* concept[=].definition = "Master of Physical Therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate degree in physical therapy, typically a precursor to the current Doctor of Physical Therapy degree."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MSPT
* concept[=].display = "MSPT"
* concept[=].definition = "Master of Science in Physical Therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate degree in physical therapy with emphasis on scientific research and clinical practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #RPT
* concept[=].display = "RPT"
* concept[=].definition = "Registered Physical Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Physical therapist registered with state regulatory board to practice physical therapy."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #OTRL
* concept[=].display = "OTRL"
* concept[=].definition = "Occupational Therapist Registered Licensed"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board for Certification in Occupational Therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nbcot.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Occupational therapist with both NBCOT certification and state licensure."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RRT
* concept[=].display = "RRT"
* concept[=].definition = "Registered Respiratory Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board for Respiratory Care"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nbrc.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Advanced respiratory therapist registered by NBRC who provides diagnostic and therapeutic services for patients with cardiopulmonary disorders."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CMT
* concept[=].display = "CMT"
* concept[=].definition = "Certified Massage Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Massage therapist certified by various certification bodies to provide therapeutic massage services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #SLPA
* concept[=].display = "SLPA"
* concept[=].definition = "Speech-Language Pathology Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Assistant who provides speech-language pathology services under the supervision of a licensed speech-language pathologist."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #OTA
* concept[=].display = "OTA"
* concept[=].definition = "Occupational Therapy Assistant"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Assistant who provides occupational therapy services under the supervision of an occupational therapist."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LPT
* concept[=].display = "LPT"
* concept[=].definition = "Licensed Physical Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Physical therapist licensed by state regulatory board to independently practice physical therapy."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MOTR/L
* concept[=].display = "MOTR/L"
* concept[=].definition = "Master of Occupational Therapy Registered/Licensed"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board for Certification in Occupational Therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nbcot.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Master level occupational therapist with both NBCOT certification and state licensure."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CF-SLP
* concept[=].display = "CF-SLP"
* concept[=].definition = "Clinical Fellow Speech-Language Pathologist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Speech-Language-Hearing Association"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.asha.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Speech-language pathologist completing supervised clinical fellowship year as part of ASHA certification requirements."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #SLP-CCC
* concept[=].display = "SLP-CCC"
* concept[=].definition = "Speech-Language Pathologist with Certificate of Clinical Competence"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Speech-Language-Hearing Association"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.asha.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Speech-language pathologist who has earned the ASHA Certificate of Clinical Competence demonstrating advanced clinical knowledge and skills."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #MOT
* concept[=].display = "MOT"
* concept[=].definition = "Master of Occupational Therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate degree in occupational therapy preparing practitioners for clinical practice in helping people participate in everyday activities."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #OT/L
* concept[=].display = "OT/L"
* concept[=].definition = "Occupational Therapist Licensed"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed occupational therapist authorized by state regulatory board to practice occupational therapy."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #ACUPUNCTURIST
* concept[=].display = "ACUPUNCTURIST"
* concept[=].definition = "Acupuncturist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Healthcare practitioner who uses acupuncture needles and traditional Chinese medicine techniques to treat various health conditions."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LMBT
* concept[=].display = "LMBT"
* concept[=].definition = "Licensed Massage and Bodywork Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed professional who provides therapeutic massage and various bodywork modalities for health and wellness."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LAT
* concept[=].display = "LAT"
* concept[=].definition = "Licensed Athletic Trainer"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed athletic trainer authorized by state to practice athletic training including injury prevention, assessment, and rehabilitation."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CRT
* concept[=].display = "CRT"
* concept[=].definition = "Certified Respiratory Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board for Respiratory Care"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nbrc.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Entry-level respiratory therapist certified by NBRC to provide basic respiratory care services under physician supervision."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PHYSICAL-THERAPIST
* concept[=].display = "PHYSICAL-THERAPIST"
* concept[=].definition = "Physical Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Healthcare professional who diagnoses and treats individuals with movement dysfunction and physical impairments."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #SUDPT
* concept[=].display = "SUDPT"
* concept[=].definition = "Substance Use Disorder Physical Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Physical therapist with specialized training in treating patients with substance use disorders and related movement impairments."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #RT
* concept[=].display = "RT"
* concept[=].definition = "Respiratory Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Healthcare professional who provides diagnostic and therapeutic services for patients with breathing and cardiopulmonary disorders."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MSOTR/L
* concept[=].display = "MSOTR/L"
* concept[=].definition = "Master of Science in Occupational Therapy Registered/Licensed"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board for Certification in Occupational Therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nbcot.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Master level occupational therapist with NBCOT certification and state licensure, with advanced scientific training in OT practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ST
* concept[=].display = "ST"
* concept[=].definition = "Speech Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Healthcare professional who diagnoses and treats speech, language, voice, and communication disorders."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #AT
* concept[=].display = "AT"
* concept[=].definition = "Athletic Trainer"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Healthcare professional who specializes in injury prevention, assessment, treatment, and rehabilitation for physically active individuals."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LOTR
* concept[=].display = "LOTR"
* concept[=].definition = "Licensed Occupational Therapist Registered"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board for Certification in Occupational Therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nbcot.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed occupational therapist with NBCOT registration authorized to provide occupational therapy services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #RCP
* concept[=].display = "RCP"
* concept[=].definition = "Respiratory Care Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Board for Respiratory Care"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nbrc.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Respiratory care professional credentialed by NBRC to provide comprehensive respiratory therapy services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #LicAc
* concept[=].display = "LicAc"
* concept[=].definition = "Licensed Acupuncturist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed practitioner of acupuncture and Traditional Chinese Medicine techniques"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #AK
* concept[=].display = "AK"
* concept[=].definition = "Acupuncturist (Pennsylvania)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Acupuncturist licensed specifically in Pennsylvania"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #AP_1
* concept[=].display = "AP"
* concept[=].definition = "Acupuncture Physician"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Physician trained and licensed to practice acupuncture medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CA
* concept[=].display = "CA"
* concept[=].definition = "Certified Acupuncturist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified practitioner of acupuncture therapy and Traditional Chinese Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #DAc
* concept[=].display = "DAc"
* concept[=].definition = "Diplomate in Acupuncture"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Diplomate-level acupuncturist with advanced training and certification"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #DAc_(RI)
* concept[=].display = "DAc (RI)"
* concept[=].definition = "Doctor of Acupuncture, Rhode Island"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Doctor of Acupuncture degree specifically recognized in Rhode Island"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #DAc_(WV)
* concept[=].display = "DAc (WV)"
* concept[=].definition = "Doctor of Acupuncture, West Virginia"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Doctor of Acupuncture degree specifically recognized in West Virginia"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #NCCA
* concept[=].display = "NCCA"
* concept[=].definition = "National Commission for the Certification of Acupuncturists"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Commission for the Certification of Acupuncturists"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certification by National Commission for the Certification of Acupuncturists"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #FIACA
* concept[=].display = "FIACA"
* concept[=].definition = "Fellow of the International Academy of Clinical Acupuncture"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "International Academy of Clinical Acupuncture"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Fellowship in clinical acupuncture"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MD
* concept[=].display = "MD"
* concept[=].definition = "Medical Doctor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Doctor of Medicine degree from accredited medical school, enabling independent practice of medicine after residency training."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #DO
* concept[=].display = "DO"
* concept[=].definition = "Doctor of Osteopathic Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Doctor of Osteopathic Medicine degree emphasizing holistic approach and manipulative treatment, equivalent to MD for medical practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MBBS
* concept[=].display = "MBBS"
* concept[=].definition = "Bachelor of Medicine, Bachelor of Surgery"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "British and Commonwealth medical degree combining medicine and surgery training, equivalent to North American MD."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MBChB
* concept[=].display = "MBChB"
* concept[=].definition = "Bachelor of Medicine, Bachelor of Surgery"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "British medical degree variant (Medicine, Surgery) granted by certain UK and Commonwealth universities, equivalent to MBBS."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #DR-MED
* concept[=].display = "DR-MED"
* concept[=].definition = "Doktor der Medizin"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "German medical doctorate degree, typically requiring dissertation, qualifying holder for medical practice in German-speaking countries."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #DOCTEUR
* concept[=].display = "DOCTEUR"
* concept[=].definition = "Docteur en M�decine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "French medical doctorate degree qualifying holder to practice medicine in France and French-speaking countries."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LAUREA-MED
* concept[=].display = "LAUREA-MED"
* concept[=].definition = "Laurea in Medicina e Chirurgia"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Italian medical degree in Medicine and Surgery, qualifying holder for medical practice in Italy after specialization."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LIC-MED
* concept[=].display = "LIC-MED"
* concept[=].definition = "Licenciado en Medicina"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Spanish and Latin American medical licentiate degree qualifying holder for medical practice after completion of medical studies."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MED-CIR
* concept[=].display = "MED-CIR"
* concept[=].definition = "M�dico Cirujano"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Latin American medical degree combining medicine and surgery, qualifying holder for general medical practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #YI-XUE-SHI
* concept[=].display = "YI-XUE-SHI"
* concept[=].definition = "??? (Bachelor of Medicine)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Chinese medical bachelor degree, foundational qualification for medical practice in Chinese-speaking regions."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #YI-XUE-BO-SHI
* concept[=].display = "YI-XUE-BO-SHI"
* concept[=].definition = "???? (Doctor of Medicine)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Chinese medical doctorate degree, advanced qualification for medical practice and research in Chinese-speaking regions."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #IRYO-GAKUSHI
* concept[=].display = "IRYO-GAKUSHI"
* concept[=].definition = "Iryo-gakushi (Bachelor of Medicine)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Japanese medical bachelor degree, qualifying holder for medical practice in Japan after passing national examinations."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BMBS
* concept[=].display = "BMBS"
* concept[=].definition = "Bachelor of Medicine, Bachelor of Surgery (Cambridge)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Cambridge University variant of British medical degree, equivalent to other MBBS degrees for medical practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MBBCH
* concept[=].display = "MBBCH"
* concept[=].definition = "Bachelor of Medicine, Bachelor of Surgery (Oxford)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Oxford University variant of British medical degree, equivalent to other MBBS degrees for medical practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BMED
* concept[=].display = "BMED"
* concept[=].definition = "Bachelor of Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Medical bachelor degree variant used by some universities, foundational qualification for medical practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #FAAP
* concept[=].display = "FAAP"
* concept[=].definition = "Fellow of the American Academy of Pediatrics"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Academy of Pediatrics"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aap.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Fellowship recognizing distinguished service and contributions to pediatric medicine and child health advocacy."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #FAAOS
* concept[=].display = "FAAOS"
* concept[=].definition = "Fellow of the American Academy of Orthopedic Surgeons"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Academy of Orthopedic Surgeons"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aaos.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Fellowship recognizing significant contributions to orthopedic surgery, education, and musculoskeletal health."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #FAAFP
* concept[=].display = "FAAFP"
* concept[=].definition = "Fellow of the American Academy of Family Physicians"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Academy of Family Physicians"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aafp.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Fellowship recognizing excellence and leadership in family medicine practice, education, and community service."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MD(H)
* concept[=].display = "MD(H)"
* concept[=].definition = "Homeopathic Medical Doctor (Arizona)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Medical doctor with homeopathic specialization licensed in Arizona"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #HMD
* concept[=].display = "HMD"
* concept[=].definition = "Homeopathic Medical Doctor (Nevada)"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Homeopathic medical doctor licensed specifically in Nevada"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #DABFP
* concept[=].display = "DABFP"
* concept[=].definition = "Diplomate of the American Board of Family Practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Family Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.theabfm.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certification in family medicine practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #DABIM
* concept[=].display = "DABIM"
* concept[=].definition = "Diplomate of the American Board of Internal Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Internal Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.abim.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certification in internal medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ABFP
* concept[=].display = "ABFP"
* concept[=].definition = "American Board of Family Practitioners"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Family Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.theabfm.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certification by American Board of Family Practitioners"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ABO
* concept[=].display = "ABO"
* concept[=].definition = "American Board of Otolaryngology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Otolaryngology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.aboto.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certification in otolaryngology (ENT) medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #ABPN
* concept[=].display = "ABPN"
* concept[=].definition = "American Board of Psychiatry and Neurology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Psychiatry and Neurology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.abpn.com/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certification in psychiatry and neurology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AOBFP
* concept[=].display = "AOBFP"
* concept[=].definition = "American Osteopathic Board of Family Physicians"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Osteopathic Board of Family Physicians"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certification in osteopathic family medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #FACFO
* concept[=].display = "FACFO"
* concept[=].definition = "Fellow of the American College of Foot Orthopedics"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American College of Foot and Ankle Orthopedics and Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Fellowship in foot orthopedics and podiatric medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #FACOG
* concept[=].display = "FACOG"
* concept[=].definition = "Fellow of the American College of Obstetrics and Gynecology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American College of Obstetricians and Gynecologists"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.acog.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Fellowship in obstetrics and gynecology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #FAAEM
* concept[=].display = "FAAEM"
* concept[=].definition = "Fellow of the American Academy of Environmental Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Academy of Environmental Medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://aaemonline.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Fellowship in environmental medicine"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #FAAC
* concept[=].display = "FAAC"
* concept[=].definition = "Fellow of the American College of Cardiology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American College of Cardiology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.acc.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Fellowship in cardiology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LICSW
* concept[=].display = "LICSW"
* concept[=].definition = "Licensed Independent Clinical Social Worker"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Advanced clinical social worker licensed to practice independently, providing psychotherapy and clinical services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LCSW
* concept[=].display = "LCSW"
* concept[=].definition = "Licensed Clinical Social Worker"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Clinical social worker licensed to provide therapeutic services, mental health treatment, and psychosocial interventions."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LPC
* concept[=].display = "LPC"
* concept[=].definition = "Licensed Professional Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed mental health professional providing counseling and psychotherapy services for various psychological conditions."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #RBT
* concept[=].display = "RBT"
* concept[=].definition = "Registered Behavior Technician"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Behavior Analyst Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.bacb.com/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Paraprofessional who implements behavior analysis services under the supervision of a BCBA or BCaBA."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #LMFT
* concept[=].display = "LMFT"
* concept[=].definition = "Licensed Marriage and Family Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed therapist specializing in relationship counseling, family therapy, and couples counseling."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LMHC
* concept[=].display = "LMHC"
* concept[=].definition = "Licensed Mental Health Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed professional counselor providing mental health services, therapy, and psychological support."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BCBA
* concept[=].display = "BCBA"
* concept[=].definition = "Board Certified Behavior Analyst"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Behavior Analyst Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.bacb.com/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified professional who designs, implements, and evaluates behavior analytic interventions."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #LSW
* concept[=].display = "LSW"
* concept[=].definition = "Licensed Social Worker"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Entry-level licensed social worker providing basic social work services and case management."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LCPC
* concept[=].display = "LCPC"
* concept[=].definition = "Licensed Clinical Professional Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Clinical counselor licensed to provide psychotherapy and mental health treatment services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MFT
* concept[=].display = "MFT"
* concept[=].definition = "Marriage and Family Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Mental health professional specializing in relationship and family counseling and therapy."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LPCC
* concept[=].display = "LPCC"
* concept[=].definition = "Licensed Professional Clinical Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Clinical counselor licensed to provide comprehensive mental health and psychotherapy services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LCSW-C
* concept[=].display = "LCSW-C"
* concept[=].definition = "Licensed Clinical Social Worker - Clinical"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Clinical social worker with specialized clinical endorsement for advanced therapeutic services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LISW
* concept[=].display = "LISW"
* concept[=].definition = "Licensed Independent Social Worker"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Independent social worker licensed to practice without supervision, providing advanced social work services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LLMSW
* concept[=].display = "LLMSW"
* concept[=].definition = "Limited Licensed Master Social Worker"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Master-level social worker with limited licensure requiring supervision for clinical practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CDCA
* concept[=].display = "CDCA"
* concept[=].definition = "Certified Drug and Alcohol Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified professional specializing in substance abuse counseling and addiction treatment services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #AMFT
* concept[=].display = "AMFT"
* concept[=].definition = "Associate Marriage and Family Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Entry-level marriage and family therapist working under supervision to gain clinical experience."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CSW
* concept[=].display = "CSW"
* concept[=].definition = "Clinical Social Worker"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Social worker with clinical training and experience in providing therapeutic and mental health services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LCSW-R
* concept[=].display = "LCSW-R"
* concept[=].definition = "Licensed Clinical Social Worker - Registered"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Registered clinical social worker with specific state registration for clinical practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MHPP
* concept[=].display = "MHPP"
* concept[=].definition = "Mental Health Paraprofessional"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Paraprofessional providing support services in mental health settings under professional supervision."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LCSWA
* concept[=].display = "LCSWA"
* concept[=].definition = "Licensed Clinical Social Worker Associate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Associate-level clinical social worker working under supervision toward independent practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LCMHC
* concept[=].display = "LCMHC"
* concept[=].definition = "Licensed Clinical Mental Health Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Clinical mental health counselor licensed to provide comprehensive psychological and therapeutic services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #ASW
* concept[=].display = "ASW"
* concept[=].definition = "Associate Social Worker"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Entry-level social worker working under supervision to gain experience toward full licensure."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LADC
* concept[=].display = "LADC"
* concept[=].definition = "Licensed Alcohol and Drug Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed professional specializing in alcohol and drug addiction counseling and treatment."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CADC
* concept[=].display = "CADC"
* concept[=].definition = "Certified Alcohol and Drug Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified counselor specializing in substance abuse treatment and addiction recovery services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #LPCA
* concept[=].display = "LPCA"
* concept[=].definition = "Licensed Professional Counselor Associate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Associate-level professional counselor working under supervision toward full licensure."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #QMHS
* concept[=].display = "QMHS"
* concept[=].definition = "Qualified Mental Health Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Mental health professional meeting state qualifications to provide specialized mental health services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LISW-S
* concept[=].display = "LISW-S"
* concept[=].definition = "Licensed Independent Social Worker - Supervisor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Independent social worker with supervisory credentials for overseeing other social workers and clinical staff."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MT-BC
* concept[=].display = "MT-BC"
* concept[=].definition = "Music Therapist Board Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Certification Board for Music Therapists"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.cbmt.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified music therapist qualified to use music interventions for therapeutic purposes."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #LGSW
* concept[=].display = "LGSW"
* concept[=].definition = "Licensed Graduate Social Worker"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate-level social worker with licensure to practice under supervision toward independent practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MT_1
* concept[=].display = "MT"
* concept[=].definition = "Music Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional who uses music-based interventions to address therapeutic goals in healthcare and educational settings."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LLPC
* concept[=].display = "LLPC"
* concept[=].definition = "Limited Licensed Professional Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional counselor with limited licensure requiring supervision for clinical practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LGPC
* concept[=].display = "LGPC"
* concept[=].definition = "Licensed Graduate Professional Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate-level professional counselor working under supervision toward full licensure."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #ACSW
* concept[=].display = "ACSW"
* concept[=].definition = "Academy of Certified Social Workers"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Association of Social Workers"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.socialworkers.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "NASW certification recognizing advanced competency and experience in social work practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #BT_1
* concept[=].display = "BT"
* concept[=].definition = "Behavior Technician"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Paraprofessional providing direct behavioral services under supervision of behavior analyst."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LSCSW
* concept[=].display = "LSCSW"
* concept[=].definition = "Licensed Specialist Clinical Social Worker"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Specialized clinical social worker with advanced licensure for independent clinical practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BCABA
* concept[=].display = "BCABA"
* concept[=].definition = "Board Certified Assistant Behavior Analyst"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Behavior Analyst Certification Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.bacb.com/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified assistant who provides behavior analytic services under BCBA supervision."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #LMHCA
* concept[=].display = "LMHCA"
* concept[=].definition = "Licensed Mental Health Counselor Associate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Associate-level mental health counselor working under supervision toward full licensure."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LCDC
* concept[=].display = "LCDC"
* concept[=].definition = "Licensed Chemical Dependency Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed counselor specializing in chemical dependency and substance abuse treatment."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MFTI
* concept[=].display = "MFTI"
* concept[=].definition = "Marriage and Family Therapist Intern"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Intern-level marriage and family therapist gaining supervised clinical experience."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LCMHCA
* concept[=].display = "LCMHCA"
* concept[=].definition = "Licensed Clinical Mental Health Counselor Associate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Associate-level clinical mental health counselor working under supervision."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LPC-A
* concept[=].display = "LPC-A"
* concept[=].definition = "Licensed Professional Counselor Associate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Associate-level professional counselor working under supervision toward independent practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LBSW
* concept[=].display = "LBSW"
* concept[=].definition = "Licensed Bachelor Social Worker"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Bachelor-level social worker licensed to provide basic social work services under supervision."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CTRS
* concept[=].display = "CTRS"
* concept[=].definition = "Certified Therapeutic Recreation Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "National Council for Therapeutic Recreation Certification"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.nctrc.org/"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified professional using recreational activities to improve functioning and independence."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #CASAC
* concept[=].display = "CASAC"
* concept[=].definition = "Credentialed Alcoholism and Substance Abuse Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "State-credentialed counselor specializing in alcoholism and substance abuse treatment services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #QMHA
* concept[=].display = "QMHA"
* concept[=].definition = "Qualified Mental Health Associate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Mental health professional meeting state qualifications to provide associate-level mental health services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #QBHP
* concept[=].display = "QBHP"
* concept[=].definition = "Qualified Behavioral Health Professional"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional qualified to provide behavioral health services in various clinical settings."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LPCC-S
* concept[=].display = "LPCC-S"
* concept[=].definition = "Licensed Professional Clinical Counselor - Supervisor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Clinical counselor with supervisory credentials for overseeing other mental health professionals."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MHC
* concept[=].display = "MHC"
* concept[=].definition = "Mental Health Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional counselor providing mental health services and psychological support."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #PSS
* concept[=].display = "PSS"
* concept[=].definition = "Peer Support Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Individual with lived experience providing peer support services in mental health and recovery settings."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #SA-C
* concept[=].display = "SA-C"
* concept[=].definition = "Substance Abuse Counselor Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified counselor specializing in substance abuse treatment and addiction recovery services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PLMHP
* concept[=].display = "PLMHP"
* concept[=].definition = "Provisionally Licensed Mental Health Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Mental health practitioner with provisional licensure working toward full licensure requirements."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LPC-MHSP
* concept[=].display = "LPC-MHSP"
* concept[=].definition = "Licensed Professional Counselor - Mental Health Service Provider"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed professional counselor designated as qualified mental health service provider."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LISW-CP
* concept[=].display = "LISW-CP"
* concept[=].definition = "Licensed Independent Social Worker - Clinical Practice"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Independent social worker licensed with specific authorization for clinical practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LCSW-A
* concept[=].display = "LCSW-A"
* concept[=].definition = "Licensed Clinical Social Worker Associate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Associate-level clinical social worker working under supervision toward independent practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #SOCIAL-WORKER
* concept[=].display = "SOCIAL-WORKER"
* concept[=].definition = "Social Worker"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional who provides social services, case management, and psychosocial support to individuals and families."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MHC-LP
* concept[=].display = "MHC-LP"
* concept[=].definition = "Mental Health Counselor - Limited Permit"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Mental health counselor with limited permit working under supervision."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LAPC
* concept[=].display = "LAPC"
* concept[=].definition = "Licensed Associate Professional Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Associate professional counselor licensed to practice under supervision."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #QMHP
* concept[=].display = "QMHP"
* concept[=].definition = "Qualified Mental Health Professional"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Mental health professional meeting state qualifications to provide mental health services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #PSYCHOLOGIST
* concept[=].display = "PSYCHOLOGIST"
* concept[=].definition = "Psychologist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Doctoral-level professional who studies behavior and mental processes, provides psychological assessment and therapy."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LMSW-CC
* concept[=].display = "LMSW-CC"
* concept[=].definition = "Licensed Master Social Worker - Clinical Certification"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Master social worker with clinical certification endorsement for therapeutic services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LLBSW
* concept[=].display = "LLBSW"
* concept[=].definition = "Limited Licensed Bachelor Social Worker"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Bachelor-level social worker with limited licensure requiring supervision."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LP
* concept[=].display = "LP"
* concept[=].definition = "Licensed Psychologist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Doctoral-level psychologist licensed to practice psychology independently, including assessment and therapy."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CASAC-T
* concept[=].display = "CASAC-T"
* concept[=].definition = "Credentialed Alcoholism and Substance Abuse Counselor - Trainee"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Trainee-level substance abuse counselor working under supervision toward full credentialing."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LCSWR
* concept[=].display = "LCSWR"
* concept[=].definition = "Licensed Clinical Social Worker - Restricted"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Clinical social worker with restricted licensure requiring specific practice limitations."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LPC-S
* concept[=].display = "LPC-S"
* concept[=].definition = "Licensed Professional Counselor - Supervisor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional counselor with supervisory credentials for overseeing other mental health professionals."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LLP
* concept[=].display = "LLP"
* concept[=].definition = "Limited Licensed Psychologist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Psychologist with limited licensure working under supervision toward full psychology licensure."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #APSW
* concept[=].display = "APSW"
* concept[=].definition = "Advanced Practice Social Worker"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Social worker with advanced practice credentials for specialized clinical and therapeutic services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #MHP
* concept[=].display = "MHP"
* concept[=].definition = "Mental Health Professional"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "General credential for professionals providing mental health and behavioral health services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CMHC
* concept[=].display = "CMHC"
* concept[=].definition = "Community Mental Health Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Mental health counselor specializing in community-based mental health services and programs."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LPC-IT
* concept[=].display = "LPC-IT"
* concept[=].definition = "Licensed Professional Counselor - In Training"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional counselor in training working under supervision toward full licensure."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CSAC
* concept[=].display = "CSAC"
* concept[=].definition = "Certified Substance Abuse Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified counselor specializing in substance abuse treatment and addiction recovery services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #PPS
* concept[=].display = "PPS"
* concept[=].definition = "Peer Support Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Individual with lived experience providing peer support services in mental health and recovery settings."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LMHP
* concept[=].display = "LMHP"
* concept[=].definition = "Licensed Mental Health Practitioner"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed practitioner providing comprehensive mental health services and therapeutic interventions."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #APCC
* concept[=].display = "APCC"
* concept[=].definition = "Associate Professional Clinical Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Associate-level clinical counselor working under supervision toward independent practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CPSS
* concept[=].display = "CPSS"
* concept[=].definition = "Certified Peer Support Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Certified peer support specialist with training to provide recovery-oriented services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #MSSW
* concept[=].display = "MSSW"
* concept[=].definition = "Master of Science in Social Work"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Graduate degree in social work with emphasis on scientific research and evidence-based practice."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #COUNSELOR
* concept[=].display = "COUNSELOR"
* concept[=].definition = "Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "General professional designation for individuals providing counseling and therapeutic services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LPC-ASSOCIATE
* concept[=].display = "LPC-ASSOCIATE"
* concept[=].definition = "Licensed Professional Counselor Associate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Associate-level professional counselor working under supervision toward independent licensure."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LAMFT
* concept[=].display = "LAMFT"
* concept[=].definition = "Licensed Associate Marriage and Family Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Associate-level marriage and family therapist licensed to practice under supervision."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #RMHCI
* concept[=].display = "RMHCI"
* concept[=].definition = "Registered Mental Health Counselor Intern"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Registered intern working under supervision toward full mental health counselor licensure."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #PRSS
* concept[=].display = "PRSS"
* concept[=].definition = "Peer Recovery Support Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Individual with lived recovery experience providing peer support services in substance abuse treatment."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #SAC-IT
* concept[=].display = "SAC-IT"
* concept[=].definition = "Substance Abuse Counselor - In Training"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Substance abuse counselor in training working under supervision toward full certification."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #BHRS
* concept[=].display = "BHRS"
* concept[=].definition = "Behavioral Health Rehabilitation Services"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional providing behavioral health rehabilitation and recovery services to individuals with mental health conditions."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #SW
* concept[=].display = "SW"
* concept[=].definition = "Social Worker"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional who provides social services, advocacy, and support to individuals, families, and communities."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #CADC-II
* concept[=].display = "CADC-II"
* concept[=].definition = "Certified Alcohol and Drug Counselor II"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Advanced level certified alcohol and drug counselor with enhanced training and experience requirements."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #DT
* concept[=].display = "DT"
* concept[=].definition = "Dance Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Professional who uses movement and dance as therapeutic interventions to promote emotional, social, and physical health."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #ALC
* concept[=].display = "ALC"
* concept[=].definition = "Addiction Licensed Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed counselor specializing in addiction treatment and substance abuse recovery services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LCADC
* concept[=].display = "LCADC"
* concept[=].definition = "Licensed Clinical Alcohol and Drug Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Clinical-level licensed counselor specializing in comprehensive alcohol and drug addiction treatment."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LCAS
* concept[=].display = "LCAS"
* concept[=].definition = "Licensed Clinical Addiction Specialist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Clinical specialist licensed to provide advanced addiction treatment and substance abuse counseling services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LPA
* concept[=].display = "LPA"
* concept[=].definition = "Licensed Psychological Associate"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed associate working under psychologist supervision to provide psychological services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #ATR-BC
* concept[=].display = "ATR-BC"
* concept[=].definition = "Art Therapist Registered - Board Certified"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "Art Therapy Credentials Board"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.atcb.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified art therapist registered to use visual arts and creative processes for therapeutic purposes."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #LPAT
* concept[=].display = "LPAT"
* concept[=].definition = "Licensed Professional Art Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "State licensed professional art therapist authorized to practice art therapy independently."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #LCPAT
* concept[=].display = "LCPAT"
* concept[=].definition = "Licensed Clinical Professional Art Therapist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Clinical-level state licensed art therapist providing advanced art therapy services."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false

* concept[+].code = #EMDR
* concept[=].display = "EMDR"
* concept[=].definition = "Eye Movement Desensitization and Reprocessing"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "EMDR International Association"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.emdria.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Specialized psychotherapy technique certification for treating trauma and PTSD using bilateral stimulation."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #NEUROPSYCHOLOGIST
* concept[=].display = "NEUROPSYCHOLOGIST"
* concept[=].definition = "Neuropsychologist"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_org
* concept[=].property[=].valueString = "American Board of Professional Psychology"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#cred_url
* concept[=].property[=].valueString = "https://www.abpp.org"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Board certified psychologist specializing in brain-behavior relationships, cognitive assessment, and neurological conditions."
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = true

* concept[+].code = #MFCC
* concept[=].display = "MFCC"
* concept[=].definition = "Marriage, Family and Child Counselor"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#description
* concept[=].property[=].valueString = "Licensed counselor specializing in marriage, family, and child therapy"
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = FaCeT-credentialPropertiesCS#is_board_certification
* concept[=].property[=].valueBoolean = false
