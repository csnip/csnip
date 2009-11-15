class Generate
  UniqueId = Hash.new(0)

  def self.unique_id_for(key)
    UniqueId[key] += 1
  end

  class << self

    def appointment(attributes = {})
      n = unique_id_for(:appointment)
      Appointment.new(attributes.reverse_merge(
        :last_name => "Doe",
        :first_name => "John",
        :phone => "6168675309",
        :alternate_phone => "6168675309",
        :cat_or_dog => "cat",
        :gender => "female",
        :age => "5 years",
        :pet_name => "Pet #{n}"
      ))
    end

    def appointment!(attributes = {})
      returning self.appointment(attributes) do |appointment|
        appointment.save!
      end
    end

  end
end
