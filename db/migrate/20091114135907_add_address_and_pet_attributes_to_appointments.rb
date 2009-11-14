class AddAddressAndPetAttributesToAppointments < ActiveRecord::Migration
  def self.up
    add_column :appointments, :street, :string
    add_column :appointments, :city, :string
    add_column :appointments, :postal_code, :string
    add_column :appointments, :county, :string
    add_column :appointments, :cat_or_dog, :string
    add_column :appointments, :breed, :string
    add_column :appointments, :color, :string
    add_column :appointments, :gender, :string
    add_column :appointments, :hair_length, :string
    add_column :appointments, :pet_goes_outside, :boolean
    add_column :appointments, :surgeries, :boolean
    add_column :appointments, :surgeries_explanation, :text
    add_column :appointments, :health_concerns, :boolean
    add_column :appointments, :health_concerns_explanation, :text
    add_column :appointments, :medications, :boolean
    add_column :appointments, :medications_explanation, :text
    add_column :appointments, :age, :string
    add_column :appointments, :owned_for, :string
    add_column :appointments, :vaccinated, :boolean
    add_column :appointments, :visited_vet, :boolean
    add_column :appointments, :vet_name, :string
    add_column :appointments, :pregnant, :boolean
    add_column :appointments, :in_heat, :boolean
    add_column :appointments, :in_heat_when, :string
    add_column :appointments, :had_litter_when, :string
    add_column :appointments, :nursing, :boolean
    add_column :appointments, :testicle_count, :integer
    add_column :appointments, :weight, :string
    add_column :appointments, :date_of_birth, :string
    add_column :appointments, :want_chip_implant, :boolean
    add_column :appointments, :want_rabies_vaccination, :boolean
  end

  def self.down
    remove_column :appointments, :want_rabies_vaccination
    remove_column :appointments, :want_chip_implant
    remove_column :appointments, :date_of_birth
    remove_column :appointments, :weight
    remove_column :appointments, :testicle_count
    remove_column :appointments, :nursing
    remove_column :appointments, :had_litter_when
    remove_column :appointments, :in_heat_when
    remove_column :appointments, :in_heat
    remove_column :appointments, :pregnant
    remove_column :appointments, :vet_name
    remove_column :appointments, :visited_vet
    remove_column :appointments, :vaccinated
    remove_column :appointments, :owned_for
    remove_column :appointments, :age
    remove_column :appointments, :medications_explanation
    remove_column :appointments, :medications
    remove_column :appointments, :health_concerns_explanation
    remove_column :appointments, :health_concerns
    remove_column :appointments, :surgeries_explanation
    remove_column :appointments, :surgeries
    remove_column :appointments, :pet_goes_outside
    remove_column :appointments, :hair_length
    remove_column :appointments, :gender
    remove_column :appointments, :color
    remove_column :appointments, :breed
    remove_column :appointments, :cat_or_dog
    remove_column :appointments, :county
    remove_column :appointments, :postal_code
    remove_column :appointments, :city
    remove_column :appointments, :street
  end
end
