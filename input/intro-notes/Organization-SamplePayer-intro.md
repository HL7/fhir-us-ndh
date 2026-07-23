
Two ways to find this SamplePayer given a Payer Identifier.

1. If you know both the System and Value; then search using the token parameter type with a `system|value` format. Given that this system and value combination would be globally unique, you will only find this one Organization.

```
> GET [base]/Organization?identifier=http://example.org/Identifiers|123456789
```

2. If you only know the value and that it is a Payer. Then you could search for Organizations of type payer, with the Identifier value. This would return all Organizations that are of type payer and have that identifier value, regardless of the system. In this case, you would find this SamplePayer and any other Organization that is a payer and has the same identifier value.

```
> GET [base]/Organization?type=http://terminology.hl7.org/CodeSystem/organization-type|payer&identifier=123456789
```

3. If you only know the value and that it is a Payer. Then you could use the token parameter type with a `of-type` modifier. This would return all Organizations that have a Payer Identifier with that value, regardless of the system. In this case, you would find this SamplePayer and any other Organization that has a Payer Identifier with the same value.

```
> GET [base]/Organization?identifier:of-type=http://terminology.hl7.org/CodeSystem/v2-0203|NIIP|123456789
```

Note that the `of-type` modifier is not commonly implemented in FHIR servers, and when implemented is not enabled by default. The support of `of-type` would be required for this to work.

### HAPI Administrator Enablement of-type modifier

For HAPI FHIR JPA Server (starter image/config model), `identifier:of-type` requires both server configuration and indexing support.

1. Enable of-type indexing in HAPI configuration:

```yaml
hapi:
  fhir:
	 enable_index_of_type: true
```

2. Restart the HAPI server so storage settings are reloaded.

3. Ensure the relevant SearchParameter is present and active for `Organization.identifier`.
	- In R4 SearchParameter resources, modifier code is `ofType`.
	- In REST query syntax, use `identifier:of-type`.

4. Reindex data created before enablement.
	- Either run a reindex operation, or re-save affected Organization resources.

5. Validate behavior with both queries:

```text
GET [base]/Organization?identifier=http://example.org/Identifiers|123456789
GET [base]/Organization?identifier:of-type=http://terminology.hl7.org/CodeSystem/v2-0203|NIIP|123456789
```

If configuration is missing, HAPI typically returns `HAPI-2012: The :of-type modifier is not enabled on this server`.
