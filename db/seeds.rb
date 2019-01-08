require 'csv'
FILE_PATH = 'lib/LoanStats3a.csv'
# would use adapter if data was coming from an API endpoint (scales better that way). But since this is a one-time mass seeding, I'm doing the stupid way (that gets the job done)

Loan.destroy_all

f = open(FILE_PATH)
csv_str = f.read.encode!("UTF-8", "iso-8859-1", invalid: :replace)
CSV.parse(csv_str, headers: true) do |row|
  l = Loan.new
  # only pulling columns I'm interested in
  grade = Grade.find_or_create_by(letter: row['grade'])
  pur = Purpose.find_or_create_by(category: row['purpose'])
  state = State.find_or_create_by(abbr: row['addr_state'])
  l.loan_amnt = row['loan_amnt']
  l.grade_id = grade.id
  l.purpose_id = pur.id
  l.state_id = state.id
  l.home_owner = row['home_owner']
  l.annual_inc = row['annual_inc']
  l.issue_d = row['issue_d']
  # lot of misc characters and elements in description, need to sanitize
  l.desc = '' || row['desc'].gsub(/<br\/>|<br>|null|Borrower added on \d\d\/\d\d\/\d\d > /,"").strip
  l.title = row['title']
  l.earliest_cr_line = row['earliest_cr_line']
  l.open_acc = row['open_acc']
  l.pub_rec = row['pub_rec']
  l.last_credit_pull_d = row['last_credit_pull_d']
  l.save
  puts "saved #{l.title} from #{l.state.abbr} into db"
end

# play sound when done
pid = fork{ exec 'afplay', 'lib/the-x-files.mp3' }
puts "#{Loan.count} rows in Loan table"
