class Loan < ApplicationRecord
  belongs_to :grade
  belongs_to :purpose
  belongs_to :state
end
