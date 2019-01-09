# Lending Club Loan Stats API

Parses the CSV file available for download from the Lending Club website.

### Usage
Two ways.
One: clone this repo and :
1. `rails db:create && rails db:migrate && rails db:seed`
2.
Two: use the API I deployed on Heroku.
# URL :

### Tables :
##### purpose
i.e. Purpose of the loan. There are 15 categories.
##### grade
Lending Club assigns a letter grade for the application based on several parameters.
##### addr_state
The state which the address on the loan application belongs to.

Since this is a fairly large dataset, I created tables of attributes I'm interested in looking into, and created relationships. There are a bunch I omitted for the sake of time, but would have liked to check out other relationships as well. 
