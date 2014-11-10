class AddCampusIdToRoom < ActiveRecord::Migration
  def change
    add_reference :rooms, :campus, index: true
  end
end
