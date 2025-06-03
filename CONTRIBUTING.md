# Contributing to SG PEPPOL BIS e-Document Examples

Thank you for your interest in contributing to the Singapore PEPPOL BIS e-Document Examples. This document provides detailed guidelines for making contributions.

## Table of Contents
- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Contribution Process](#contribution-process)
- [Document Standards](#document-standards)
- [Testing Guidelines](#testing-guidelines)
- [Review Process](#review-process)

## Code of Conduct
- Be respectful and professional
- Follow PEPPOL BIS standards
- Maintain Singapore compliance
- Document all changes clearly

## Getting Started

### Prerequisites
- Understanding of PEPPOL BIS specifications
- Knowledge of XML and UBL
- Familiarity with Singapore e-invoicing requirements
- Basic Git knowledge

### Development Environment Setup
1. Fork the repository
2. Clone your fork locally
3. Set up XML validation tools
4. Install Schematron validator

## Contribution Process

### 1. Planning Your Contribution
- Check existing issues and discussions
- Review similar examples
- Plan your changes
- Document your approach

### 2. Making Changes
#### Document Structure
- Place examples in appropriate directories:
  - Basic examples in `samples/*/basic/`
  - Use cases in `samples/*/use-cases/`
- Follow naming conventions:
  - Use cases: `UC#_descriptive_name.xml`
  - Singapore-specific: Prefix with `SG_`

#### Documentation Requirements
- Update relevant README files
- Add/update use case documentation
- Include validation rules
- Provide clear examples

### 3. Testing
- Validate against XML schemas
- Test against Schematron rules
- Check Singapore compliance
- Verify documentation accuracy

### 4. Submitting Changes
1. Create a feature branch
2. Make your changes
3. Test thoroughly
4. Submit pull request
5. Respond to review feedback

## Document Standards

### XML Documents
- Use UTF-8 encoding
- Follow UBL 2.1 specifications
- Include all mandatory elements
- Follow Singapore extensions

### File Organization
```
samples/
├── document-type/
│   ├── basic/
│   │   └── example files
│   └── use-cases/
│       └── scenario files
```

### Naming Conventions
- Use descriptive names
- Include use case numbers
- Add SG prefix for Singapore-specific files
- Use hyphens for spaces in filenames

## Testing Guidelines

### XML Validation
1. Schema Validation
   ```powershell
   # Example validation command
   xmllint --schema schemas/Order-2.xsd your-file.xml
   ```

2. Schematron Rules
   ```powershell
   # Example Schematron validation
   saxon -s:your-file.xml -xsl:schemas/sg-peppol-bis-rules.sch
   ```

### Documentation Testing
- Verify all links work
- Check code examples
- Validate file paths
- Test procedures work

## Review Process
1. Initial review by maintainers
2. Technical validation
3. Documentation check
4. Final approval

### Review Criteria
- Code quality
- Documentation completeness
- Test coverage
- Singapore compliance
- PEPPOL BIS conformance

## Additional Resources
- [PEPPOL BIS Documentation](https://docs.peppol.eu/poacc/billing/3.0/)
- [Singapore E-invoicing Network](https://www.imda.gov.sg/InvoiceNow)
- [UBL 2.1 Specification](http://docs.oasis-open.org/ubl/UBL-2.1.html)
