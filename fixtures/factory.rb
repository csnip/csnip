Factory.define(:appointment) do |f|
  f.last_name "Doe"
  f.first_name "John"
  f.phone "6168675309"
  f.pet_type "cat"
  f.gender "female"
  f.age "5 years"
  f.sequence(:pet_name) { |n| "Pet #{n}" }
end

Factory.define(:new_appointment, :parent => :appointment) do |f|
end

Factory.define(:new_request, :parent => :appointment) do |f|
end

Factory.define(:scheduled_appointment, :parent => :appointment) do |f|
  f.current_status :scheduled
end

Factory.define(:user) do |f|
  f.sequence(:login) { |n| "factory#{n}" }
  f.name "Super Hacker"
  f.sequence(:email) { |n|  "super@hacker#{n}.com" }
  f.password "sUperH@cker"
  f.password_confirmation "sUperH@cker"
end
