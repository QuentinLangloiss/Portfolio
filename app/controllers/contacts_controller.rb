class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      # Le contact a été enregistré avec succès
      redirect_to contact_path, notice: "Message envoyé avec succès."
    else
      # Afficher le formulaire avec les erreurs
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
