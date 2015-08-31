class Api::V1::EmailController < ApplicationController
  skip_before_filter :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }
  before_filter :authenticate_from_user_token

  def create
    UserMailer.api params[:email]
    render :nothing => true
  end
  
  def authenticate_from_user_token
    token = User.where(email: "admin@example.com").last.try(:authentication_token)
    render json: {status: :unauthorized} if params[:token] != token
  end
end
