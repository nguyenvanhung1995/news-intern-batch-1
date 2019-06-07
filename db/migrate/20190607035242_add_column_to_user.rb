class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :birthday, :string
    add_column :users, :address, :string
    add_column :users, :role, :integer
  end
end
