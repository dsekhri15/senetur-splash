class HomeController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:contact_post]

  def index

  end

  def contact_post
    @contact_message = ContactMessage.new(:name => params[:name], :email => params[:email])
    @contact_message.save!
    render :nothing => true
  end
end
