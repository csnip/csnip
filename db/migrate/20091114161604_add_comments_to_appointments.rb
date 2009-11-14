class AddCommentsToAppointments < ActiveRecord::Migration
  def self.up
    add_column :appointments, :comments, :text
  end

  def self.down
    remove_column :appointments, :comments
  end
end
