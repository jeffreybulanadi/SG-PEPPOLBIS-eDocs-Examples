# UC3: Complex Order Scenario
**File:** `samples/order/use-cases/UC3_Order.xml`

## Description
This use case demonstrates a complex order with multiple line items, mixed goods and services, advanced pricing structures, and multiple delivery locations.

## Business Context
- Multiple departments ordering different items
- Mix of goods and services in one order
- Different delivery schedules and locations
- Complex pricing with discounts and surcharges

## Key Features
1. **Multiple Line Items**
   - Different product categories
   - Mixed goods and services
   - Various unit prices and quantities

2. **Complex Pricing**
   - Volume-based discounts
   - Item-specific surcharges
   - Mixed currency handling
   - Tax calculations for services

3. **Multiple Deliveries**
   - Different delivery locations
   - Varied delivery schedules
   - Special handling requirements
   - Location-specific instructions

## XML Structure Highlights
```xml
<!-- Key sections (for reference) -->
<Order>
    <!-- Multiple delivery terms -->
    <cac:DeliveryTerms>
        <cbc:SpecialTerms>Multiple location delivery</cbc:SpecialTerms>
    </cac:DeliveryTerms>
    
    <!-- Multiple delivery locations -->
    <cac:Delivery>
        <cac:DeliveryLocation>
            <!-- Location 1 details -->
        </cac:DeliveryLocation>
    </cac:Delivery>
    
    <!-- Complex pricing -->
    <cac:AllowanceCharge>
        <cbc:ChargeIndicator>false</cbc:ChargeIndicator>
        <cbc:AllowanceChargeReason>Volume discount</cbc:AllowanceChargeReason>
    </cac:AllowanceCharge>
</Order>
```

## Validation Requirements
1. **Business Rules**
   - Valid Singapore business identifiers
   - GST registration number format
   - Multiple delivery location validation
   - Price and discount calculations

2. **Document Structure**
   - Line item completeness
   - Delivery information for each location
   - Proper allowance/charge documentation
   - Tax category requirements

## Common Implementation Challenges
1. **Multiple Location Handling**
   - Solution: Use separate Delivery elements
   - Include location-specific instructions
   - Maintain delivery references

2. **Mixed Item Types**
   - Solution: Proper item classification
   - Service vs. goods identification
   - Appropriate tax handling

3. **Complex Pricing**
   - Solution: Document all calculations
   - Clear allowance/charge references
   - Proper currency handling

## Testing Scenarios
1. **Validation Testing**
   - Schema validation
   - Business rule compliance
   - Singapore-specific requirements

2. **Integration Testing**
   - Multiple delivery systems
   - Pricing calculation systems
   - Tax computation systems

## Implementation Notes
- Maintain clear item references
- Document all special conditions
- Include delivery schedules
- Proper tax categorization
- Clear payment terms for complex orders
