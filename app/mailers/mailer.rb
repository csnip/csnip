class Mailer < ActionMailer::Base
  
  def appointment_submitted(appointment, url)
    from("info@csnip.org")
    recipients("info@csnip.org")
    subject("New appointment request from #{appointment.full_name} for #{appointment.pet_name}")
    body(:appointment => appointment, :url => url)
  end
  
end