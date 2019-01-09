# Lending Club Loan Stats API

Parses the CSV file available for download from the Lending Club website.

### Usage


### Tables :
##### purpose
i.e. Purpose of the loan. There are 15 categories.
##### grade
Lending Club assigns a letter grade for the application based on several parameters.
##### addr_state
The state which the address on the loan application belongs to.

a loan belongs to purpose; purpose has many loans
a loan belongs to grade; grade has many loans
a loan belongs to addr_state; addr_state has many loans


desc content begins after the '> '
