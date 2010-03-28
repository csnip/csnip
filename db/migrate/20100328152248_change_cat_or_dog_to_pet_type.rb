class ChangeCatOrDogToPetType < ActiveRecord::Migration
  def self.up
    rename_column :appointments, :cat_or_dog, :pet_type
    add_index :appointments, :pet_type
  end

  def self.down
    remove_index :appointments, :pet_type
    rename_column :appointments, :pet_type, :cat_or_dog
  end
end
