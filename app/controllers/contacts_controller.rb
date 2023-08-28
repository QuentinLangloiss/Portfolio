class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @name = params[:contacts][:name]
    @last_name = params[:contacts][:last_name]
    @email = params[:contacts][:email]
    @message = params[:contacts][:message]

    if @name.blank? || @last_name.blank? || @email.blank? || @message.blank?
      flash[:error] = "Please fill in all fields."
      render :new
    else
      # Perform any necessary actions with the form data
      flash[:success] = "Your message has been sent successfully."
      redirect_to contact_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :last_name, :email, :message)
  end
end
