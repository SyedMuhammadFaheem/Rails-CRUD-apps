class AddAdditionalAttrsToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :date_of_joining, :string
  end
end
