### Background & Scope

A location is the physical place where healthcare services are provided, practitioners are employed, organizations are based, insurance plan coverage area, 
insurance provider network coverage area, etc. Locations can range in scope from a room in a building to a geographic region/area.

### Modifies are made to the USCoreLocation resource which this profile based on
- Constrains the cardinality of Location.status (1..1)

- Add Extensions:
1. location-boundary-geojson (0..1) - indicates a region/area for the location
2. accessibility (0..*) - indicates accessibility options available at the location (e.g. handicap accessibility)
3. ehr (0..*) - provides information about the EHR product(s) used at the location
4. newpatients (0..*) -  indicates whether the location is accepting new patients and describes the type of patients the location accepts (e.g. pediatric only)
5. usage-restriction (0..*) - indicates whether disclosure of any data associated with a location is restricted