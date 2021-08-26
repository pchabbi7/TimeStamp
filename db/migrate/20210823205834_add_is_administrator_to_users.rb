class AddIsAdministratorToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :is_administrator, :boolean
  end
end
