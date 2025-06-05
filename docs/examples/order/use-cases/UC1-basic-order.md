# Use Case Examples Documentation

## Order Use Cases

### UC1: Basic Order Scenario
**File:** `samples/order/use-cases/UC1_Order.xml`

#### Description
This use case demonstrates a basic order transaction with standard elements and simple line items.

#### Key Features
- Single delivery location
- Standard payment terms
- Basic item descriptions
- Common UoM codes

#### XML Structure Highlights
```xml
<!-- Key sections (for reference) -->
<Order>
    <!-- Standard header information -->
    <cbc:ID>PO-001</cbc:ID>
    <cbc:IssueDate>2025-06-04</cbc:IssueDate>
    
    <!-- Buyer information -->
    <cac:AccountingCustomerParty>...</cac:AccountingCustomerParty>
    
    <!-- Seller information -->
    <cac:AccountingSupplierParty>...</cac:AccountingSupplierParty>
    
    <!-- Delivery information -->
    <cac:Delivery>...</cac:Delivery>
    
    <!-- Line items -->
    <cac:OrderLine>...</cac:OrderLine>
</Order>
```

#### Validation Rules
- Company IDs must be valid Singapore registration numbers
- Currency must be SGD or USD
- GST registration numbers must be properly formatted
- Line items must have valid identifications

#### Common Issues and Solutions
1. **Invalid Company ID Format**
   - Ensure 8-10 digits followed by a letter
   - Check for proper UEN format

2. **Missing Required Elements**
   - Verify all mandatory fields are present
   - Use the schema validation tool

3. **Currency Issues**
   - Confirm currency code is SGD or USD
   - Ensure consistency across the document

#### Testing Procedure
1. Validate against Order-2.xsd schema
2. Check Singapore-specific rules using sg-peppol-bis-rules.sch
3. Verify business context validity

#### Implementation Notes
- Keep ID formats consistent
- Follow Singapore date format standards
- Include all required tax information
- Use standard UoM codes
