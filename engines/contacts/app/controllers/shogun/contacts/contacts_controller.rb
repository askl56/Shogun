require_dependency 'shogun/application_controller'

module Shogun
  module Contacts
    class ContactsController < ApplicationController
      before_action :set_contact, only: [:show, :edit, :update, :destroy]
      authorize_resource class: Shogun::Contacts::Contact

      def index
        @contacts = current_user.contacts
      end

      def show
      end

      def new
        @contact = Contact.new
      end

      def edit
      end

      def create
        @contact = Contact.new(contact_params)
        @contact.user = current_user

        if @contact.save
          redirect_to [shogun, @contact], notice: 'Contact was successfully created.'
        else
          render :new
        end
      end

      def update
        if @contact.update(contact_params)
          redirect_to [shogun, @contact], notice: 'Contact was successfully updated.'
        else
          render :edit
        end
      end

      def destroy
        @contact.destroy
        redirect_to shogun.contacts_url, notice: 'Contact was successfully destroyed.'
      end

      private

      def set_contact
        @contact = Contact.find(params[:id])
      end

      def contact_params
        params.require(:contact).permit(:first_name, :last_name, :company, :email, :phone, :user_id)
      end
    end
  end
end
