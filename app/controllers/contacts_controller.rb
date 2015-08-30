class ContactsController < ApplicationController
   before_filter :set_up_shared_instance_variables
   before_action :require_user, only: [:index, :show, :destroy]
    layout 'admin', only: [:index, :show]

   def index
    @contacts = Contact.all
  end

   def new
    @contact = Contact.new
   end

   def show
    @contact = Contact.find(params[:id])
  end

   def create 
    @contact = Contact.new(contact_params)
    if @contact.save
      flash.now[:info] = "Takk for henvendelsen, vi vil svare deg så raskt som mulig."
      redirect_to kontakt_path
    else
      render 'new'
    end
   end


   def destroy
    Contact.find(params[:id]).destroy
    flash[:success] = "Forespørselen er slettet"
    redirect_to admin_henvendelser_path
  end



   private

  
    def contact_params
      params.require(:contact).permit(:navn, :telefon, :epost, :henvendelse)
    end
end
