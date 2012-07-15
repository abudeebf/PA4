class CreatePayements < ActiveRecord::Migration
  def change
    create_table :payements do |t|
      t.integer :user_id
      t.string :cardtype
      t.string :cardnumber
      t.integer :cvv
      t.date :expireat
      t.integer :noteid

      t.timestamps
    end
  end
end
