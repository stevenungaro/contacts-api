class ContactsController < ApplicationController
  def first_contact
    render json: Contact.first.as_json
  end

  def all_contacts
    render json: Contact.all.as_json
  end
end
