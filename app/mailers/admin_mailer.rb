class AdminMailer < ApplicationMailer
  def notification_email(form_type, form_data)
    @form_data = form_data
    @form_type = form_type
    email_subject = case form_type
                    when :contact_form
                      'New Contact Form Submission'
                    else
                      'New Form Submission'
                    end
    mail(to: 'clarissapbatista@gmail.com', subject: email_subject)
  end
end
