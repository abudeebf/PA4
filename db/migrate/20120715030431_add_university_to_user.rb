class AddUniversityToUser < ActiveRecord::Migration
  def change
    add_column :users, :university, :string
    add_column :users, :year, :string
    add_column :users, :major, :string
    add_column :users, :minor, :string
    remove_column :users, :hair
  end
end
