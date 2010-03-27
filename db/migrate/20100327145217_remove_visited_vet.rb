class RemoveVisitedVet < ActiveRecord::Migration
  def self.up
    remove_column :appointments, :visited_vet
  end

  def self.down
    add_column :appointments, :visited_vet, :boolean
  end
end
