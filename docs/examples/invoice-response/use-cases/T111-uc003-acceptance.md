# Invoice Response Use Cases Documentation

## T111-uc003: Invoice Accepted
**File:** `samples/invoice-response/use-cases/T111-uc003-Invoice is accepted.xml`

### Description
This use case demonstrates a standard invoice acceptance response, indicating that the invoice has been processed and approved for payment.

### Business Context
- Buyer has received and validated the invoice
- All information is correct and matches purchase order
- Payment will be processed according to agreed terms

### XML Structure Highlights
```xml
<!-- Key sections (for reference) -->
<ApplicationResponse>
    <!-- Response identification -->
    <cbc:ID>IR-003</cbc:ID>
    <cbc:IssueDate>2025-06-04</cbc:IssueDate>
    
    <!-- Response type -->
    <cbc:ResponseCode>T111-uc003</cbc:ResponseCode>
    
    <!-- Reference to original invoice -->
    <cac:DocumentReference>...</cac:DocumentReference>
    
    <!-- Acceptance details -->
    <cac:Status>
        <cbc:StatusReason>Invoice accepted for payment</cbc:StatusReason>
    </cac:Status>
</ApplicationResponse>
```

### Validation Rules
- Response code must be T111-uc003
- Must reference original invoice document
- Issue date and time are mandatory
- Status reason must be provided

### Processing Steps
1. **Initial Receipt**
   - Validate invoice reference
   - Check document completeness

2. **Validation Process**
   - Verify amounts and calculations
   - Match against purchase order
   - Check delivery confirmation

3. **Acceptance Recording**
   - Generate acceptance response
   - Include payment schedule if applicable
   - Record in accounting system

### Common Issues and Solutions
1. **Missing References**
   - Ensure original invoice ID is included
   - Verify all document links are valid

2. **Timing Issues**
   - Include both issue date and time
   - Follow Singapore timezone standards

3. **Status Description**
   - Provide clear acceptance reason
   - Include relevant payment information

### Implementation Notes
- Always include GST registration numbers
- Follow Singapore date/time format
- Include payment terms reference
- Maintain audit trail
