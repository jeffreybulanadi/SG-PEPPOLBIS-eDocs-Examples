# Invoice Response Documents Guide

## Overview
PEPPOL BIS Invoice Response documents enable buyers to communicate the status and processing results of received invoices. This guide focuses on implementation in the Singapore PEPPOL context.

## Document Structure
An Invoice Response contains:
- Reference to original invoice
- Processing status
- Response details
- Action requirements
- Payment information

## Required Elements
1. **Header Level**
   - Response identifier
   - Original invoice reference
   - Response date
   - Status code
   - Response type

2. **Detail Level**
   - Processing status details
   - Action requirements
   - Payment information
   - Query details (if applicable)

## Singapore-Specific Requirements
- Local business identifiers
- Singapore status codes
- Regional response types
- Local validation rules

## Response Types
1. **Processing Status**
   - In process
   - Accepted
   - Rejected
   - Under query

2. **Action Requirements**
   - Reissue request
   - Additional information needed
   - Correction required
   - Payment initiated

## Common Use Cases
1. Invoice in Process
2. Acceptance with Payment Details
3. Rejection with Reason
4. Information Request
5. Payment Status Update

## Status Codes and Their Usage
- T111-uc001: Processing indication
- T111-uc002: Reference handling
- T111-uc003: Acceptance
- T111-uc004: Rejection scenarios
- T111-uc005: Conditional acceptance
- T111-uc006: Query handling
- T111-uc007: Payment status
- T111-uc008: Third-party processing

## XML Examples
Refer to `samples/invoice-response/` for complete examples:
- Basic examples in `samples/invoice-response/basic/`
- Use case examples in `samples/invoice-response/use-cases/`
