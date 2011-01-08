class PagesController < ApplicationController
  rescue_from ActionView::MissingTemplate do |exception|
    redirect_to(root_path)
  end

  def index
  end

  def show
    render(params[:id])
  end


  def contact_sent
    ContactMailer.contact_form(params[:contact]).deliver

    flash[:notice] = "Thank you. We will get back at you asap."
    redirect_to contact_path
  end
end
