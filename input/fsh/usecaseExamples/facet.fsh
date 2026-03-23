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
* url = "https://github.com/ftrotter-gov/FaCeT/blob/main/csv/FACET_credential_codeset.csv"
* version = "0.1.0"
* jurisdiction[0] = http://unstats.un.org/unsd/methods/m49/m49.htm#840 "United States of America"
* caseSensitive = true
* property[+].code = #abbr
* property[=].description = "Abbreviation"
* property[=].type = #string
* property[+].code = #cred_org
* property[=].description = "Credentialing Organization"
* property[=].type = #string
* property[+].code = #cred_url
* property[=].description = "URL for Credential Organization"
* property[=].type = #string
* property[+].code = #is_multisource
* property[=].description = "Indicates whether the credential is offered by multiple organizations"
* property[=].type = #boolean
* property[+].code = #is_clinical
* property[=].description = "Indicates whether the credential is clinical in nature"
* property[=].type = #boolean
* property[+].code = #is_board_certification
* property[=].description = "Indicates whether the credential is a board certification"
* property[=].type = #boolean
* property[+].code = #is_credential_retired
* property[=].description = "Indicates whether the credential is retired and should no longer be used"
* property[=].type = #boolean
* property[+].code = #is_fhir_credential
* property[=].description = "Indicates whether the credential is represented in FHIR as a credential type code"
* property[=].type = #boolean
// FaCeT credential concepts generated from FACET_credential_codeset.csv
* concept[+].code = #80000
* concept[=].display = "Doctor of Veterinary Medicine"
* concept[=].definition = "Veterinary medicine doctorate"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DVM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Multiple veterinary schools"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #80001
* concept[=].display = "Doctor of Veterinary Medicine"
* concept[=].definition = "Veterinary medicine doctorate (variant of DVM)"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "VMD"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Multiple veterinary schools"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #80002
* concept[=].display = "Bachelor of Veterinary Science and Animal Husbandry"
* concept[=].definition = "Bachelor degree in veterinary science with animal husbandry specialization"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BVScAH"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #80003
* concept[=].display = "Certified Animal Chiropractor"
* concept[=].definition = "Certified chiropractor specializing in animal chiropractic care"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CAC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #80004
* concept[=].display = "Certified Veterinary Acupuncturist"
* concept[=].definition = "Certified veterinarian or practitioner specializing in veterinary acupuncture"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CVA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #80005
* concept[=].display = "Diplomate of the American College of Veterinary Dermatology"
* concept[=].definition = "Board certification in veterinary dermatology"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DACVD"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American College of Veterinary Dermatology"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10000
* concept[=].display = "Doctor of Dental Surgery"
* concept[=].definition = "Doctoral degree in dentistry qualifying graduates to practice general dentistry"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DDS"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Accredited dental schools"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.ada.org/education-careers/dental-education/dental-schools"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10001
* concept[=].display = "Doctor of Medicine in Dentistry"
* concept[=].definition = "Doctoral degree in dentistry equivalent to DDS, qualifying graduates to practice general dentistry"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DMD"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Accredited dental schools"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.ada.org/education-careers/dental-education/dental-schools"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10002
* concept[=].display = "Doctor of Pharmacy"
* concept[=].definition = "Professional doctoral degree for pharmacists to provide pharmaceutical care and medication therapy management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PharmD"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "ACPE-accredited pharmacy schools"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.acpe-accredit.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #10003
* concept[=].display = "Doctor of Psychology"
* concept[=].definition = "Professional doctoral degree in psychology emphasizing clinical practice and applied psychology"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PsyD"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "APA-accredited psychology programs"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.apa.org/ed/accreditation"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10004
* concept[=].display = "Doctor of Physical Therapy"
* concept[=].definition = "Entry-level doctoral degree for physical therapists to diagnose and treat movement dysfunction"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DPT"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "CAPTE-accredited PT programs"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.capteonline.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10005
* concept[=].display = "Doctor of Chiropractic"
* concept[=].definition = "Doctoral degree in chiropractic medicine focusing on diagnosis and treatment of neuromuscular disorders"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "CCE-accredited chiropractic colleges"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.cce-usa.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10006
* concept[=].display = "Doctor of Optometry"
* concept[=].definition = "Doctoral degree in optometry for comprehensive eye and vision care, including diagnosis and treatment of eye diseases"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "OD"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "ACOE-accredited optometry schools"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.theacoe.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10007
* concept[=].display = "Doctor of Podiatric Medicine"
* concept[=].definition = "Doctoral degree in podiatric medicine for comprehensive foot and ankle care, including surgery"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DPM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "CPME-accredited podiatric medical schools"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.cpme.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10008
* concept[=].display = "Doctor of Audiology"
* concept[=].definition = "Professional doctoral degree in audiology for diagnosis and treatment of hearing and balance disorders"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AuD"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "CAA-accredited audiology programs"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://caa.asha.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10009
* concept[=].display = "Doctor of Nursing Practice"
* concept[=].definition = "Practice-focused doctoral degree in nursing for advanced nursing practice and clinical leadership"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DNP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "CCNE or ACEN-accredited nursing programs"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aacnnursing.org/DNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10010
* concept[=].display = "Doctor of Naturopathic Medicine"
* concept[=].definition = "Doctoral degree in naturopathic medicine emphasizing natural healing methods and preventive care"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ND"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "CNME-accredited naturopathic medical schools"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cnme.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10011
* concept[=].display = "Doctor of Occupational Therapy"
* concept[=].definition = "Entry-level doctoral degree in occupational therapy for helping people participate in meaningful activities"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "OTD"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "ACOTE-accredited OT programs"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aota.org/education/accreditation"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10012
* concept[=].display = "Doctor of Naturopathic Medicine"
* concept[=].definition = "Doctoral degree in naturopathic medicine (alternative abbreviation to ND) emphasizing natural healing methods"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NMD"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "CNME-accredited naturopathic medical schools"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cnme.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10013
* concept[=].display = "Oriental Medicine Doctor"
* concept[=].definition = "Doctoral degree in Oriental Medicine/Traditional Chinese Medicine including acupuncture and herbal medicine"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "OMD"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "ACAOM-accredited acupuncture and oriental medicine programs"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://acaom.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10014
* concept[=].display = "Bachelor of Homeopathic Medicine and Surgery"
* concept[=].definition = "Bachelor degree in homeopathic medicine and surgical practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BHMS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10015
* concept[=].display = "Certified in Classical Homeopathy"
* concept[=].definition = "Certified practitioner of classical homeopathic medicine"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CCH"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10016
* concept[=].display = "Diplomate of the Homeopathic Academy of Naturopathic Physicians"
* concept[=].definition = "Diplomate-level certification in homeopathic medicine for naturopathic physicians"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DHANP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Homeopathic Academy of Naturopathic Physicians"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10017
* concept[=].display = "Diplomate in Homeotherapeutics"
* concept[=].definition = "Diplomate certification in homeotherapeutic medicine and treatment"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DHt"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10018
* concept[=].display = "Diplomate of the National Board of Homeopathic Examiners"
* concept[=].definition = "Diplomate certification from the National Board of Homeopathic Examiners"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DNBHE"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board of Homeopathic Examiners"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10019
* concept[=].display = "Registered with the Society of Homeopaths"
* concept[=].definition = "Registered homeopath with the Society of Homeopaths"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RS Hom"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Society of Homeopaths"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10020
* concept[=].display = "Certified Chiropractic Sports Physician"
* concept[=].definition = "Chiropractor certified in sports medicine and athletic injury treatment"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CCSP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10021
* concept[=].display = "Diplomate of American Chiropractic Board of Nutrition"
* concept[=].definition = "Diplomate certification in chiropractic nutrition and dietary counseling"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DACBN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Chiropractic Board of Nutrition"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10022
* concept[=].display = "Certified Specialty of Proficiency in Osteopathic Manipulation Medicine"
* concept[=].definition = "Certified specialty in osteopathic manipulative medicine techniques"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CSPOMM"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10023
* concept[=].display = "American Osteopathic Board of Special Proficiency in Osteopathic Manipulative Medicine"
* concept[=].definition = "Board certification in osteopathic manipulative medicine specialty"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AOBSPOMM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Osteopathic Board of Special Proficiency in OMM"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10024
* concept[=].display = "Clinical Associate of the American Academy of Pain Management"
* concept[=].definition = "Clinical associate certification in pain management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CAAPM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Academy of Pain Management"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10025
* concept[=].display = "Diplomate of American Academy of Pain Management"
* concept[=].definition = "Diplomate certification in pain management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DAAPM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Academy of Pain Management"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10026
* concept[=].display = "Doctor of Business Administration"
* concept[=].definition = "Doctoral degree in business administration focusing on applied research and advanced business practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DBA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #10027
* concept[=].display = "Doctor of Education"
* concept[=].definition = "Professional doctoral degree in education for advanced educational leadership and practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DED"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #10028
* concept[=].display = "Doctor of Engineering"
* concept[=].definition = "Professional doctoral degree in engineering focusing on advanced engineering practice and applied research"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PHE"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #10029
* concept[=].display = "Doctor of Philosophy"
* concept[=].definition = "Research doctoral degree representing the highest level of academic achievement in various fields of study"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PHD"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #10030
* concept[=].display = "Doctor of Science"
* concept[=].definition = "Research or professional doctoral degree in scientific disciplines"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PHS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #10031
* concept[=].display = "Juris Doctor"
* concept[=].definition = "Professional doctoral degree in law required for legal practice in most jurisdictions"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "JD"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #5000
* concept[=].display = "Certified Registered Nurse Anesthetist"
* concept[=].definition = "Advanced practice registered nurse specializing in anesthesia care, providing anesthesia services in various healthcare settings"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CRNA"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board of Certification and Recertification for Nurse Anesthetists"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nbcrna.com"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5001
* concept[=].display = "Family Nurse Practitioner"
* concept[=].definition = "Advanced practice registered nurse providing primary care across the lifespan to individuals and families"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5002
* concept[=].display = "Physician Assistant Certified"
* concept[=].definition = "Healthcare professional licensed to practice medicine with physician supervision, certified by the national certifying body"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PA-C"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Commission on Certification of Physician Assistants"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nccpa.net"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5003
* concept[=].display = "Physician Assistant"
* concept[=].definition = "Healthcare professional licensed to practice medicine with physician supervision"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #5004
* concept[=].display = "Advanced Practice Registered Nurse - Certified Nurse Practitioner"
* concept[=].definition = "Advanced practice registered nurse with specialized graduate education and national certification in a nurse practitioner role"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "APRN-CNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5005
* concept[=].display = "Nurse Practitioner"
* concept[=].definition = "Advanced practice registered nurse with graduate education providing healthcare services including diagnosis, treatment, and management of medical conditions"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #5007
* concept[=].display = "Advanced Registered Nurse Practitioner"
* concept[=].definition = "Advanced practice registered nurse with graduate education and expanded scope of practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ARNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5008
* concept[=].display = "Certified Registered Nurse Practitioner"
* concept[=].definition = "Certified registered nurse with advanced education and training to provide comprehensive healthcare services"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CRNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5009
* concept[=].display = "Family Nurse Practitioner Board Certified"
* concept[=].definition = "Board certified family nurse practitioner providing comprehensive primary care to individuals and families"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FNP-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/ancc"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5010
* concept[=].display = "Nurse Practitioner Certified"
* concept[=].definition = "Nationally certified nurse practitioner with advanced education and training"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NP-C"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5011
* concept[=].display = "Certified Nurse Practitioner"
* concept[=].definition = "Certified nurse practitioner with advanced practice nursing education and national certification"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #5012
* concept[=].display = "Certified Nurse Midwife"
* concept[=].definition = "Advanced practice registered nurse providing comprehensive reproductive healthcare and midwifery services to women"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Midwifery Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.amcbmidwife.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #5013
* concept[=].display = "Advanced Practice Nurse"
* concept[=].definition = "Registered nurse with advanced graduate education and clinical training in a specialized area of nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "APN"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5014
* concept[=].display = "Psychiatric Mental Health Nurse Practitioner"
* concept[=].definition = "Advanced practice registered nurse specializing in mental health care, diagnosis and treatment of psychiatric disorders"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PMHNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5015
* concept[=].display = "Psychiatric Mental Health Nurse Practitioner Board Certified"
* concept[=].definition = "Board certified psychiatric mental health nurse practitioner providing comprehensive mental health services"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PMHNP-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/ancc"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5016
* concept[=].display = "Physician Assistant Certified"
* concept[=].definition = "Certified physician assistant licensed to practice medicine under physician supervision"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PAC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5017
* concept[=].display = "Certified Pediatric Nurse Practitioner"
* concept[=].definition = "Certified nurse practitioner specializing in comprehensive healthcare for infants, children, and adolescents"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPNP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Pediatric Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.pncb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #5018
* concept[=].display = "Adult Nurse Practitioner"
* concept[=].definition = "Nurse practitioner specializing in healthcare for adults across the adult lifespan"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ANP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5020
* concept[=].display = "Advanced Practice Nurse Practitioner"
* concept[=].definition = "Advanced practice nurse with graduate education providing comprehensive healthcare services"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "APNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5021
* concept[=].display = "Pediatric Nurse Practitioner"
* concept[=].definition = "Nurse practitioner specializing in healthcare for infants, children, and adolescents"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5022
* concept[=].display = "Adult-Gerontology Acute Care Nurse Practitioner Board Certified"
* concept[=].definition = "Board certified nurse practitioner specializing in acute care for adults and older adults"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AGACNP-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/ancc"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5023
* concept[=].display = "Registered Physician Assistant Certified"
* concept[=].definition = "Registered and certified physician assistant licensed to practice medicine under physician supervision"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RPA-C"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5024
* concept[=].display = "Acute Care Nurse Practitioner"
* concept[=].definition = "Nurse practitioner specializing in acute and critical care across various healthcare settings"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ACNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5025
* concept[=].display = "Neonatal Nurse Practitioner"
* concept[=].definition = "Nurse practitioner specializing in the care of newborns, especially high-risk and critically ill neonates"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5026
* concept[=].display = "Womens Health Nurse Practitioner"
* concept[=].definition = "Nurse practitioner specializing in comprehensive healthcare for women across the lifespan"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "WHNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5027
* concept[=].display = "Certified Pediatric Nurse Practitioner Primary Care"
* concept[=].definition = "Certified nurse practitioner providing primary care to infants, children, and adolescents"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPNP-PC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Pediatric Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.pncb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5029
* concept[=].display = "Certified Family Nurse Practitioner"
* concept[=].definition = "Certified nurse practitioner providing comprehensive primary care to individuals and families"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CFNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5031
* concept[=].display = "Adult-Gerontology Primary Care Nurse Practitioner Board Certified"
* concept[=].definition = "Board certified nurse practitioner providing primary care to adults and older adults"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AGPCNP-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/ancc"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5032
* concept[=].display = "Adult-Gerontology Nurse Practitioner"
* concept[=].definition = "Nurse practitioner specializing in healthcare for adults and older adults across care settings"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AGNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5033
* concept[=].display = "Womens Health Nurse Practitioner Board Certified"
* concept[=].definition = "Board certified nurse practitioner specializing in comprehensive womens health care"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "WHNP-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5034
* concept[=].display = "Physician Assistant Student"
* concept[=].definition = "Student enrolled in an accredited physician assistant educational program"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PA-S"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5035
* concept[=].display = "Neonatal Nurse Practitioner Board Certified"
* concept[=].definition = "Board certified nurse practitioner specializing in neonatal care and high-risk newborn management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NNP-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5036
* concept[=].display = "Adult Nurse Practitioner Board Certified"
* concept[=].definition = "Board certified nurse practitioner specializing in adult healthcare across the adult lifespan"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ANP-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/ancc"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5037
* concept[=].display = "Acute Care Nurse Practitioner Board Certified"
* concept[=].definition = "Board certified nurse practitioner specializing in acute and critical care management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ACNP-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/ancc"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5038
* concept[=].display = "Master of Physician Assistant Studies"
* concept[=].definition = "Masters degree in physician assistant studies from an accredited educational program"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MPAS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5039
* concept[=].display = "Certified Pediatric Nurse Practitioner - Acute Care"
* concept[=].definition = "Certified nurse practitioner specializing in acute care management for critically ill infants, children, and adolescents"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPNP-AC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Pediatric Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.pncb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5041
* concept[=].display = "Adult Gerontology Primary Care Nurse Practitioner"
* concept[=].definition = "Nurse practitioner providing primary care services to adults and older adults in outpatient and community settings"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AGPCNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5042
* concept[=].display = "Registered Nurse Practitioner"
* concept[=].definition = "Registered nurse with advanced practice education and licensing to provide comprehensive healthcare services"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5043
* concept[=].display = "Adult Gerontology - Acute Care Nurse Practitioner"
* concept[=].definition = "Nurse practitioner specializing in acute care management for adult and geriatric patients in hospital settings"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AG-ACNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5044
* concept[=].display = "Advanced Registered Nurse Practitioner Certified"
* concept[=].definition = "Advanced registered nurse practitioner with national certification and expanded scope of practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ARNP-C"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5045
* concept[=].display = "Adult Nurse Practitioner Certified"
* concept[=].definition = "Certified nurse practitioner specializing in comprehensive healthcare for adult patients"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ANP-C"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5046
* concept[=].display = "Registered Physician Assistant"
* concept[=].definition = "Registered physician assistant licensed to practice medicine under physician supervision with expanded clinical privileges"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RPA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5047
* concept[=].display = "Fellow of the American Academy of Physician Assistants"
* concept[=].definition = "Fellowship recognizing leadership in physician assistant profession"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FAAPA"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Academy of Physician Assistants"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aapa.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90001
* concept[=].display = "Doctor of Education"
* concept[=].definition = "Professional doctoral degree for advanced practice in education leadership and policy"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "EdD"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90002
* concept[=].display = "Doctor of Public Health"
* concept[=].definition = "Professional doctoral degree focusing on population health, policy, and public health practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DPH"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90003
* concept[=].display = "Master of Science"
* concept[=].definition = "Graduate degree in scientific, technical, or mathematical fields"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90004
* concept[=].display = "Master of Public Health"
* concept[=].definition = "Professional masters degree in public health practice and research"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MPH"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90005
* concept[=].display = "Master of Arts"
* concept[=].definition = "Graduate degree in liberal arts, humanities, and social sciences"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90006
* concept[=].display = "Master of Business Administration"
* concept[=].definition = "Professional masters degree in business management and administration"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MBA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90007
* concept[=].display = "Master of Social Work"
* concept[=].definition = "Professional masters degree for clinical and macro social work practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MSW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90008
* concept[=].display = "Master of Science in Education"
* concept[=].definition = "Graduate degree focusing on educational theory, research, and practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MSED"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90009
* concept[=].display = "Master of Education"
* concept[=].definition = "Professional masters degree for educational leadership and teaching"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MED"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90010
* concept[=].display = "Master of Public Administration"
* concept[=].definition = "Professional masters degree for public sector management and policy"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MPA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90011
* concept[=].display = "Master of Health Administration"
* concept[=].definition = "Professional masters degree for healthcare management and administration"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MHA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90012
* concept[=].display = "Masters Degree"
* concept[=].definition = "General masters level academic degree"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MASTERS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90013
* concept[=].display = "Bachelor of Arts"
* concept[=].definition = "Undergraduate degree in liberal arts, humanities, and social sciences"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90014
* concept[=].display = "Bachelor of Science"
* concept[=].definition = "Undergraduate degree in scientific, technical, or mathematical fields"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90015
* concept[=].display = "Bachelor of Social Work"
* concept[=].definition = "Professional undergraduate degree for entry-level social work practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BSW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90016
* concept[=].display = "Associate of Arts"
* concept[=].definition = "Two-year undergraduate degree in liberal arts and general studies"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90017
* concept[=].display = "Certified Public Accountant"
* concept[=].definition = "Professional certification for accounting and auditing practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPA"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Institute of CPAs"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aicpa.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90018
* concept[=].display = "Certified School Food Administrator"
* concept[=].definition = "Professional certification for school food service management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CSFA"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "School Nutrition Association"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://schoolnutrition.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90019
* concept[=].display = "Health Information Specialist"
* concept[=].definition = "Professional specializing in health information management and systems"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "HIS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90020
* concept[=].display = "Chief Executive Officer"
* concept[=].definition = "Executive leadership position responsible for organizational management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CEO"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90021
* concept[=].display = "Licensed Nursing Home Administrator"
* concept[=].definition = "State-licensed administrator for long-term care facilities"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LNHA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90022
* concept[=].display = "Administrative Officer"
* concept[=].definition = "Administrative professional responsible for organizational operations"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AO"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90023
* concept[=].display = "Certified Risk Manager"
* concept[=].definition = "Professional certification in organizational risk management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CRM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Risk and Insurance Management Society"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.rims.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90024
* concept[=].display = "Nursing Home Administrator"
* concept[=].definition = "Administrator responsible for nursing home operations and compliance"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NHA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90025
* concept[=].display = "Administrator"
* concept[=].definition = "General administrative role in healthcare or organizational settings"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ADMINISTRATOR"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90026
* concept[=].display = "Student"
* concept[=].definition = "Individual enrolled in educational or training programs"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "STUDENT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90027
* concept[=].display = "Certified Meeting Professional"
* concept[=].definition = "Professional certification for meeting and event planning"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CMP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Events Industry Council"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.eventscouncil.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90029
* concept[=].display = "Esquire"
* concept[=].definition = "Professional title for licensed attorneys admitted to the bar"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ESQ"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90030
* concept[=].display = "Associate of Applied Science"
* concept[=].definition = "Two-year degree typically in technical or applied fields"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AAS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90031
* concept[=].display = "Affiliated Study Group"
* concept[=].definition = "Member of affiliated study group in medical specialty"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ASG"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90032
* concept[=].display = "Homeopathic Affiliated Study Group"
* concept[=].definition = "Member of homeopathic affiliated study group"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "HASG"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90033
* concept[=].display = "Homoeopathic Study Group"
* concept[=].definition = "Member of homeopathic study group"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "HSG"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90034
* concept[=].display = "Study Group"
* concept[=].definition = "Member of medical specialty study group"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "SG"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90035
* concept[=].display = "Laymens League"
* concept[=].definition = "Member of medical laymens league"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LL"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #90036
* concept[=].display = "Homoeopathic Laymens League"
* concept[=].definition = "Member of homeopathic laymens league"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "HLL"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1000
* concept[=].display = "Registered Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RN"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #1001
* concept[=].display = "Licensed Practical Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LPN"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1002
* concept[=].display = "Licensed Vocational Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LVN"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1003
* concept[=].display = "Certified Nursing Assistant"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1004
* concept[=].display = "Registered Nurse First Assistant"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RNFA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1005
* concept[=].display = "Bachelor of Science in Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BSN"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #1006
* concept[=].display = "State Tested Nursing Assistant"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "STNA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1007
* concept[=].display = "Master of Science in Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MSN"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #1008
* concept[=].display = "Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NURSE"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1015
* concept[=].display = "Gerontological Nurse Practitioner"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "GNP-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1016
* concept[=].display = "Pediatric Primary Care Nurse Practitioner"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PPCNP-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1017
* concept[=].display = "School Nurse Practitioner"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "SNP-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1018
* concept[=].display = "Advanced Diabetes Management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ADM-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1019
* concept[=].display = "Emergency Nurse Practitioner"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ENP-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1020
* concept[=].display = "Adult-Gerontology Clinical Nurse Specialist"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AGCNS-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1021
* concept[=].display = "Adult Health Clinical Nurse Specialist"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ACNS-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1022
* concept[=].display = "Psychiatric Mental Health Clinical Nurse Specialist"
* concept[=].definition = "Board certification for clinical nurse specialists in psychiatric and mental health nursing."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PMHCNS-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1024
* concept[=].display = "Gerontological Clinical Nurse Specialist"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "GCNS-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1025
* concept[=].display = "Home Health Clinical Nurse Specialist"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "HHCNS-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1026
* concept[=].display = "Pediatric Clinical Nurse Specialist"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PCNS-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1027
* concept[=].display = "Public/Community Health Clinical Nurse Specialist"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PHCNS-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1028
* concept[=].display = "Clinical Nurse Specialist Core"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNS-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1029
* concept[=].display = "Ambulatory Care Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AMB-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1030
* concept[=].display = "Cardiac-Vascular Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CV-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1031
* concept[=].display = "Gerontological Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "GERO-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1032
* concept[=].display = "Informatics Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NI-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1033
* concept[=].display = "Medical-Surgical Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MEDSURG-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1034
* concept[=].display = "Nurse Executive"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NE-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1035
* concept[=].display = "Nurse Executive Advanced"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NEA-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1036
* concept[=].display = "Nursing Case Management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CMGT-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1037
* concept[=].display = "Nursing Professional Development"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NPD-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1038
* concept[=].display = "Pain Management Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PMGT-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1039
* concept[=].display = "Pediatric Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PED-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1040
* concept[=].display = "Psychiatric-Mental Health Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PMH-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1041
* concept[=].display = "Care Coordination and Transition Management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CCCTM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1042
* concept[=].display = "Certified Vascular Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1043
* concept[=].display = "College Health Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1044
* concept[=].display = "Community Health Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1045
* concept[=].display = "Faith Community Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1046
* concept[=].display = "Forensic Nursing Advanced"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AFN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1047
* concept[=].display = "General Nursing Practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1048
* concept[=].display = "Genetics Nursing Advanced"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AGN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1049
* concept[=].display = "Hemostasis Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1050
* concept[=].display = "High-Risk Perinatal Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1051
* concept[=].display = "Home Health Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1052
* concept[=].display = "Perinatal Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1053
* concept[=].display = "Public Health Nursing Advanced"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PHNA-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1054
* concept[=].display = "Rheumatology Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1055
* concept[=].display = "School Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1217
* concept[=].display = "General Nursing Practice Certification"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1056
* concept[=].display = "National Healthcare Disaster"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NHDP-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center (ANCC)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org/our-certifications/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1057
* concept[=].display = "Family Nurse Practitioner"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FNP-C"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Academy of Nurse Practitioners Certification Board (AANPCB)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aanpcert.org/certifications"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1058
* concept[=].display = "Adult-Gerontology Primary Care Nurse Practitioner"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AGNP-C"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Academy of Nurse Practitioners Certification Board (AANPCB)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aanpcert.org/certifications"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1059
* concept[=].display = "Emergency Nurse Practitioner"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ENP-C"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Academy of Nurse Practitioners Certification Board (AANPCB)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aanpcert.org/certifications"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1060
* concept[=].display = "Psychiatric Mental Health Nurse Practitioner"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PMHNP-C"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Academy of Nurse Practitioners Certification Board (AANPCB)"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aanpcert.org/certifications"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1061
* concept[=].display = "Certified Pediatric Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Pediatric Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.pncb.org/certifications"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1064
* concept[=].display = "Pediatric Primary Care Mental Health Specialist"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PMHS"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Pediatric Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.pncb.org/certifications"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1065
* concept[=].display = "Critical Care Registered Nurse (Adult)"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CCRN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1066
* concept[=].display = "Critical Care Registered Nurse (Pediatric)"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CCRN-P"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1067
* concept[=].display = "Critical Care Registered Nurse (Neonatal)"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CCRN-N"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1068
* concept[=].display = "Critical Care Registered Nurse (Knowledge Professional)"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CCRN-K"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1069
* concept[=].display = "Critical Care Registered Nurse (Tele-ICU)"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CCRN-E"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1070
* concept[=].display = "Progressive Care Certified Nurse (Adult)"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PCCN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1071
* concept[=].display = "Progressive Care Certified Nurse (Knowledge Professional)"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PCCN-K"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1072
* concept[=].display = "Cardiac Medicine (Adult)"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CMC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1073
* concept[=].display = "Cardiac Surgery (Adult)"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CSC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1074
* concept[=].display = "Acute Care Nurse Practitioner Certified (Adult-Gerontology)"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ACNPC-AG"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1075
* concept[=].display = "Acute Care Clinical Nurse Specialist (Adult-Gerontology)"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ACCNS-AG"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1076
* concept[=].display = "Acute Care Clinical Nurse Specialist (Pediatric)"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ACCNS-P"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1077
* concept[=].display = "Acute Care Clinical Nurse Specialist (Neonatal)"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ACCNS-N"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aacn.org/certification/get-certified"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1078
* concept[=].display = "Inpatient Obstetric Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RNC-OB"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1079
* concept[=].display = "Maternal Newborn Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RNC-MNN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1080
* concept[=].display = "Low-Risk Neonatal Intensive Care Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RNC-LRN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1081
* concept[=].display = "Neonatal Intensive Care Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RNC-NIC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1082
* concept[=].display = "Inpatient Antepartum Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RNC-IAP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1085
* concept[=].display = "Electronic Fetal Monitoring"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "C-EFM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1086
* concept[=].display = "Neonatal Pediatric Transport"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "C-NPT"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1087
* concept[=].display = "Neonatal Neuro-Intensive Care"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "C-NNIC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1088
* concept[=].display = "Care of the Extremely Low Birth Weight Neonate"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "C-ELBW"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1089
* concept[=].display = "Obstetric and Neonatal Quality and Safety"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "C-ONQS"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1090
* concept[=].display = "Reproductive Health and Infertility"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "C-RHI"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1091
* concept[=].display = "Obstetric Emergencies"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "C-OBE"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nccwebsite.org/certification-exams/how-do-i-apply"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1092
* concept[=].display = "Oncology Certified Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "OCN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Oncology Nursing Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.oncc.org/certification-renewal-guide"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1093
* concept[=].display = "Certified Pediatric Hematology Oncology Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPHON"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Oncology Nursing Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.oncc.org/certification-renewal-guide"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1094
* concept[=].display = "Certified Breast Care Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CBCN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Oncology Nursing Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.oncc.org/certification-renewal-guide"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1095
* concept[=].display = "Blood & Marrow Transplant Certified Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BMTCN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Oncology Nursing Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.oncc.org/certification-renewal-guide"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1096
* concept[=].display = "Advanced Oncology Certified Nurse Practitioner"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AOCNP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Oncology Nursing Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.oncc.org/certification-renewal-guide"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1097
* concept[=].display = "Advanced Oncology Certified Clinical Nurse Specialist"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AOCNS"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Oncology Nursing Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.oncc.org/certification-renewal-guide"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1098
* concept[=].display = "Certified Pediatric Oncology Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPON"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Oncology Nursing Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.oncc.org/certification-renewal-guide"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1099
* concept[=].display = "Advanced Oncology Certified Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AOCN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Oncology Nursing Certification Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.oncc.org/certification-renewal-guide"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1100
* concept[=].display = "Certified Emergency Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CEN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Board of Certification for Emergency Nursing"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://bcen.org/cen/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1101
* concept[=].display = "Certified Flight Registered Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CFRN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Board of Certification for Emergency Nursing"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://bcen.org/cen/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1102
* concept[=].display = "Certified Pediatric Emergency Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPEN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Board of Certification for Emergency Nursing"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://bcen.org/cen/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1103
* concept[=].display = "Certified Transport Registered Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CTRN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Board of Certification for Emergency Nursing"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://bcen.org/cen/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1104
* concept[=].display = "Trauma Certified Registered Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "TCRN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Board of Certification for Emergency Nursing"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://bcen.org/cen/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1105
* concept[=].display = "Certified Burn Registered Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CBRN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Board of Certification for Emergency Nursing"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://bcen.org/cen/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1106
* concept[=].display = "Advanced HIV/AIDS Certified Registered Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AACRN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "HIV/AIDS Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://hancb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1107
* concept[=].display = "HIV/AIDS Certified Registered Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ACRN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "HIV/AIDS Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://hancb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1108
* concept[=].display = "HIV/AIDS Certified LPN/LVN"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ACLPN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "HIV/AIDS Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://hancb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1109
* concept[=].display = "Advanced Certified Hospice and Palliative Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ACHPN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Hospice and Palliative Credentialing Center"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://advancingexpertcare.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1110
* concept[=].display = "Certified Hospice and Palliative Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CHPN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Hospice and Palliative Credentialing Center"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://advancingexpertcare.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1111
* concept[=].display = "Certified Hospice and Palliative Licensed Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CHPLN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Hospice and Palliative Credentialing Center"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://advancingexpertcare.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1112
* concept[=].display = "Certified Hospice and Palliative Pediatric Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CHPPN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Hospice and Palliative Credentialing Center"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://advancingexpertcare.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1113
* concept[=].display = "Certified Hospice and Palliative Nursing Assistant"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CHPNA"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Hospice and Palliative Credentialing Center"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://advancingexpertcare.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1114
* concept[=].display = "Certified in Perinatal Loss Care"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPLC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Hospice and Palliative Credentialing Center"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://advancingexpertcare.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1115
* concept[=].display = "Certified Asthma Educator"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AE-C"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board for Respiratory Care"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://nbrc.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1116
* concept[=].display = "Advanced Holistic Nurse Board Certified"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AHN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Holistic Nurses Credentialing Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://ahncc.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1117
* concept[=].display = "Advanced Practice Holistic Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "APHN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Holistic Nurses Credentialing Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://ahncc.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1118
* concept[=].display = "Holistic Nurse Board Certified"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "HN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Holistic Nurses Credentialing Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://ahncc.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1119
* concept[=].display = "Holistic Baccalaureate Nurse Board Certified"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "HNB-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Holistic Nurses Credentialing Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://ahncc.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1120
* concept[=].display = "Health and Wellness Nurse Coach Board Certified"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "HWNC-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Holistic Nurses Credentialing Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://ahncc.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1121
* concept[=].display = "Nurse Coach Board Certified"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NC-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Holistic Nurses Credentialing Corporation"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://ahncc.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1122
* concept[=].display = "Advanced Wound Care Certified"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AWCC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Alliance of Wound Care and Ostomy"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://nawccb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1123
* concept[=].display = "Ostomy Management Specialist"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "OMS"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Alliance of Wound Care and Ostomy"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://nawccb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1124
* concept[=].display = "Wound Care Certified"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "WCC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Alliance of Wound Care and Ostomy"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://nawccb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1125
* concept[=].display = "Certified Continence Care Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CCCN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1126
* concept[=].display = "Certified Continence Care Nurse-Advanced Practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CCCN-AP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1127
* concept[=].display = "Certified Foot Care Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CFCN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1128
* concept[=].display = "Certified Ostomy Care Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "COCN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1129
* concept[=].display = "Certified Ostomy Care Nurse-Advanced Practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "COCN-AP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1130
* concept[=].display = "Certified Wound Care Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CWCN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1131
* concept[=].display = "Certified Wound Care Nurse-Advanced Practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CWCN-AP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1132
* concept[=].display = "Certified Wound Ostomy Continence Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CWOCN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1133
* concept[=].display = "Certified Wound Ostomy Continence Nurse-Advanced Practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CWOCN-AP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1134
* concept[=].display = "Certified Wound Ostomy Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CWON"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1135
* concept[=].display = "Certified Wound Ostomy Nurse-Advanced Practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CWON-AP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Wound Ostomy and Continence Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://wocncb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1136
* concept[=].display = "Board Certified-Advanced Diabetes Management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BC-ADM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Certification Board for Diabetes Educators"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://ncbde.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1137
* concept[=].display = "Certified Diabetes Care and Education Specialist"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CDCES"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Certification Board for Diabetes Care and Education"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cbdce.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1138
* concept[=].display = "Certified Heart Failure Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CHFN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Heart Failure Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://aahfn.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1139
* concept[=].display = "Non-Clinical Heart Failure Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CHFN-K"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Heart Failure Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://aahfn.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1140
* concept[=].display = "International Board Certified Lactation Consultant"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "IBCLC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "International Board of Lactation Consultant Examiners"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://iblce.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1141
* concept[=].display = "Certified Lactation Counselor"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CLC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Center for Breastfeeding"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://centerforbreastfeeding.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1142
* concept[=].display = "Certified in Infection Control"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CIC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Certification Board of Infection Control and Epidemiology"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cbic.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1143
* concept[=].display = "National Certified School Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NCSN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board for Certification of School Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://nbcsn.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1144
* concept[=].display = "Certified Gastroenterology Registered Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CGRN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Certification for Gastroenterology Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://abcgn.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1145
* concept[=].display = "Certified Radiologic Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CRN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Association for Radiologic and Imaging Nursing"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://arinursing.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1146
* concept[=].display = "Certification for Registered Nurses of Ophthalmology"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CRNO"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Society of Ophthalmic Registered Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://asorn.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1147
* concept[=].display = "Certified Otorhinolaryngology Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CORLN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Society of Otorhinolaryngology and Head-Neck Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://sohnnurse.com"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1148
* concept[=].display = "Certified Neuroscience Registered Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNRN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Neuroscience Nursing"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://abnncertification.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1149
* concept[=].display = "Stroke Certified Registered Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "SCRN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Neuroscience Nursing"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://abnncertification.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1150
* concept[=].display = "Certified Urologic Associate"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CUA"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Certification Board for Urologic Nurses and Associates"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cbuna.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1151
* concept[=].display = "Certified Urologic Nurse Practitioner"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CUNP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Certification Board for Urologic Nurses and Associates"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cbuna.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1152
* concept[=].display = "Certified Urologic Registered Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CURN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Certification Board for Urologic Nurses and Associates"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cbuna.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1153
* concept[=].display = "Certified Rehabilitation Registered Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CRRN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Rehabilitation Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://rehabnurse.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1154
* concept[=].display = "Certified Aesthetic Nurse Specialist"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CANS"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Plastic Surgical Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://psncb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1155
* concept[=].display = "Certified Plastic Surgical Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPSN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Plastic Surgical Nursing Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://psncb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1156
* concept[=].display = "Certified Ambulatory Perianesthesia Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CAPA"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Perianesthesia Nursing Certification"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cpancapa.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1157
* concept[=].display = "Certified Post Anesthesia Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPAN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Perianesthesia Nursing Certification"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cpancapa.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1158
* concept[=].display = "Certified Foundational Perioperative Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CFPN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Competency & Credentialing Institute"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cc-institute.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1159
* concept[=].display = "Certified Perioperative Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNOR"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Competency & Credentialing Institute"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cc-institute.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1160
* concept[=].display = "Certified Clinical Nurse Specialist Perioperative"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNS-CP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Competency & Credentialing Institute"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cc-institute.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1161
* concept[=].display = "Certified Ambulatory Surgery Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNAMB"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Competency & Credentialing Institute"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cc-institute.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1162
* concept[=].display = "Certified Surgical Services Manager"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CSSM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Competency & Credentialing Institute"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cc-institute.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1163
* concept[=].display = "Nursing Professional Development Advanced Board Certified"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NPDA-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Competency & Credentialing Institute"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cc-institute.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1164
* concept[=].display = "Certified Medical-Surgical Registered Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CMSRN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Academy of Medical-Surgical Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://amsn.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1165
* concept[=].display = "Certified in Executive Nursing Practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CENP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Organization for Nursing Leadership"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://aonl.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1166
* concept[=].display = "Nurse Manager and Leader"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNML"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Organization for Nursing Leadership"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://aonl.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1167
* concept[=].display = "Certified Nurse Educator"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNE"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National League for Nursing"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://nln.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1168
* concept[=].display = "Certified Academic Clinical Nurse Educator"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNE-cl"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National League for Nursing"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://nln.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1169
* concept[=].display = "Clinical Nurse Leader"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNL"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Colleges of Nursing"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aacnnursing.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1171
* concept[=].display = "Certified Addictions Registered Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CARN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Certified Addictions Registered Nurse - Board of Certification"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cnetnurse.com"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1172
* concept[=].display = "Certified Addictions Registered Nurse - Advanced Practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CARN-AP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Certified Addictions Registered Nurse - Board of Certification"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cnetnurse.com"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1173
* concept[=].display = "Certified Correctional Health Professional-RN"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CCHP-RN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Commission on Correctional Health Care"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://ncchc.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1174
* concept[=].display = "Certified Corrections Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Correctional Association"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://aca.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1175
* concept[=].display = "Certified Corrections Nurse/Manager"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNN/M"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Correctional Association"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://aca.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1176
* concept[=].display = "Certified Dialysis Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CDN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Nephrology Nursing Certification Commission"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://nncc-exam.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1177
* concept[=].display = "Certified Nephrology Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Nephrology Nursing Certification Commission"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://nncc-exam.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1178
* concept[=].display = "Certified Nephrology Nurse-Nurse Practitioner"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNN-NP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Nephrology Nursing Certification Commission"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://nncc-exam.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1179
* concept[=].display = "Certified Clinical Hemodialysis Technician"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CCHT"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Nephrology Nursing Certification Commission"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://nncc-exam.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1180
* concept[=].display = "Certified Clinical Hemodialysis Technician-Advanced"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CCHT-A"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Nephrology Nursing Certification Commission"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://nncc-exam.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1181
* concept[=].display = "Certified Dialysis Licensed Practical Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CD-LPN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Nephrology Nursing Certification Commission"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://nncc-exam.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1182
* concept[=].display = "Dermatology Nurse Certified"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DNC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Dermatology Nurses Association"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://dnanurse.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1183
* concept[=].display = "Dermatology Certified Nurse Practitioner"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DCNP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Dermatology Nurses Association"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://dnanurse.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1185
* concept[=].display = "Sexual Assault Nurse Examiner - Adult/Adolescent"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "SANE-A"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "International Association of Forensic Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://forensicnurses.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1186
* concept[=].display = "Sexual Assault Nurse Examiner - Pediatric"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "SANE-P"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "International Association of Forensic Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://forensicnurses.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1187
* concept[=].display = "Certified Registered Nurse First Assistant"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CRNFA"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Association of Surgical Assistants"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://nascertification.com"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1188
* concept[=].display = "Registered Nurse Assistant at Surgery – Certified"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RNAS-C"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Association of Surgical Assistants"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://nascertification.com"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1189
* concept[=].display = "Certified Registered Nurse Infusion"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CRNI"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Infusion Nurses Society"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://ins1.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1190
* concept[=].display = "Legal Nurse Consultant Certified"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LNCC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Legal Nurse Consultants"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://lncc.aalnc.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1191
* concept[=].display = "Certified Occupational Health Nurse"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "COHN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board for Occupational Health Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://abohn.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1192
* concept[=].display = "Certified Occupational Health Nurse-Specialist"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "COHN-S"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board for Occupational Health Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://abohn.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1193
* concept[=].display = "Occupational Health Nursing Case Management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board for Occupational Health Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://abohn.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1194
* concept[=].display = "Certification in Managed Care Nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CMCN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Managed Care Medicine"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://abmcn.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1195
* concept[=].display = "Certified Professional in Healthcare Quality"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPHQ"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Association for Healthcare Quality"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://cphq.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1196
* concept[=].display = "Certified Professional in Healthcare Risk Management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPHRM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Hospital Association"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://aha.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1197
* concept[=].display = "Clinical Research Nurse Certification"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CRN-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Clinical Research Nurse Certification Commission"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://crncc.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1198
* concept[=].display = "Certified Wound Care Associate"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CWCA"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Wound Management"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://abwmcertified.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1199
* concept[=].display = "Certified Wound Specialist"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CWS"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Wound Management"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://abwmcertified.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1201
* concept[=].display = "Medical Writer Certified"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MWC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Medical Writers Association"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://amwa.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1202
* concept[=].display = "Fellow of the American Academy of Nursing"
* concept[=].definition = "Honorary fellowship recognizing significant contributions to nursing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FAAN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Academy of Nursing"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aannet.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1203
* concept[=].display = "Acute Care Nurse Practitioner Certified"
* concept[=].definition = "Board certification for acute care nurse practitioners"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ACNPC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Association of Critical-Care Nurses"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aacn.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1205
* concept[=].display = "Gerontological Nurse Practitioner"
* concept[=].definition = "Nurse practitioner specializing in geriatric care"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "GNP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Nurses Credentialing Center"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nursingworld.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1206
* concept[=].display = "Nurse Practitioner Certified"
* concept[=].definition = "Generic nurse practitioner certification"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NPC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Various certification boards"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1207
* concept[=].display = "Registered Nurse Certified"
* concept[=].definition = "Registered nurse with specialty certification in specific clinical area"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RN-C"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1208
* concept[=].display = "Registered Nurse Clinical Specialist"
* concept[=].definition = "Registered nurse with advanced clinical specialization and expertise"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RNCS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1209
* concept[=].display = "Registered Nurse, Nurse Practitioner"
* concept[=].definition = "Registered nurse with nurse practitioner qualification and advanced practice training"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RN/NP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1210
* concept[=].display = "Master of Nursing, Nurse Practitioner"
* concept[=].definition = "Masters degree in nursing with nurse practitioner specialization"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MNNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1211
* concept[=].display = "Advanced Practice Nurse"
* concept[=].definition = "Advanced Practice Nurse with graduate-level education and clinical training"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PN"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #1212
* concept[=].display = "Bachelor of Nursing"
* concept[=].definition = "Bachelor degree in nursing providing foundational nursing education"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BN"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #1213
* concept[=].display = "Certified Adult Nurse Practitioner"
* concept[=].definition = "Certified Adult Nurse Practitioner specializing in adult healthcare"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CANP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #1214
* concept[=].display = "Certified Registered Nurse"
* concept[=].definition = "Certified Registered Nurse with advanced certification beyond basic RN license"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CRN"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #1215
* concept[=].display = "Certified Nurse Specialist"
* concept[=].definition = "Certified Nurse Specialist with advanced practice nursing expertise in specialized clinical areas"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #1216
* concept[=].display = "Family Practice Nurse Practitioner"
* concept[=].definition = "Family Practice Nurse Practitioner providing comprehensive primary care to families"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FPNP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50000
* concept[=].display = "Master of Science in Dentistry"
* concept[=].definition = "Advanced graduate degree in dentistry beyond DDS/DMD"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MSD"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50001
* concept[=].display = "Fellow of the Academy of General Dentistry"
* concept[=].definition = "Fellowship recognition for advanced general dentistry education"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FAGD"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Academy of General Dentistry"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.agd.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50002
* concept[=].display = "Master of the Academy of General Dentistry"
* concept[=].definition = "Mastership recognition for extensive continuing education in general dentistry"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MAGD"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Academy of General Dentistry"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.agd.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50003
* concept[=].display = "Registered Dental Hygienist"
* concept[=].definition = "Licensed professional providing preventive dental care and education"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RDH"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.adha.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50004
* concept[=].display = "Registered Dental Hygienist in Alternative Practice"
* concept[=].definition = "Dental hygienist authorized to practice independently in certain states"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RDHAP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50005
* concept[=].display = "Bachelor of Dental Surgery"
* concept[=].definition = "Dental degree common in international healthcare systems"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BDS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50006
* concept[=].display = "Clinical Pharmacist"
* concept[=].definition = "Pharmacist specializing in direct patient care and medication management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PharmC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50007
* concept[=].display = "Registered Pharmacist"
* concept[=].definition = "Licensed pharmacist authorized to dispense medications"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RPH"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nabp.pharmacy"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50008
* concept[=].display = "Certified Pharmacy Technician"
* concept[=].definition = "Certified technician assisting pharmacists in medication preparation"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPHT"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Pharmacy Technician Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.ptcb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50009
* concept[=].display = "Pharmacist Clinician"
* concept[=].definition = "Pharmacist providing clinical services in healthcare settings"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50010
* concept[=].display = "Registered Dietitian"
* concept[=].definition = "Licensed nutrition professional providing medical nutrition therapy"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RD"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Commission on Dietetic Registration"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.cdrnet.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50011
* concept[=].display = "Registered Dietitian Nutritionist"
* concept[=].definition = "Updated credential name for Registered Dietitian"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RDN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Commission on Dietetic Registration"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.cdrnet.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50012
* concept[=].display = "Registered Dietitian"
* concept[=].definition = "Licensed nutrition professional providing medical nutrition therapy"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "REGISTERED-DIETITIAN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Commission on Dietetic Registration"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.cdrnet.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50013
* concept[=].display = "Home Health Aide"
* concept[=].definition = "Certified aide providing basic health services in home settings"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "HHA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50014
* concept[=].display = "Certified Audiologist Assistant"
* concept[=].definition = "Assistant supporting audiologists in hearing assessment and treatment"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CAA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50015
* concept[=].display = "Community Health Worker"
* concept[=].definition = "Health worker providing health education and advocacy in community settings"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CHW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50016
* concept[=].display = "Certified Medical Assistant"
* concept[=].definition = "Certified assistant performing clinical and administrative tasks in medical offices"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CMA"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aama-ntl.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50017
* concept[=].display = "Personal Care Assistant"
* concept[=].definition = "Assistant providing personal care services to individuals with disabilities"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PCA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50018
* concept[=].display = "Registered Radiologic Technologist"
* concept[=].definition = "Certified technologist performing diagnostic imaging procedures"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RADT"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Registry of Radiologic Technologists"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.arrt.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50019
* concept[=].display = "Certified Neurophysiologic Intraoperative Monitoring"
* concept[=].definition = "Specialist monitoring nervous system function during surgery"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CNIM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Neurophysiologic Monitoring"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.abnm.info"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50020
* concept[=].display = "Computed Tomography Technologist"
* concept[=].definition = "Specialized technologist operating CT scanning equipment"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CT"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Registry of Radiologic Technologists"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.arrt.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50021
* concept[=].display = "Certified Clinical Perfusionist"
* concept[=].definition = "Specialist operating heart-lung machines during cardiac surgery"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CCP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Cardiovascular Perfusion"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.abcp.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50022
* concept[=].display = "Certified Surgical Technologist"
* concept[=].definition = "Certified technologist assisting in surgical procedures"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CST"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board of Surgical Technology and Surgical Assisting"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nbstsa.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50023
* concept[=].display = "Licensed Optician"
* concept[=].definition = "Professional fitting and dispensing eyeglasses and contact lenses"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "OPTICIAN"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.abo-ncle.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50024
* concept[=].display = "Licensed Dispensing Optician"
* concept[=].definition = "Licensed professional dispensing corrective eyewear"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LDO"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50025
* concept[=].display = "Board Certified Hearing Instrument Specialist"
* concept[=].definition = "Board certified specialist fitting and dispensing hearing aids"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BC-HIS"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board for Certification in Hearing Instrument Sciences"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nbc-his.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50027
* concept[=].display = "Infection Disease Control Specialist"
* concept[=].definition = "Specialist in preventing and controlling infectious diseases"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "IDC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50028
* concept[=].display = "Independent Duty Medical Technician"
* concept[=].definition = "Military medical technician providing independent patient care"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "IDMT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50029
* concept[=].display = "Birth Doula"
* concept[=].definition = "Non-medical support person assisting during childbirth and postpartum"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DOULA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50030
* concept[=].display = "Certified Professional Midwife"
* concept[=].definition = "Certified midwife providing care during pregnancy, birth, and postpartum"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "North American Registry of Midwives"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://narm.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50031
* concept[=].display = "Certified Doula - DONA International"
* concept[=].definition = "DONA certified doula providing birth and postpartum support"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CD-DONA"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "DONA International"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.dona.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50032
* concept[=].display = "Certified Prosthetist Orthotist"
* concept[=].definition = "Certified professional designing and fitting prosthetic and orthotic devices"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPO"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board for Certification in Orthotics, Prosthetics and Pedorthics"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.abcop.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50033
* concept[=].display = "National Board Certified Health and Wellness Coach"
* concept[=].definition = "Board certified coach helping clients achieve health and wellness goals"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NBC-HWC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board for Health and Wellness Coaching"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://nbhwc.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50034
* concept[=].display = "Master of Communication Disorders"
* concept[=].definition = "Graduate degree in communication sciences and disorders"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MCD"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50035
* concept[=].display = "Advanced Practitioner"
* concept[=].definition = "General designation for advanced level healthcare practitioner"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50036
* concept[=].display = "Clinical Doctor of Physical Therapy"
* concept[=].definition = "Advanced clinical doctorate in physical therapy"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CDPT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50037
* concept[=].display = "Bachelor of Medical Science"
* concept[=].definition = "Undergraduate degree in medical sciences"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BMS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50038
* concept[=].display = "Certified Genetic Counselor"
* concept[=].definition = "Board certified counselor providing genetic risk assessment and counseling"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CGC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Genetic Counseling"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.abgc.net"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50039
* concept[=].display = "Registered Dental Hygienist Extended Function"
* concept[=].definition = "Dental hygienist with expanded scope of practice beyond standard RDH"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RDHEF"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50040
* concept[=].display = "Registered Dental Assistant"
* concept[=].definition = "Certified dental assistant with advanced clinical skills"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RDA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50041
* concept[=].display = "Orthodontist"
* concept[=].definition = "Dental specialist in tooth and jaw alignment correction"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ORTHODONTIST"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Orthodontics"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.americanboardortho.com"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50042
* concept[=].display = "Endodontist"
* concept[=].definition = "Dental specialist in root canal therapy and pulp diseases"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ENDODONTIST"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Endodontics"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aae.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50043
* concept[=].display = "Periodontist"
* concept[=].definition = "Dental specialist in gum diseases and supporting structures"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PERIODONTIST"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Periodontology"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.perio.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50044
* concept[=].display = "Prosthodontist"
* concept[=].definition = "Dental specialist in prosthetic and restorative dentistry"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PROSTHODONTIST"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Prosthodontics"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.prosthodontics.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50045
* concept[=].display = "Oral and Maxillofacial Surgeon"
* concept[=].definition = "Dental specialist in surgical treatment of face, mouth, and jaw"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "OMFS"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Oral and Maxillofacial Surgery"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aboms.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50046
* concept[=].display = "Board Certified Pharmacotherapy Specialist"
* concept[=].definition = "Board certified pharmacist specializing in pharmacotherapy"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BCPS"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Board of Pharmaceutical Specialties"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.bpsweb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50047
* concept[=].display = "Board Certified Psychiatric Pharmacist"
* concept[=].definition = "Board certified pharmacist specializing in psychiatric medications"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BCPP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Board of Pharmaceutical Specialties"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.bpsweb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50048
* concept[=].display = "Registered Diagnostic Medical Sonographer"
* concept[=].definition = "Registered sonographer performing diagnostic ultrasound examinations"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RDMS"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Registry for Diagnostic Medical Sonography"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.ardms.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50049
* concept[=].display = "Registered Diagnostic Cardiac Sonographer"
* concept[=].definition = "Registered sonographer specializing in cardiac ultrasound examinations"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RDCS"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Registry for Diagnostic Medical Sonography"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.ardms.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50050
* concept[=].display = "Dietetic Technician, Registered"
* concept[=].definition = "Registered technician supporting dietitians in nutrition care"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DTR"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Commission on Dietetic Registration"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.cdrnet.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50051
* concept[=].display = "Certified Professional Coder"
* concept[=].definition = "Certified professional specializing in medical coding for healthcare billing"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Academy of Professional Coders"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aapc.com"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50052
* concept[=].display = "Licensed Nutritionist"
* concept[=].definition = "Licensed professional providing nutrition counseling and dietary guidance"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LN"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50053
* concept[=].display = "Licensed Nutritionist Counselor"
* concept[=].definition = "Licensed nutritionist with counseling credentials for dietary and nutrition therapy"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LNC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50054
* concept[=].display = "Fellow of the International Academy of Oral Medicine and Toxicology"
* concept[=].definition = "Fellowship in oral medicine and toxicology"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FIAOMT"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "International Academy of Oral Medicine and Toxicology"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://iaomt.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50055
* concept[=].display = "Fellow of the International College of Cranio Mandibular Orthopedics"
* concept[=].definition = "Fellowship in cranio mandibular orthopedics"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FICCMO"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "International College of Cranio Mandibular Orthopedics"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #50058
* concept[=].display = "Associate of Business Administration"
* concept[=].definition = "Two-year associate degree in business administration covering basic business principles"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ABA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50059
* concept[=].display = "Associate of Engineering"
* concept[=].definition = "Two-year associate degree in engineering providing technical foundation in engineering principles"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AE"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50060
* concept[=].display = "Associate of Science"
* concept[=].definition = "Two-year associate degree in science covering mathematics, natural sciences, and related technical fields"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50062
* concept[=].display = "Bachelor of Business Administration"
* concept[=].definition = "Four-year undergraduate degree in business administration and management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BBA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50063
* concept[=].display = "Bachelor or Engineering"
* concept[=].definition = "Four-year undergraduate degree in engineering disciplines"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BE"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50064
* concept[=].display = "Bachelor of Fine Arts"
* concept[=].definition = "Four-year undergraduate degree in fine arts, visual arts, or performing arts"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BFA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50066
* concept[=].display = "Bachelor of Science - Law"
* concept[=].definition = "Four-year undergraduate degree combining science and legal studies"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BSL"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50067
* concept[=].display = "Bachelor of Theology"
* concept[=].definition = "Four-year undergraduate degree in theological studies and religious education"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50068
* concept[=].display = "Certificate"
* concept[=].definition = "Certificate credential representing completion of specialized training or education program"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CER"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50069
* concept[=].display = "Certified Tumor Registrar"
* concept[=].definition = "Certified professional specializing in cancer data collection and registry management"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CTR"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50070
* concept[=].display = "Diploma"
* concept[=].definition = "Diploma credential representing completion of educational or training program"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DIP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50071
* concept[=].display = "Emergency Medical Technician"
* concept[=].definition = "Certified emergency medical technician providing basic emergency medical care and transportation"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "EMT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50072
* concept[=].display = "Emergency Medical Technician - Paramedic"
* concept[=].definition = "Advanced emergency medical technician with paramedic certification providing advanced life support"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "EMTP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50073
* concept[=].display = "High School Graduate"
* concept[=].definition = "High school diploma or equivalent representing completion of secondary education"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "HS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50076
* concept[=].display = "Master of Civil Engineering"
* concept[=].definition = "Graduate degree in civil engineering with specialized focus on infrastructure and construction"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MCE"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50077
* concept[=].display = "Master of Divinity"
* concept[=].definition = "Graduate degree in divinity and theological studies for religious ministry"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MDI"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50079
* concept[=].display = "Master of Electrical Engineering"
* concept[=].definition = "Graduate degree in electrical engineering with specialized technical focus"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MEE"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50080
* concept[=].display = "Master of Engineering"
* concept[=].definition = "Graduate degree in engineering disciplines for advanced technical practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ME"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50081
* concept[=].display = "Master of Fine Arts"
* concept[=].definition = "Graduate degree in fine arts, visual arts, creative writing, or performing arts"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MFA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50082
* concept[=].display = "Master of Mechanical Engineering"
* concept[=].definition = "Graduate degree in mechanical engineering with specialized technical focus"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MME"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50084
* concept[=].display = "Master of Science - Law"
* concept[=].definition = "Graduate degree combining science and legal studies"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MSL"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50085
* concept[=].display = "Master of Theology"
* concept[=].definition = "Graduate degree in theology and advanced religious studies"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MTH"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50086
* concept[=].display = "Medical Assistant"
* concept[=].definition = "Healthcare support professional performing clinical and administrative tasks in medical settings"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MDA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50087
* concept[=].display = "Medical Technician"
* concept[=].definition = "Healthcare technician providing technical support in medical laboratories and clinical settings"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50088
* concept[=].display = "Non-Graduate"
* concept[=].definition = "Individual who has not completed formal degree or certification program"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NG"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50089
* concept[=].display = "Registered Medical Assistant"
* concept[=].definition = "Registered medical assistant with advanced certification in clinical and administrative medical support"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RMA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50090
* concept[=].display = "Secretarial Certificate"
* concept[=].definition = "Certificate in secretarial skills and administrative support"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "SEC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #50091
* concept[=].display = "Trade School Graduate"
* concept[=].definition = "Graduate of trade school or vocational training program in specialized technical skills"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "TS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #20000
* concept[=].display = "Physical Therapist"
* concept[=].definition = "Licensed healthcare professional who diagnoses and treats individuals with medical problems or other health-related conditions that limit their abilities to move and perform functional activities."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60034
* concept[=].display = "Licensed Specialist Clinical Social Worker"
* concept[=].definition = "Specialized clinical social worker with advanced licensure for independent clinical practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LSCSW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20001
* concept[=].display = "Licensed Physical Therapist Assistant"
* concept[=].definition = "Licensed assistant who works under the supervision of a physical therapist to help patients recover movement and manage pain through therapeutic exercises and modalities."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LPTA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20002
* concept[=].display = "Occupational Therapist Registered/Licensed"
* concept[=].definition = "Registered occupational therapist certified by NBCOT and licensed by state to help people participate in everyday activities through therapeutic interventions."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "OTR/L"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board for Certification in Occupational Therapy"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nbcot.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20003
* concept[=].display = "Physical Therapist Assistant"
* concept[=].definition = "Assistant who provides physical therapy services under the supervision of a licensed physical therapist."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PTA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20004
* concept[=].display = "Licensed Massage Therapist"
* concept[=].definition = "Licensed professional who uses therapeutic massage techniques to treat muscle tension, pain, and improve circulation."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LMT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20005
* concept[=].display = "Occupational Therapist Registered"
* concept[=].definition = "Registered occupational therapist certified by NBCOT who helps people participate in everyday activities through therapeutic interventions."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "OTR"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board for Certification in Occupational Therapy"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nbcot.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20006
* concept[=].display = "Speech-Language Pathologist"
* concept[=].definition = "Licensed professional who diagnoses and treats communication and swallowing disorders across the lifespan."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "SLP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20007
* concept[=].display = "Occupational Therapist"
* concept[=].definition = "Healthcare professional who helps people participate in everyday activities through therapeutic interventions and environmental modifications."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "OT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20008
* concept[=].display = "Athletic Trainer Certified"
* concept[=].definition = "Healthcare professional certified by BOC who specializes in prevention, assessment, and rehabilitation of injuries and illnesses in physically active populations."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ATC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Board of Certification"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.bocatc.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20009
* concept[=].display = "Certificate of Clinical Competence in Speech-Language Pathology"
* concept[=].definition = "ASHA certification for speech-language pathologists demonstrating clinical competence in the profession."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CCC-SLP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Speech-Language-Hearing Association"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.asha.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20010
* concept[=].display = "Certified Occupational Therapy Assistant"
* concept[=].definition = "Certified occupational therapy assistant who provides OT services under supervision of an occupational therapist."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "COTA"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board for Certification in Occupational Therapy"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nbcot.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20011
* concept[=].display = "Certified Occupational Therapy Assistant Licensed"
* concept[=].definition = "NBCOT certified occupational therapy assistant who is also state licensed to provide OT services under supervision."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "COTA/L"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board for Certification in Occupational Therapy"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nbcot.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20012
* concept[=].display = "Licensed Massage Practitioner"
* concept[=].definition = "Licensed professional who provides therapeutic massage and bodywork services for health and wellness."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LMP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20013
* concept[=].display = "Licensed Acupuncturist"
* concept[=].definition = "Licensed practitioner who uses acupuncture and traditional Chinese medicine techniques to treat various health conditions."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LAC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20014
* concept[=].display = "Master of Physical Therapy"
* concept[=].definition = "Graduate degree in physical therapy, typically a precursor to the current Doctor of Physical Therapy degree."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MPT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20015
* concept[=].display = "Master of Science in Physical Therapy"
* concept[=].definition = "Graduate degree in physical therapy with emphasis on scientific research and clinical practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MSPT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20016
* concept[=].display = "Registered Physical Therapist"
* concept[=].definition = "Physical therapist registered with state regulatory board to practice physical therapy."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RPT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20017
* concept[=].display = "Occupational Therapist Registered Licensed"
* concept[=].definition = "Occupational therapist with both NBCOT certification and state licensure."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "OTRL"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board for Certification in Occupational Therapy"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nbcot.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20018
* concept[=].display = "Registered Respiratory Therapist"
* concept[=].definition = "Advanced respiratory therapist registered by NBRC who provides diagnostic and therapeutic services for patients with cardiopulmonary disorders."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RRT"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board for Respiratory Care"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nbrc.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20019
* concept[=].display = "Certified Massage Therapist"
* concept[=].definition = "Massage therapist certified by various certification bodies to provide therapeutic massage services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CMT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20020
* concept[=].display = "Speech-Language Pathology Assistant"
* concept[=].definition = "Assistant who provides speech-language pathology services under the supervision of a licensed speech-language pathologist."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "SLPA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20021
* concept[=].display = "Occupational Therapy Assistant"
* concept[=].definition = "Assistant who provides occupational therapy services under the supervision of an occupational therapist."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "OTA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20022
* concept[=].display = "Licensed Physical Therapist"
* concept[=].definition = "Physical therapist licensed by state regulatory board to independently practice physical therapy."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LPT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20023
* concept[=].display = "Master of Occupational Therapy Registered/Licensed"
* concept[=].definition = "Master level occupational therapist with both NBCOT certification and state licensure."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MOTR/L"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board for Certification in Occupational Therapy"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nbcot.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20024
* concept[=].display = "Clinical Fellow Speech-Language Pathologist"
* concept[=].definition = "Speech-language pathologist completing supervised clinical fellowship year as part of ASHA certification requirements."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CF-SLP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Speech-Language-Hearing Association"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.asha.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20025
* concept[=].display = "Speech-Language Pathologist with Certificate of Clinical Competence"
* concept[=].definition = "Speech-language pathologist who has earned the ASHA Certificate of Clinical Competence demonstrating advanced clinical knowledge and skills."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "SLP-CCC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Speech-Language-Hearing Association"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.asha.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20026
* concept[=].display = "Master of Occupational Therapy"
* concept[=].definition = "Graduate degree in occupational therapy preparing practitioners for clinical practice in helping people participate in everyday activities."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MOT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20027
* concept[=].display = "Occupational Therapist Licensed"
* concept[=].definition = "Licensed occupational therapist authorized by state regulatory board to practice occupational therapy."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "OT/L"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20028
* concept[=].display = "Acupuncturist"
* concept[=].definition = "Healthcare practitioner who uses acupuncture needles and traditional Chinese medicine techniques to treat various health conditions."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ACUPUNCTURIST"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20029
* concept[=].display = "Licensed Massage and Bodywork Therapist"
* concept[=].definition = "Licensed professional who provides therapeutic massage and various bodywork modalities for health and wellness."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LMBT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20030
* concept[=].display = "Licensed Athletic Trainer"
* concept[=].definition = "Licensed athletic trainer authorized by state to practice athletic training including injury prevention, assessment, and rehabilitation."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LAT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20031
* concept[=].display = "Certified Respiratory Therapist"
* concept[=].definition = "Entry-level respiratory therapist certified by NBRC to provide basic respiratory care services under physician supervision."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CRT"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board for Respiratory Care"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nbrc.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20032
* concept[=].display = "Physical Therapist"
* concept[=].definition = "Healthcare professional who diagnoses and treats individuals with movement dysfunction and physical impairments."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PHYSICAL-THERAPIST"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20033
* concept[=].display = "Substance Use Disorder Physical Therapist"
* concept[=].definition = "Physical therapist with specialized training in treating patients with substance use disorders and related movement impairments."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "SUDPT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20034
* concept[=].display = "Respiratory Therapist"
* concept[=].definition = "Healthcare professional who provides diagnostic and therapeutic services for patients with breathing and cardiopulmonary disorders."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20035
* concept[=].display = "Master of Science in Occupational Therapy Registered/Licensed"
* concept[=].definition = "Master level occupational therapist with NBCOT certification and state licensure, with advanced scientific training in OT practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MSOTR/L"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board for Certification in Occupational Therapy"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nbcot.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20036
* concept[=].display = "Speech Therapist"
* concept[=].definition = "Healthcare professional who diagnoses and treats speech, language, voice, and communication disorders."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ST"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20037
* concept[=].display = "Athletic Trainer"
* concept[=].definition = "Healthcare professional who specializes in injury prevention, assessment, treatment, and rehabilitation for physically active individuals."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20038
* concept[=].display = "Licensed Occupational Therapist Registered"
* concept[=].definition = "Licensed occupational therapist with NBCOT registration authorized to provide occupational therapy services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LOTR"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board for Certification in Occupational Therapy"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nbcot.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20039
* concept[=].display = "Respiratory Care Practitioner"
* concept[=].definition = "Respiratory care professional credentialed by NBRC to provide comprehensive respiratory therapy services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RCP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Board for Respiratory Care"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nbrc.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20040
* concept[=].display = "Licensed Acupuncturist"
* concept[=].definition = "Licensed practitioner of acupuncture and Traditional Chinese Medicine techniques"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LicAc"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20041
* concept[=].display = "Acupuncturist (Pennsylvania)"
* concept[=].definition = "Acupuncturist licensed specifically in Pennsylvania"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AK"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20042
* concept[=].display = "Acupuncture Physician"
* concept[=].definition = "Physician trained and licensed to practice acupuncture medicine"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20043
* concept[=].display = "Certified Acupuncturist"
* concept[=].definition = "Certified practitioner of acupuncture therapy and Traditional Chinese Medicine"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20044
* concept[=].display = "Diplomate in Acupuncture"
* concept[=].definition = "Diplomate-level acupuncturist with advanced training and certification"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DAc"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20045
* concept[=].display = "Doctor of Acupuncture, Rhode Island"
* concept[=].definition = "Doctor of Acupuncture degree specifically recognized in Rhode Island"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DAc (RI)"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20046
* concept[=].display = "Doctor of Acupuncture, West Virginia"
* concept[=].definition = "Doctor of Acupuncture degree specifically recognized in West Virginia"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DAc (WV)"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20047
* concept[=].display = "National Commission for the Certification of Acupuncturists"
* concept[=].definition = "Certification by National Commission for the Certification of Acupuncturists"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NCCA"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Commission for the Certification of Acupuncturists"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20048
* concept[=].display = "Fellow of the International Academy of Clinical Acupuncture"
* concept[=].definition = "Fellowship in clinical acupuncture"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FIACA"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "International Academy of Clinical Acupuncture"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #1
* concept[=].display = "Medical Doctor"
* concept[=].definition = "Doctor of Medicine degree from accredited medical school, enabling independent practice of medicine after residency training."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MD"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #2
* concept[=].display = "Doctor of Osteopathic Medicine"
* concept[=].definition = "Doctor of Osteopathic Medicine degree emphasizing holistic approach and manipulative treatment, equivalent to MD for medical practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DO"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = true

