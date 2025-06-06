# Order Documents Guide

## Overview
PEPPOL BIS Order documents are used to facilitate electronic ordering between buyers and sellers. This guide covers the structure, requirements, and implementation details of Order documents in the Singapore PEPPOL context.

## Document Structure
An Order document contains:
- Header level information (buyer, seller, dates, references)
- Line items (products/services being ordered)
- Delivery information
- Payment terms

## Required Elements
1. **Header Level**
   - Order number (unique identifier)
   - Order date
   - Buyer information
   - Seller information
   - Currency code

2. **Line Item Level**
   - Item identifier
   - Quantity
   - Unit price
   - Item description

## Singapore-Specific Requirements
- GST registration numbers
- Local company identifiers
- Singapore-specific tax handling
- Local business rules

## Validation Rules
- UBL 2.1 schema compliance
- PEPPOL BIS 3.0 rules
- Singapore extension rules

## Common Use Cases
1. Basic Order
2. Order with Multiple Items
3. Order with Special Requirements
4. Complex Pricing Scenarios
5. Multi-location Delivery

## XML Examples
Refer to `samples/order/` for complete examples:
- Basic examples in `samples/order/basic/`
- Use case examples in `samples/order/use-cases/`
