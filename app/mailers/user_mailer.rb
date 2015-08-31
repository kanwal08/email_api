class UserMailer < ActionMailer::Base
  default from: "noreply@example.com"
  
  def api(params)
    mail(to: params[:email], subject: params[:subject])
  end
end