* concept[+].code = #3
* concept[=].display = "Bachelor of Medicine, Bachelor of Surgery"
* concept[=].definition = "British and Commonwealth medical degree combining medicine and surgery training, equivalent to North American MD."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MBBS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #4
* concept[=].display = "Bachelor of Medicine, Bachelor of Surgery"
* concept[=].definition = "British medical degree variant (Medicine, Surgery) granted by certain UK and Commonwealth universities, equivalent to MBBS."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MBChB"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #5
* concept[=].display = "Doktor der Medizin"
* concept[=].definition = "German medical doctorate degree, typically requiring dissertation, qualifying holder for medical practice in German-speaking countries."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DR-MED"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #6
* concept[=].display = "Docteur en Médecine"
* concept[=].definition = "French medical doctorate degree qualifying holder to practice medicine in France and French-speaking countries."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DOCTEUR"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #7
* concept[=].display = "Laurea in Medicina e Chirurgia"
* concept[=].definition = "Italian medical degree in Medicine and Surgery, qualifying holder for medical practice in Italy after specialization."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LAUREA-MED"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #8
* concept[=].display = "Licenciado en Medicina"
* concept[=].definition = "Spanish and Latin American medical licentiate degree qualifying holder for medical practice after completion of medical studies."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LIC-MED"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #9
* concept[=].display = "Médico Cirujano"
* concept[=].definition = "Latin American medical degree combining medicine and surgery, qualifying holder for general medical practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MED-CIR"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #10
* concept[=].display = "醫學士 (Bachelor of Medicine)"
* concept[=].definition = "Chinese medical bachelor degree, foundational qualification for medical practice in Chinese-speaking regions."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "YI-XUE-SHI"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #11
* concept[=].display = "醫學博士 (Doctor of Medicine)"
* concept[=].definition = "Chinese medical doctorate degree, advanced qualification for medical practice and research in Chinese-speaking regions."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "YI-XUE-BO-SHI"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #12
* concept[=].display = "Iryō-gakushi (Bachelor of Medicine)"
* concept[=].definition = "Japanese medical bachelor degree, qualifying holder for medical practice in Japan after passing national examinations."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "IRYO-GAKUSHI"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #13
* concept[=].display = "Bachelor of Medicine, Bachelor of Surgery (Cambridge)"
* concept[=].definition = "Cambridge University variant of British medical degree, equivalent to other MBBS degrees for medical practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BMBS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #14
* concept[=].display = "Bachelor of Medicine, Bachelor of Surgery (Oxford)"
* concept[=].definition = "Oxford University variant of British medical degree, equivalent to other MBBS degrees for medical practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MBBCH"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #15
* concept[=].display = "Bachelor of Medicine"
* concept[=].definition = "Medical bachelor degree variant used by some universities, foundational qualification for medical practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BMED"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #16
* concept[=].display = "Fellow of the American Academy of Pediatrics"
* concept[=].definition = "Fellowship recognizing distinguished service and contributions to pediatric medicine and child health advocacy."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FAAP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Academy of Pediatrics"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aap.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #17
* concept[=].display = "Fellow of the American Academy of Orthopedic Surgeons"
* concept[=].definition = "Fellowship recognizing significant contributions to orthopedic surgery, education, and musculoskeletal health."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FAAOS"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Academy of Orthopedic Surgeons"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aaos.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #18
* concept[=].display = "Fellow of the American Academy of Family Physicians"
* concept[=].definition = "Fellowship recognizing excellence and leadership in family medicine practice, education, and community service."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FAAFP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Academy of Family Physicians"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aafp.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #19
* concept[=].display = "Homeopathic Medical Doctor (Arizona)"
* concept[=].definition = "Medical doctor with homeopathic specialization licensed in Arizona"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MD(H)"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #20
* concept[=].display = "Homeopathic Medical Doctor (Nevada)"
* concept[=].definition = "Homeopathic medical doctor licensed specifically in Nevada"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "HMD"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #21
* concept[=].display = "Diplomate of the American Board of Family Practice"
* concept[=].definition = "Board certification in family medicine practice"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DABFP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Family Medicine"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.theabfm.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #22
* concept[=].display = "Diplomate of the American Board of Internal Medicine"
* concept[=].definition = "Board certification in internal medicine"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DABIM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Internal Medicine"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.abim.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #23
* concept[=].display = "American Board of Family Practitioners"
* concept[=].definition = "Board certification by American Board of Family Practitioners"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ABFP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Family Medicine"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.theabfm.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #24
* concept[=].display = "American Board of Otolaryngology"
* concept[=].definition = "Board certification in otolaryngology (ENT) medicine"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ABO"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Otolaryngology"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.aboto.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #25
* concept[=].display = "American Board of Psychiatry and Neurology"
* concept[=].definition = "Board certification in psychiatry and neurology"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ABPN"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Psychiatry and Neurology"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.abpn.com/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #26
* concept[=].display = "American Osteopathic Board of Family Physicians"
* concept[=].definition = "Board certification in osteopathic family medicine"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AOBFP"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Osteopathic Board of Family Physicians"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #27
* concept[=].display = "Fellow of the American College of Foot Orthopedics"
* concept[=].definition = "Fellowship in foot orthopedics and podiatric medicine"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FACFO"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American College of Foot and Ankle Orthopedics and Medicine"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #28
* concept[=].display = "Fellow of the American College of Obstetrics and Gynecology"
* concept[=].definition = "Fellowship in obstetrics and gynecology"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FACOG"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American College of Obstetricians and Gynecologists"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.acog.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #29
* concept[=].display = "Fellow of the American Academy of Environmental Medicine"
* concept[=].definition = "Fellowship in environmental medicine"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FAAEM"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Academy of Environmental Medicine"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://aaemonline.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #30
* concept[=].display = "Fellow of the American College of Cardiology"
* concept[=].definition = "Fellowship in cardiology"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "FAAC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American College of Cardiology"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.acc.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60000
* concept[=].display = "Licensed Independent Clinical Social Worker"
* concept[=].definition = "Advanced clinical social worker licensed to practice independently, providing psychotherapy and clinical services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LICSW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60001
* concept[=].display = "Licensed Clinical Social Worker"
* concept[=].definition = "Clinical social worker licensed to provide therapeutic services, mental health treatment, and psychosocial interventions."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LCSW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60002
* concept[=].display = "Licensed Professional Counselor"
* concept[=].definition = "Licensed mental health professional providing counseling and psychotherapy services for various psychological conditions."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LPC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60003
* concept[=].display = "Registered Behavior Technician"
* concept[=].definition = "Paraprofessional who implements behavior analysis services under the supervision of a BCBA or BCaBA."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RBT"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Behavior Analyst Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.bacb.com/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60004
* concept[=].display = "Licensed Marriage and Family Therapist"
* concept[=].definition = "Licensed therapist specializing in relationship counseling, family therapy, and couples counseling."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LMFT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60005
* concept[=].display = "Licensed Mental Health Counselor"
* concept[=].definition = "Licensed professional counselor providing mental health services, therapy, and psychological support."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LMHC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60006
* concept[=].display = "Board Certified Behavior Analyst"
* concept[=].definition = "Board certified professional who designs, implements, and evaluates behavior analytic interventions."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BCBA"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Behavior Analyst Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.bacb.com/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60007
* concept[=].display = "Licensed Social Worker"
* concept[=].definition = "Entry-level licensed social worker providing basic social work services and case management."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LSW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60008
* concept[=].display = "Licensed Clinical Professional Counselor"
* concept[=].definition = "Clinical counselor licensed to provide psychotherapy and mental health treatment services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LCPC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60009
* concept[=].display = "Marriage and Family Therapist"
* concept[=].definition = "Mental health professional specializing in relationship and family counseling and therapy."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MFT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60010
* concept[=].display = "Licensed Professional Clinical Counselor"
* concept[=].definition = "Clinical counselor licensed to provide comprehensive mental health and psychotherapy services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LPCC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60011
* concept[=].display = "Licensed Clinical Social Worker - Clinical"
* concept[=].definition = "Clinical social worker with specialized clinical endorsement for advanced therapeutic services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LCSW-C"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60012
* concept[=].display = "Licensed Independent Social Worker"
* concept[=].definition = "Independent social worker licensed to practice without supervision, providing advanced social work services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LISW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60013
* concept[=].display = "Limited Licensed Master Social Worker"
* concept[=].definition = "Master-level social worker with limited licensure requiring supervision for clinical practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LLMSW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60014
* concept[=].display = "Certified Drug and Alcohol Counselor"
* concept[=].definition = "Certified professional specializing in substance abuse counseling and addiction treatment services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CDCA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60015
* concept[=].display = "Associate Marriage and Family Therapist"
* concept[=].definition = "Entry-level marriage and family therapist working under supervision to gain clinical experience."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "AMFT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60016
* concept[=].display = "Clinical Social Worker"
* concept[=].definition = "Social worker with clinical training and experience in providing therapeutic and mental health services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CSW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60017
* concept[=].display = "Licensed Clinical Social Worker - Registered"
* concept[=].definition = "Registered clinical social worker with specific state registration for clinical practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LCSW-R"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60018
* concept[=].display = "Mental Health Paraprofessional"
* concept[=].definition = "Paraprofessional providing support services in mental health settings under professional supervision."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MHPP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60019
* concept[=].display = "Licensed Clinical Social Worker Associate"
* concept[=].definition = "Associate-level clinical social worker working under supervision toward independent practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LCSWA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60020
* concept[=].display = "Licensed Clinical Mental Health Counselor"
* concept[=].definition = "Clinical mental health counselor licensed to provide comprehensive psychological and therapeutic services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LCMHC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60021
* concept[=].display = "Associate Social Worker"
* concept[=].definition = "Entry-level social worker working under supervision to gain experience toward full licensure."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ASW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60022
* concept[=].display = "Licensed Alcohol and Drug Counselor"
* concept[=].definition = "Licensed professional specializing in alcohol and drug addiction counseling and treatment."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LADC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60023
* concept[=].display = "Certified Alcohol and Drug Counselor"
* concept[=].definition = "Certified counselor specializing in substance abuse treatment and addiction recovery services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CADC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60024
* concept[=].display = "Licensed Professional Counselor Associate"
* concept[=].definition = "Associate-level professional counselor working under supervision toward full licensure."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LPCA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60025
* concept[=].display = "Qualified Mental Health Specialist"
* concept[=].definition = "Mental health professional meeting state qualifications to provide specialized mental health services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "QMHS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60026
* concept[=].display = "Licensed Independent Social Worker - Supervisor"
* concept[=].definition = "Independent social worker with supervisory credentials for overseeing other social workers and clinical staff."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LISW-S"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60027
* concept[=].display = "Music Therapist Board Certified"
* concept[=].definition = "Board certified music therapist qualified to use music interventions for therapeutic purposes."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MT-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Certification Board for Music Therapists"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.cbmt.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60028
* concept[=].display = "Licensed Graduate Social Worker"
* concept[=].definition = "Graduate-level social worker with licensure to practice under supervision toward independent practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LGSW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60029
* concept[=].display = "Music Therapist"
* concept[=].definition = "Professional who uses music-based interventions to address therapeutic goals in healthcare and educational settings."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60030
* concept[=].display = "Limited Licensed Professional Counselor"
* concept[=].definition = "Professional counselor with limited licensure requiring supervision for clinical practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LLPC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60031
* concept[=].display = "Licensed Graduate Professional Counselor"
* concept[=].definition = "Graduate-level professional counselor working under supervision toward full licensure."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LGPC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60032
* concept[=].display = "Academy of Certified Social Workers"
* concept[=].definition = "NASW certification recognizing advanced competency and experience in social work practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ACSW"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Association of Social Workers"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.socialworkers.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60033
* concept[=].display = "Behavior Technician"
* concept[=].definition = "Paraprofessional providing direct behavioral services under supervision of behavior analyst."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60035
* concept[=].display = "Board Certified Assistant Behavior Analyst"
* concept[=].definition = "Board certified assistant who provides behavior analytic services under BCBA supervision."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BCABA"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Behavior Analyst Certification Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.bacb.com/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60036
* concept[=].display = "Licensed Mental Health Counselor Associate"
* concept[=].definition = "Associate-level mental health counselor working under supervision toward full licensure."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LMHCA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60037
* concept[=].display = "Licensed Chemical Dependency Counselor"
* concept[=].definition = "Licensed counselor specializing in chemical dependency and substance abuse treatment."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LCDC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60038
* concept[=].display = "Marriage and Family Therapist Intern"
* concept[=].definition = "Intern-level marriage and family therapist gaining supervised clinical experience."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MFTI"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60039
* concept[=].display = "Licensed Clinical Mental Health Counselor Associate"
* concept[=].definition = "Associate-level clinical mental health counselor working under supervision."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LCMHCA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60040
* concept[=].display = "Licensed Professional Counselor Associate"
* concept[=].definition = "Associate-level professional counselor working under supervision toward independent practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LPC-A"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60041
* concept[=].display = "Licensed Bachelor Social Worker"
* concept[=].definition = "Bachelor-level social worker licensed to provide basic social work services under supervision."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LBSW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60042
* concept[=].display = "Certified Therapeutic Recreation Specialist"
* concept[=].definition = "Certified professional using recreational activities to improve functioning and independence."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CTRS"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "National Council for Therapeutic Recreation Certification"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.nctrc.org/"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60043
* concept[=].display = "Credentialed Alcoholism and Substance Abuse Counselor"
* concept[=].definition = "State-credentialed counselor specializing in alcoholism and substance abuse treatment services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CASAC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60044
* concept[=].display = "Qualified Mental Health Associate"
* concept[=].definition = "Mental health professional meeting state qualifications to provide associate-level mental health services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "QMHA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60045
* concept[=].display = "Qualified Behavioral Health Professional"
* concept[=].definition = "Professional qualified to provide behavioral health services in various clinical settings."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "QBHP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60046
* concept[=].display = "Licensed Professional Clinical Counselor - Supervisor"
* concept[=].definition = "Clinical counselor with supervisory credentials for overseeing other mental health professionals."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LPCC-S"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60047
* concept[=].display = "Mental Health Counselor"
* concept[=].definition = "Professional counselor providing mental health services and psychological support."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MHC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60048
* concept[=].display = "Peer Support Specialist"
* concept[=].definition = "Individual with lived experience providing peer support services in mental health and recovery settings."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PSS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60049
* concept[=].display = "Substance Abuse Counselor Certified"
* concept[=].definition = "Certified counselor specializing in substance abuse treatment and addiction recovery services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "SA-C"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60050
* concept[=].display = "Provisionally Licensed Mental Health Practitioner"
* concept[=].definition = "Mental health practitioner with provisional licensure working toward full licensure requirements."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PLMHP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60051
* concept[=].display = "Licensed Professional Counselor - Mental Health Service Provider"
* concept[=].definition = "Licensed professional counselor designated as qualified mental health service provider."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LPC-MHSP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60052
* concept[=].display = "Licensed Independent Social Worker - Clinical Practice"
* concept[=].definition = "Independent social worker licensed with specific authorization for clinical practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LISW-CP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60053
* concept[=].display = "Licensed Clinical Social Worker Associate"
* concept[=].definition = "Associate-level clinical social worker working under supervision toward independent practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LCSW-A"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60054
* concept[=].display = "Social Worker"
* concept[=].definition = "Professional who provides social services, case management, and psychosocial support to individuals and families."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "SOCIAL-WORKER"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60055
* concept[=].display = "Mental Health Counselor - Limited Permit"
* concept[=].definition = "Mental health counselor with limited permit working under supervision."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MHC-LP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60056
* concept[=].display = "Licensed Associate Professional Counselor"
* concept[=].definition = "Associate professional counselor licensed to practice under supervision."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LAPC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60057
* concept[=].display = "Qualified Mental Health Professional"
* concept[=].definition = "Mental health professional meeting state qualifications to provide mental health services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "QMHP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60058
* concept[=].display = "Psychologist"
* concept[=].definition = "Doctoral-level professional who studies behavior and mental processes, provides psychological assessment and therapy."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PSYCHOLOGIST"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60059
* concept[=].display = "Licensed Master Social Worker - Clinical Certification"
* concept[=].definition = "Master social worker with clinical certification endorsement for therapeutic services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LMSW-CC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60060
* concept[=].display = "Limited Licensed Bachelor Social Worker"
* concept[=].definition = "Bachelor-level social worker with limited licensure requiring supervision."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LLBSW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60061
* concept[=].display = "Licensed Psychologist"
* concept[=].definition = "Doctoral-level psychologist licensed to practice psychology independently, including assessment and therapy."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60062
* concept[=].display = "Credentialed Alcoholism and Substance Abuse Counselor - Trainee"
* concept[=].definition = "Trainee-level substance abuse counselor working under supervision toward full credentialing."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CASAC-T"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60063
* concept[=].display = "Licensed Clinical Social Worker - Restricted"
* concept[=].definition = "Clinical social worker with restricted licensure requiring specific practice limitations."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LCSWR"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60064
* concept[=].display = "Licensed Professional Counselor - Supervisor"
* concept[=].definition = "Professional counselor with supervisory credentials for overseeing other mental health professionals."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LPC-S"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60065
* concept[=].display = "Limited Licensed Psychologist"
* concept[=].definition = "Psychologist with limited licensure working under supervision toward full psychology licensure."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LLP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60066
* concept[=].display = "Advanced Practice Social Worker"
* concept[=].definition = "Social worker with advanced practice credentials for specialized clinical and therapeutic services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "APSW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60067
* concept[=].display = "Mental Health Professional"
* concept[=].definition = "General credential for professionals providing mental health and behavioral health services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MHP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60068
* concept[=].display = "Community Mental Health Counselor"
* concept[=].definition = "Mental health counselor specializing in community-based mental health services and programs."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CMHC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60069
* concept[=].display = "Licensed Professional Counselor - In Training"
* concept[=].definition = "Professional counselor in training working under supervision toward full licensure."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LPC-IT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60070
* concept[=].display = "Certified Substance Abuse Counselor"
* concept[=].definition = "Certified counselor specializing in substance abuse treatment and addiction recovery services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CSAC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60071
* concept[=].display = "Peer Support Specialist"
* concept[=].definition = "Individual with lived experience providing peer support services in mental health and recovery settings."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PPS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60072
* concept[=].display = "Licensed Mental Health Practitioner"
* concept[=].definition = "Licensed practitioner providing comprehensive mental health services and therapeutic interventions."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LMHP"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60073
* concept[=].display = "Associate Professional Clinical Counselor"
* concept[=].definition = "Associate-level clinical counselor working under supervision toward independent practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "APCC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60074
* concept[=].display = "Certified Peer Support Specialist"
* concept[=].definition = "Certified peer support specialist with training to provide recovery-oriented services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CPSS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60075
* concept[=].display = "Master of Science in Social Work"
* concept[=].definition = "Graduate degree in social work with emphasis on scientific research and evidence-based practice."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MSSW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60076
* concept[=].display = "Counselor"
* concept[=].definition = "General professional designation for individuals providing counseling and therapeutic services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "COUNSELOR"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60077
* concept[=].display = "Licensed Professional Counselor Associate"
* concept[=].definition = "Associate-level professional counselor working under supervision toward independent licensure."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LPC-ASSOCIATE"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60078
* concept[=].display = "Licensed Associate Marriage and Family Therapist"
* concept[=].definition = "Associate-level marriage and family therapist licensed to practice under supervision."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LAMFT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60079
* concept[=].display = "Registered Mental Health Counselor Intern"
* concept[=].definition = "Registered intern working under supervision toward full mental health counselor licensure."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "RMHCI"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60080
* concept[=].display = "Peer Recovery Support Specialist"
* concept[=].definition = "Individual with lived recovery experience providing peer support services in substance abuse treatment."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "PRSS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60081
* concept[=].display = "Substance Abuse Counselor - In Training"
* concept[=].definition = "Substance abuse counselor in training working under supervision toward full certification."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "SAC-IT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60082
* concept[=].display = "Behavioral Health Rehabilitation Services"
* concept[=].definition = "Professional providing behavioral health rehabilitation and recovery services to individuals with mental health conditions."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "BHRS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60083
* concept[=].display = "Social Worker"
* concept[=].definition = "Professional who provides social services, advocacy, and support to individuals, families, and communities."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "SW"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60084
* concept[=].display = "Certified Alcohol and Drug Counselor II"
* concept[=].definition = "Advanced level certified alcohol and drug counselor with enhanced training and experience requirements."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "CADC-II"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60085
* concept[=].display = "Dance Therapist"
* concept[=].definition = "Professional who uses movement and dance as therapeutic interventions to promote emotional, social, and physical health."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "DT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60086
* concept[=].display = "Addiction Licensed Counselor"
* concept[=].definition = "Licensed counselor specializing in addiction treatment and substance abuse recovery services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ALC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60087
* concept[=].display = "Licensed Clinical Alcohol and Drug Counselor"
* concept[=].definition = "Clinical-level licensed counselor specializing in comprehensive alcohol and drug addiction treatment."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LCADC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60088
* concept[=].display = "Licensed Clinical Addiction Specialist"
* concept[=].definition = "Clinical specialist licensed to provide advanced addiction treatment and substance abuse counseling services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LCAS"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60089
* concept[=].display = "Licensed Psychological Associate"
* concept[=].definition = "Licensed associate working under psychologist supervision to provide psychological services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LPA"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60090
* concept[=].display = "Art Therapist Registered - Board Certified"
* concept[=].definition = "Board certified art therapist registered to use visual arts and creative processes for therapeutic purposes."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "ATR-BC"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "Art Therapy Credentials Board"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.atcb.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60091
* concept[=].display = "Licensed Professional Art Therapist"
* concept[=].definition = "State licensed professional art therapist authorized to practice art therapy independently."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LPAT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60092
* concept[=].display = "Licensed Clinical Professional Art Therapist"
* concept[=].definition = "Clinical-level state licensed art therapist providing advanced art therapy services."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "LCPAT"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60093
* concept[=].display = "Eye Movement Desensitization and Reprocessing"
* concept[=].definition = "Specialized psychotherapy technique certification for treating trauma and PTSD using bilateral stimulation."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "EMDR"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "EMDR International Association"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.emdria.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60094
* concept[=].display = "Neuropsychologist"
* concept[=].definition = "Board certified psychologist specializing in brain-behavior relationships, cognitive assessment, and neurological conditions."
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "NEUROPSYCHOLOGIST"
* concept[=].property[+].code = #cred_org
* concept[=].property[=].valueString = "American Board of Professional Psychology"
* concept[=].property[+].code = #cred_url
* concept[=].property[=].valueString = "https://www.abpp.org"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false

* concept[+].code = #60095
* concept[=].display = "Marriage, Family and Child Counselor"
* concept[=].definition = "Licensed counselor specializing in marriage, family, and child therapy"
* concept[=].property[+].code = #abbr
* concept[=].property[=].valueString = "MFCC"
* concept[=].property[+].code = #is_multisource
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_clinical
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #is_board_certification
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_credential_retired
* concept[=].property[=].valueBoolean = false
* concept[=].property[+].code = #is_fhir_credential
* concept[=].property[=].valueBoolean = false
