class PagesController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def contact_sent
    ContactMailer.contact_form(params[:contact]).deliver

    flash[:notice] = "Thank you. We will get back at you asap."
    redirect_to contact_path
  end
end
