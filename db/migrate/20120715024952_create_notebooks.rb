class CreateNotebooks < ActiveRecord::Migration
  def change
    create_table :notebooks do |t|
      t.string :title
      t.text :content
      t.boolean :free
      t.string :course
      t.string :teacher
      t.integer :user_id
      t.float :price
      t.timestamps
    end
  end
end
