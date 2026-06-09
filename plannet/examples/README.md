# Plan-Net example placement

Preferred source archive:

- `https://hl7.org/fhir/us/davinci-pdex-plan-net/examples.json.zip`

To automatically download and place files in the folders below, run:

```powershell
./plannet/download-examples.ps1
```

Place source Plan-Net JSON examples in these folders before running the harness:

- `examples/Endpoint`
- `examples/HealthcareService`
- `examples/InsurancePlan`
- `examples/Location`
- `examples/Network`
- `examples/Organization`
- `examples/OrganizationAffiliation`
- `examples/Practitioner`
- `examples/PractitionerRole`

Only `.json` files are processed. Files in other locations are ignored.
