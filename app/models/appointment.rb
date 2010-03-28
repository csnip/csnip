class Appointment < ActiveRecord::Base
  include AASM

  aasm_column :current_status
  
  aasm_initial_state :requested

  aasm_state :requested
#  aasm_state :acknowledged
#  aasm_state :scheduled
#  aasm_state :completed

  validates_presence_of :last_name, :first_name, :phone, :cat_or_dog, :gender, :age, :pet_name
  attr_accessor :acquired_from_type, :acquired_from_other_description
  before_create :set_acquired_from
  
  def person_attributes
    { :first_name => first_name, 
      :last_name => last_name, 
      :phone => phone, 
      :street => street,
      :city => city, 
      :postal_code => postal_code, 
      :county => county, 
      :alternate_phone => alternate_phone
    }
  end
  
  def client_name_last_comma_first
    [last_name, first_name].join(', ')
  end
  
  def client_full_name
    [first_name, last_name].join(' ')
  end
  
  def self.search(params)
    conditions = []
    terms = []
    if params[:last_name].present?
      conditions << "last_name ilike ?"
      terms.push("%#{params[:last_name]}%")
    end

    if params[:postal_code].present?
      conditions << "postal_code = ?"
      terms.push(params[:postal_code])
    end    

    if params[:county].present?
      conditions << "county ilike ?"
      terms.push("%#{params[:county]}%")
    end    

    if params[:cat_or_dog].present?
      conditions << "cat_or_dog = ?"
      terms.push("#{params[:cat_or_dog]}")
    end
    
    if params[:visited_vet].present?
      conditions << "visited_vet = true"
    end  

    if params[:vaccinated].present?
      conditions << "vaccinated = true"
    end  

    conditions = [conditions.join(' AND ')].push(terms).flatten
    paginate(:conditions => conditions, :page => params[:page], :order => 'created_at DESC')
  end

  def set_acquired_from
    if acquired_from_type == 'other'
      self.acquired_from = "other: #{acquired_from_other_description}"
    elsif acquired_from_type.blank?
      self.acquired_from = "none"
    else
      self.acquired_from = acquired_from_type
    end
  end
end
