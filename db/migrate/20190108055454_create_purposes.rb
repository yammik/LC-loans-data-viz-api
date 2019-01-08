class CreatePurposes < ActiveRecord::Migration[5.2]
  def change
    create_table :purposes do |t|
      t.string :category

      t.timestamps
    end
  end
end
