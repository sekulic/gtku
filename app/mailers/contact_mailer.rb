class ContactMailer < ActionMailer::Base
  default from: 'sekulic87@gmail.com'  
  def contact_email(email, question)
    rade ="sekulic.radosav@yahoo.com"
    mail(to: rade,
         body: question,
         content_type: "text/html",
         subject: "Massage from: #{email}")
  end
end
