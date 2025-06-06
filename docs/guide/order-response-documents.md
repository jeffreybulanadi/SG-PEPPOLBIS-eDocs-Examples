# Order Response Documents Guide

## Overview
PEPPOL BIS Order Response documents allow sellers to formally respond to orders received from buyers. This guide covers implementation details for the Singapore PEPPOL context.

## Document Structure
An Order Response contains:
- Reference to original order
- Response type (accept/reject/change)
- Line item responses
- Delivery updates
- Terms modifications

## Required Elements
1. **Header Level**
   - Response identifier
   - Original order reference
   - Response date
   - Buyer reference
   - Seller reference

2. **Line Item Level**
   - Reference to order line
   - Response status
   - Quantity accepted/rejected
   - Price confirmations

## Singapore-Specific Requirements
- Local business identifiers
- Singapore business rules
- Regional response codes
- Local validation requirements

## Response Types
1. **Acceptance**
   - Full acceptance
   - Partial acceptance
   - Conditional acceptance

2. **Rejection**
   - Full rejection
   - Line item rejection
   - With alternative proposal

3. **Changes**
   - Quantity modifications
   - Price adjustments
   - Delivery updates

## Common Use Cases
1. Simple Acceptance
2. Partial Acceptance with Changes
3. Rejection with Reason
4. Counter-proposal
5. Conditional Response

## XML Examples
Refer to `samples/order-response/` for complete examples:
- Basic examples in `samples/order-response/basic/`
- Use case examples in `samples/order-response/use-cases/`
