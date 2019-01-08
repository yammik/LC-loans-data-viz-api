class LoanSerializer < ActiveModel::Serializer
  attributes %i(id loan_amnt grade purpose state home_owner annual_inc issue_d desc title earliest_cr_line open_acc pub_rec last_credit_pull_d)
end
