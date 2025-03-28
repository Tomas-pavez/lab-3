class ContactController < ApplicationController
  def index 
  end

  def create
    Rails.logger.debug "Contact form params: #{params.inspect}"
    flash[:notice] = "Thank you for your message, we will contact you soon."
    redirect_to contact_index_path
  end
end