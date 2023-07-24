class ContactFormsController < ApplicationController
  def new
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(contact_form_params)
    if @contact_form.save
      UserMailer.notification_email(:contact_form, @contact_form).deliver_now
      redirect_to root_path, notice: 'Form submitted successfully!'
    else
      render :new
    end
  end

  private

  def contact_form_params
    params.require(:contact_form).permit(:name, :email, :phone, :industry, :description, :start_date)
  end
end
