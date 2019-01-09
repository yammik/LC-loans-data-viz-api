# Lending Club Loan Stats API (Back End)

Parses the CSV file available for download from [the Lending Club website](https://www.lendingclub.com/info/download-data.action).<br/>
Live at : http://hidden-shore-16694.herokuapp.com/api/v1<br/>
## Usage
###### Two ways:
* Use the API I deployed on Heroku. The front end is currently happy with it and you really don't want to sit through the seeding on this one.<br/>(P.S. it plays the X-files theme song when it finishes seeding...just in case someone actually does this alone in the middle of the night)<br/>
* Clone this repo and :
  1. `rails db:create && rails db:migrate && rails db:seed`
  2. `rails s` should start the server at port 3000 (Rails default).
  3. Uncomment line 4 and comment out line 3 in `src/lib/Api.js` in the front end.<br/><br/>
  
#### What it does:
* Renders loan records in JSON, based on the parameters passed in and their relationship to the record.

#### Tables :
##### `purpose`
i.e. Purpose of the loan. There are 15 categories.
##### `grade`
Lending Club assigns a letter grade for the application based on several parameters.
##### `addr_state`
The state which the address on the loan application belongs to.
##### `loan`
Belongs to the above three. <br/><br/>

Since this is a fairly large dataset, I created tables of attributes I'm interested in looking into, and created relationships. There are a bunch I omitted for the sake of time, but would have liked to check out other relationships as well, like the duration of opened credit line and such.<br/><br/>

The API doesn't allow fetching *all* of the loan records because of the sheer volume. To minimize the number of data being sent back, I used relationships between `loans` and `purpose||addr_state` to only grab the relevant records.

This is my first time working with a dataset this large. Especially visualizing. Just gonna say it was a beast 🙃
