class CreateAppointments < ActiveRecord::Migration
  def self.up
    create_table :appointments do |t|
      t.string :last_name
      t.string :first_name
      t.string :phone
      t.string :alternate_phone
      t.string :pet_name
      t.timestamps
    end
  end

  def self.down
    drop_table :appointments
  end
end
