class AddEmailToAppointments < ActiveRecord::Migration
  def self.up
    add_column :appointments, :email, :string
  end

  def self.down
    remove_column :appointments, :email
  end
end
