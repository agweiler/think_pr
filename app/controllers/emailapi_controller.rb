class EmailapiController < ApplicationController
  include EmailapiHelper

   skip_before_action :verify_authenticity_token


  def subscribe
    email = params[:email][:address]
    # respond_to do |format|
      if 
        is_a_valid_email?(email)
        @list_id = "a8d92e6f2e"
        gb = Gibbon::API.new

        gb.lists.subscribe({
          :id => @list_id,
          :email => {:email => email}
        })

        redirect_to( root_path, :flash => :success)
      else
        redirect_to( root_path, :flash => :error)





      #   format.json { render json: {msg: "Please check your supplied email to confirm subscription!" }}
      # else
      #   format.json { render json: {msg: "Invalid email" }}
      
    end
  end
end
