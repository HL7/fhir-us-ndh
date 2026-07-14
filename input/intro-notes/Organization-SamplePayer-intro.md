
Two ways to find this SamplePayer given a Payer Identifier.

1. If you know both the System and Value; then search using the token parameter type with a `system|value` format. Given that this system and value combination would be globally unique, you will only find this one Organization.

```
> GET [base]/Organization?identifier=http://example.org/Identifiers|123456789
```

2. If you only know the value and that it is a Payer. Then you could use the token parameter type with a `of-type` modifier. This would return all Organizations that have a Payer Identifier with that value, regardless of the system. In this case, you would find this SamplePayer and any other Organization that has a Payer Identifier with the same value.

```
> GET [base]/Organization?identifier:of-type=http://terminology.hl7.org/CodeSystem/v2-0203|NIIP|123456789
```

Note that the `of-type` modifier is not commonly implemented in FHIR servers, and when implemented is not enabled by default. The support of `of-type` would be required for this to work.
