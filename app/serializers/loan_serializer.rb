class LoanSerializer < ActiveModel::Serializer
  attributes %i(id loan_amnt purpose state desc)
end
