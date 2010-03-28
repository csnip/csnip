class AddCurrentStateToAppointment < ActiveRecord::Migration
  def self.up
    add_column :appointments, :current_status, :string
    add_index :appointments, :current_status
  end

  def self.down
    remove_index :appointments, :current_status
    remove_column :appointments, :current_status
  end
end
