class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    @contact = Contact.new
    @message = Message.new
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = 'New contact created.'
      redirect_to contacts_path
    else
      render 'new'
    end
  end

  def show
    @contact = Contact.find params[:id]
  end

  def edit
    @contact = Contact.find params[:id]
  end

  def update
    @contact = Contact.find params[:id]
    if @contact.update(contact_params)
      flash[:notice] = 'Contact updated.'
      redirect_to contact_path(@contact)
    else
      render 'edit'
    end
  end

  def destroy
    @contact = Contact.find params[:id]
    @contact.destroy
  end

private

  def contact_params
    params.require(:contact).permit(:name, :number)
  end
end
