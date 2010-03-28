class ChangeFieldsInAppointments < ActiveRecord::Migration
  def self.up
    add_column(:appointments, :best_time_to_contact_client, :string)
    add_column(:appointments, :pet_vaccinated, :string)
    add_column(:appointments, :pet_pregnant, :string)
    add_column(:appointments, :pet_in_heat, :string)
    add_column(:appointments, :pet_testicles_decended, :string)
    remove_column(:appointments, :hair_length)
    remove_column(:appointments, :pet_goes_outside)
    remove_column(:appointments, :surgeries)
    remove_column(:appointments, :health_concerns)
    remove_column(:appointments, :medications)
    remove_column(:appointments, :vaccinated)
    remove_column(:appointments, :pregnant)
    remove_column(:appointments, :in_heat)
    remove_column(:appointments, :in_heat_when)
    remove_column(:appointments, :nursing)
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
