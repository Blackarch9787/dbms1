import xmlschema
# Load the schema file
schema = xmlschema.XMLSchema('ex10.xsd')
# Load the XML file
xml = 'ex10.xml'
# Validate the XML file against the schema
if schema.is_valid(xml):
 print('Validation successful')
else:
 print('Validation failed')