# Lending Club Loan Stats API (Back End)

Parses the CSV file available for download from [the Lending Club website](https://www.lendingclub.com/info/download-data.action).

## Usage
###### Two ways:
* Use the API deployed on Heroku. The front end is currently happy with it and you really don't want to sit through the seeding on this one.
  - (P.S. it plays the X-files theme song when it finishes seeding...just in case someone actually does this alone in the middle of the night)
  - Live at http://hidden-shore-16694.herokuapp.com/api/v1/
    - You can hit `/states`, `/purposes`, `/states/:id`, etc
* Clone this repo and run :
  1. `bundle install`
  2. `rails db:create && rails db:migrate && rails db:seed`
  3. `rails s` should start the server at port 3000 (Rails default).
  4. Uncomment line 4 and comment out line 3 in `src/lib/Api.js` in the front end.
  
#### What it does:
* Renders loan records in JSON, based on the parameters passed in and their relationship to the record.

#### Tables :
##### `purpose`
i.e. the purpose of the loan. There are 15 categories.
##### `grade`
Lending Club assigns a letter grade for the application based on several parameters.
##### `addr_state`
The state which the address on the loan application belongs to.
##### `loan`
Belongs to the above three. 

Since this is a fairly large dataset, I created tables of attributes I'm interested in looking into, and created relationships. There are a bunch I omitted for the sake of time, but would have liked to check out other relationships as well, like the duration of opened credit line and such.

The API doesn't allow fetching *all* of the loan records because of the sheer volume. To minimize the number of data being sent back, I used relationships between `loans` and `purpose||addr_state` to only grab the relevant records.

This is my first time working with a dataset this large. Especially visualizing. Just gonna say it was a beast 🙃

## Future features
- Looking into other parameters 
- North Dakota is suspiciously missing data...hmm
- State table can be updated with population size to normalize loan amounts
