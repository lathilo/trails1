class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
    @products = Product.limit(3)
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end
end


private

# Never trust parameters from the scary internet, only allow the white list through.
def static_pages_params
  params.require(:static_pages).permit(:name, :email, :message)
end