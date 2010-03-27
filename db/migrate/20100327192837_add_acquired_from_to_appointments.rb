class AddAcquiredFromToAppointments < ActiveRecord::Migration
  def self.up
    add_column(:appointments, :acquired_from, :string)
  end

  def self.down
    remove_column(:appointments, :acquired_from)
  end
end
