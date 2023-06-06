### Search Parameters
#### Search Parameter defined by the NDH IG
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| SearchParameter Name | Type | Example | 
| -------------------- |------|---------|
| careteam-location  | reference | `GET [base]/CareTeam?careteam-location.addr-state=MD` |
| careteam-name | string | `GET [base]/CareTeame?careteam-name=VA-Oncology` |
| careteam-organization | reference | `GET [base]/CareTeam?careteam-organization.name=Hartford General Hospital` |
| careteam-service | reference | `GET [base]/CareTeame?careteam-service.active=true` |

#### Search Parameter defined by FHIR Search Parameter Registry and used by the NDH IG 
<style>
    th{border: solid 2px lightgrey;}
    td{border: solid 2px lightgrey;}
</style>

| SearchParameter Name | Type | Example |
| category | token | `GET [base]/CareTeam?category=behav` |
| identifier | token | `GET [base]/CareTeam?identifier=http://hl7.org/fhir/R4/v2/0203/index.html|SB` |
| participant | reference | `GET [base]/CareTeam?participant.name=Hamilton Clinic` |
| status | token | `GET [base]/CareTeam?status=active` |

#### _include Search Parameter
```
GET [base]/CareTeam?_include=CareTeam:careteam-location
&CareTeam:careteam-organization
&CareTeam:participant
```
#### _revinclude Search parameter
```
GET [base]/CareTeam?_revinclude=VerifcationResult:verificationresult-target.type=CareTeam
```
