class ContactsController < ApplicationController
   before_filter :set_up_shared_instance_variables

   def new
    @contact = Contact.new
   end

   def create 
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "Takk for henvendelsen, vi vil svare deg så raskt som mulig."
      redirect_to kontakt_path
    else
      render 'new'
    end
   end



   private

  
    def contact_params
      params.require(:contact).permit(:navn, :telefon, :epost, :henvendelse)
    end
end
