class AddRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, limit: 25, default: 'student'
  end
end
