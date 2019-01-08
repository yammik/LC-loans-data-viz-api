class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.integer :loan_amnt
      t.references :grade, foreign_key: true
      t.references :purpose, foreign_key: true
      t.references :state, foreign_key: true
      t.string :home_owner
      t.integer :annual_inc
      t.string :issue_d
      t.string :desc
      t.string :title
      t.string :earliest_cr_line
      t.integer :open_acc
      t.integer :pub_rec
      t.string :last_credit_pull_d

      t.timestamps
    end
  end
end
