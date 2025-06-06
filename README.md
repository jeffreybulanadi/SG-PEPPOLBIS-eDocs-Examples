# SG-PEPPOLBIS-eDocs-Examples
This repository contains XML examples for Singapore PEPPOL Business Interoperability Specifications (BIS) electronic documents. These examples demonstrate various use cases for Order, Order Response, and Invoice Response documents in the PEPPOL network.

## Prerequisites
- Basic understanding of PEPPOL BIS and UBL
- XML knowledge and tools
- Understanding of Singapore e-invoicing requirements
- Git for version control
- XML/Schematron validation tools

## Requirements
- XML Editor/Validator
- Schematron processor (e.g., Saxon)
- Git client
- Basic command line knowledge

## Quick Start
1. Clone this repository
2. Review the documentation in `docs/guide/getting-started.md`
3. Explore example files in the `samples` directory
4. Validate your documents using provided schemas in `schemas`
5. Check `docs/guide/validation-guide.md` for Singapore-specific rules

## Features

### Document Types
- **Orders**: Complete purchase order examples and templates
- **Order Responses**: Acceptance, rejection, and modification scenarios
- **Invoice Responses**: Full range of invoice processing statuses
- **Order Agreements**: Contract and framework agreement samples

### Singapore-Specific Features
- GST-compliant examples
- Local business identifier formats
- Singapore address structures
- Regional business rules

### Technical Features
- XML Schema validation
- Schematron business rules
- Example code and templates
- Validation tools and utilities

### Documentation Features
- Step-by-step implementation guides
- Detailed use case documentation
- Validation and testing guides
- Best practices and examples

## Documentation
### Implementation Guides
- `docs/guide/getting-started.md` - Initial setup and basic concepts
- `docs/guide/order-documents.md` - Order document implementation
- `docs/guide/order-response-documents.md` - Order response implementation
- `docs/guide/invoice-response-documents.md` - Invoice response implementation
- `docs/guide/validation-guide.md` - Document validation and rules

### Use Case Documentation
- `docs/examples/USE-CASES.md` - Complete use case index
- `docs/examples/order/` - Order document examples and scenarios
- `docs/examples/order-response/` - Order response examples
- `docs/examples/invoice-response/` - Invoice response examples

### Validation and Rules
- XML Schema files in `schemas/`
- Singapore-specific Schematron rules
- Business validation rules
- Common error solutions

## Structure

### Order Documents
- `Order_Example.xml` - Basic order example
- `SG Order_Example.xml` - Singapore-specific order example

### Order Response Documents
- `OrderResponse_Example.xml` - Basic order response example
- `SG OrderResponse_Example.xml` - Singapore-specific order response example

### Order Agreement Documents
- `OrderAgreement_Example.xml` - Order agreement example

### Invoice Response Documents
- `SG InvoiceResponse_Example.xml` - Singapore-specific invoice response example

### Use Cases

#### Invoice Response Use Cases
Located in `Invoice response use cases/` directory:
- T111-uc001: Invoice in process
- T111-uc002a: Additional reference data
- T111-uc002b: In process but postponed
- T111-uc003: Invoice is accepted
- T111-uc004a: Invoice is rejected
- T111-uc004b: Rejected requesting reissue
- T111-uc004c: Rejected requesting replacement
- T111-uc005: Invoice is conditionally accepted
- T111-uc006a: Under query missing information
- T111-uc006b: Missing PO
- T111-uc006c: Wrong detail partial credit
- T111-uc007: Payment has been initiated
- T111-uc008: Invoice is accepted by third party

#### Order Use Cases
Located in `Order use cases/` directory:
- UC1: Basic order scenario
- UC2: Order with specific requirements
- UC3: Complex order scenario
- UC4: Special handling order
- UC5: Advanced order case

#### Order Response Use Cases
Located in `Order-response use cases/` directory:
- UC1: Basic order response
- UC2: Order response with modifications
- UC3: Complex response scenario
- UC4: Special handling response
- UC5: Advanced response case

## Usage
These XML examples can be used as reference implementations for organizations implementing PEPPOL BIS in Singapore. Each file demonstrates proper formatting and required elements for different business scenarios.

### Getting Started
1. Start with basic examples in `samples/*/basic/`
2. Follow implementation guides in `docs/guide/`
3. Review use cases similar to your needs
4. Validate your documents using provided tools

### Validation Process
1. Use XML Schema validation with provided XSD files
2. Apply Singapore-specific rules using Schematron
3. Check against example files for conformance
4. Refer to `validation-guide.md` for detailed steps

## Contributing
Contributions to improve or add new examples are welcome. Please follow these guidelines:

### Contribution Guidelines
1. **Document Structure**
   - Follow existing file organization
   - Use consistent naming conventions
   - Include proper documentation

2. **XML Standards**
   - Comply with PEPPOL BIS specifications
   - Follow Singapore-specific requirements
   - Include all mandatory elements

3. **Documentation**
   - Update relevant guides
   - Add use case documentation
   - Include validation rules

4. **Testing**
   - Validate against schemas
   - Test against business rules
   - Ensure Singapore compliance

### Submission Process
1. Fork the repository
2. Create a feature branch
3. Add your examples and documentation
4. Submit a pull request with description

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

### Usage Requirements
While this software is open source, any implementation must comply with:
- PEPPOL BIS specifications and standards
- Singapore e-invoicing network requirements
- UBL (Universal Business Language) specifications

### Commercial Use
- You are free to use these examples in commercial projects
- Must maintain compliance with PEPPOL and Singapore standards
- Include the original license and copyright notice
- No warranty or liability is provided