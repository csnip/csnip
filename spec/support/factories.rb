Factory.define :appointment do |f|
  f.last_name "Doe"
  f.first_name "John"
  f.phone "6168675309"
  f.alternate_phone "6168675309"
  f.cat_or_dog "cat"
  f.gender "female"
  f.age "5 years"
  f.sequence(:pet_name) { |n| "Pet #{n}" }
end

Factory.define :user do |f|
  f.login "jroe"
  f.name "Jane Roe"
  f.email "jroe@example.com"
  f.password "password"
  f.password_confirmation "password"
end
