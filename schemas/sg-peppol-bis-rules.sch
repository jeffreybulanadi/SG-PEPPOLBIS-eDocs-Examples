<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" 
        xmlns:u="utils"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        schemaVersion="iso">

    <title>Singapore PEPPOL BIS 3.0 Business Rules</title>

    <!-- Common Functions -->
    <ns uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" prefix="cbc"/>
    <ns uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" prefix="cac"/>    <!-- Singapore-specific Common Rules -->
    <pattern id="sg-common-rules">
        <rule context="//cac:PostalAddress">
            <!-- Singapore Postal Code Format -->
            <assert test="not(cac:Country/cbc:IdentificationCode = 'SG') or matches(cbc:PostalZone, '^[0-9]{6}$')">
                Singapore postal code must be exactly 6 digits
            </assert>

            <!-- Singapore Address Format -->
            <assert test="not(cac:Country/cbc:IdentificationCode = 'SG') or (cbc:StreetName and cbc:BuildingNumber)">
                Singapore addresses must include street name and building number
            </assert>
        </rule>

        <rule context="//cac:PartyTaxScheme[cbc:TaxScheme/cbc:ID='GST']">
            <!-- Singapore GST Registration Number -->
            <assert test="matches(cbc:CompanyID, '^[A-Za-z]{2}[0-9]{9}[A-Za-z]{2}$')">
                Singapore GST registration number must be in format XX999999999XX
            </assert>
        </rule>
    </pattern>

    <!-- Order Rules -->
    <pattern id="order-rules">
        <rule context="//Order">
            <!-- Validate Singapore business identifier -->
            <assert test="matches(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:CompanyID, '^[0-9]{8,10}[A-Z]$')">
                Singapore company registration number must be valid
            </assert>
            
            <!-- Validate Currency Code -->
            <assert test="cbc:DocumentCurrencyCode = ('SGD', 'USD')">
                Currency must be either SGD or USD for Singapore transactions
            </assert>

            <!-- Validate Tax Currency -->
            <assert test="not(cbc:TaxCurrencyCode) or cbc:TaxCurrencyCode = 'SGD'">
                If tax currency is specified, it must be SGD for Singapore transactions
            </assert>

            <!-- Singapore Date Format -->
            <assert test="matches(cbc:IssueDate, '^\d{4}-\d{2}-\d{2}$')">
                Date must be in YYYY-MM-DD format
            </assert>

            <!-- Singapore Time Format -->
            <assert test="not(cbc:IssueTime) or matches(cbc:IssueTime, '^\d{2}:\d{2}:\d{2}$')">
                Time must be in 24-hour format (HH:MM:SS)
            </assert>

            <!-- Singapore Payment Terms -->
            <assert test="not(cac:PaymentTerms/cbc:PaymentDueDateType) or number(cac:PaymentTerms/cbc:PaymentDueDateType) <= 60">
                Payment terms should not exceed 60 days as per Singapore fair payment practices
            </assert>

            <!-- Validate Country Code -->
            <assert test="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress/cac:Country/cbc:IdentificationCode = 'SG'">
                Customer country code must be 'SG' for Singapore transactions
            </assert>

            <!-- Validate GST Registration -->
            <assert test="matches(cac:AccountingSupplierParty/cac:Party/cac:PartyTaxScheme/cbc:CompanyID, '^[A-Za-z]{2}[0-9]{9}[A-Za-z]{2}$')">
                Supplier GST registration number must be in valid format
            </assert>
        </rule>

        <!-- Order Line Rules -->
        <rule context="//Order/cac:OrderLine">
            <!-- Validate Item Identification -->
            <assert test="cac:LineItem/cac:Item/cac:StandardItemIdentification or cac:LineItem/cac:Item/cac:SellersItemIdentification">
                Each order line must have either a standard or seller item identification
            </assert>

            <!-- Validate Quantities -->
            <assert test="number(cac:LineItem/cbc:Quantity) > 0">
                Order line quantity must be greater than zero
            </assert>
        </rule>
    </pattern>

    <!-- Order Response Rules -->
    <pattern id="order-response-rules">
        <rule context="//OrderResponse">
            <!-- Validate Response Code -->
            <assert test="cbc:OrderResponseCode = ('AB', 'IP', 'RE')">
                Order response code must be either AB (Accepted), IP (In Process), or RE (Rejected)
            </assert>

            <!-- Reference to Original Order -->
            <assert test="cac:OrderReference/cbc:ID">
                Order response must reference original order ID
            </assert>

            <!-- Validate Response Date -->
            <assert test="cbc:IssueDate">
                Response date is mandatory
            </assert>

            <!-- Line Response Validation -->
            <assert test="every $line in cac:OrderLine satisfies $line/cac:LineItem/cbc:ID">
                Each response line must have a line identifier
            </assert>
        </rule>
    </pattern>

    <!-- Invoice Response Rules -->
    <pattern id="invoice-response-rules">
        <rule context="//ApplicationResponse">
            <!-- Validate Response Type -->
            <assert test="cbc:ResponseCode = ('T111-uc001', 'T111-uc002', 'T111-uc003', 'T111-uc004', 'T111-uc005', 'T111-uc006', 'T111-uc007', 'T111-uc008')">
                Response code must be a valid Singapore invoice response code
            </assert>

            <!-- Reference Document Check -->
            <assert test="cac:DocumentReference/cbc:ID">
                Must reference the original invoice document
            </assert>

            <!-- Response Date Validation -->
            <assert test="cbc:IssueDate and cbc:IssueTime">
                Both issue date and time are required for invoice responses
            </assert>

            <!-- Processing Status -->
            <assert test="cac:Status/cbc:StatusReason">
                Status reason must be provided for the response
            </assert>

            <!-- Additional Information -->
            <assert test="not(cbc:ResponseCode = 'T111-uc006') or cac:Status/cbc:StatusReasonCode">
                Status reason code is mandatory for queries (T111-uc006)
            </assert>
        </rule>
    </pattern>
</schema>
