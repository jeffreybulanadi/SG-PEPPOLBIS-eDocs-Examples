# Frequently Asked Questions (FAQ)

## General Questions

### What is PEPPOL BIS?
PEPPOL BIS (Business Interoperability Specifications) are standardized electronic document formats used for business transactions in the PEPPOL network.

### Why Singapore-specific examples?
Singapore has specific requirements for e-invoicing and business documents, including GST handling, business identifiers, and local validation rules.

## Technical Questions

### How do I validate my documents?
1. Use XML Schema validation with provided XSD files
2. Apply Schematron rules for business validation
3. Check Singapore-specific requirements
See `docs/guide/validation-guide.md` for detailed instructions.

### What are the common validation errors?

#### Company Information
- Invalid UEN format
- Missing GST registration
- Incorrect company identifiers

#### Address Validation
- Wrong postal code format
- Missing required address elements
- Invalid country codes

#### Document Structure
- Missing mandatory elements
- Invalid currency codes
- Incorrect date formats

## Implementation Questions

### How do I start implementing PEPPOL BIS?
1. Review basic examples in `samples/*/basic/`
2. Follow implementation guides
3. Test with validation tools
4. Check use cases similar to your needs

### Which examples should I use?
- Start with basic examples
- Review use cases matching your business scenario
- Check Singapore-specific examples for local requirements

## Business Rules

### GST Requirements
- GST registration number format
- Tax calculation rules
- Documentation requirements

### Address Requirements
- Postal code format
- Building number rules
- Street name requirements

### Payment Terms
- Maximum payment periods
- Required payment information
- Currency handling

## Common Issues

### Validation Failures
- Check XML schema compliance
- Verify business rules
- Review Singapore requirements
- Use validation tools properly

### Implementation Challenges
- Follow step-by-step guides
- Review similar use cases
- Check documentation
- Use provided templates

## Support

### Where can I get help?
1. Check documentation in `docs/guide/`
2. Review use cases in `docs/examples/`
3. Validate against provided schemas
4. Consult PEPPOL BIS specifications

### How can I contribute?
See CONTRIBUTING.md for detailed guidelines on:
- Making contributions
- Submitting changes
- Documentation requirements
- Testing procedures
