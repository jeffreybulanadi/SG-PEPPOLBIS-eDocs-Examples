# Validation Guide

## Overview
This guide explains how to validate PEPPOL BIS documents against both UBL schemas and Singapore-specific business rules.

## Validation Tools
1. **XML Schema Validation**
   - Use standard XML tools with provided XSD files
   - Validates basic document structure
   - Ensures data type compliance

2. **Schematron Validation**
   - Uses sg-peppol-bis-rules.sch
   - Validates Singapore business rules
   - Checks specific data formats

## Singapore-Specific Rules

### Business Identifiers
1. **Company Registration Number**
   - Format: 8-10 digits followed by a letter
   - Examples: 
     - `201234567K`
     - `202012345A`

2. **GST Registration**
   - Format: XX999999999XX
   - Examples:
     - `M22345678X01`
     - `R87654321Y02`

### Address Format
1. **Postal Code**
   - Exactly 6 digits
   - Examples: 
     - `123456`
     - `609321`

2. **Address Structure**
   - Required: Street name, building number
   - Optional but recommended: Level, unit number
   - Format: `<Building Number> <Street Name>`

### Currency and Pricing
1. **Allowed Currencies**
   - Primary: SGD
   - Alternative: USD
   - Tax currency must be SGD

2. **Payment Terms**
   - Maximum 60 days
   - Must specify payment method
   - Include GST details

## Validation Process
1. **Schema Validation**
   ```bash
   xmllint --schema schemas/Order-2.xsd document.xml
   ```

2. **Business Rules Validation**
   ```bash
   saxon -s:document.xml -xsl:sg-peppol-bis-rules.sch
   ```

## Common Validation Errors

### Company Information
1. **Invalid UEN Format**
   - Error: "Company registration number must be valid"
   - Fix: Ensure UEN follows Singapore format

2. **Missing GST Registration**
   - Error: "GST registration required for taxable supply"
   - Fix: Include valid GST number

### Address Validation
1. **Invalid Postal Code**
   - Error: "Singapore postal code must be exactly 6 digits"
   - Fix: Provide correct postal code format

2. **Incomplete Address**
   - Error: "Singapore addresses must include street name and building number"
   - Fix: Include all required address components

### Document Structure
1. **Currency Issues**
   - Error: "Currency must be either SGD or USD"
   - Fix: Use allowed currency codes

2. **Date Format**
   - Error: "Date must be in YYYY-MM-DD format"
   - Fix: Use correct date format

## Best Practices
1. **Pre-validation Testing**
   - Test against sample files
   - Use validation tools before sending
   - Check all business rules

2. **Error Resolution**
   - Document common errors
   - Maintain error resolution guide
   - Regular validation checks

3. **Maintenance**
   - Keep schemas updated
   - Monitor rule changes
   - Update validation tools
