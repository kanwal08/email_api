class UserMailer < ActionMailer::Base
  default from: "noreply@example.com"
  
  def api(params)
    @body = params[:body]
    mail(to: params[:to], subject: params[:subject]).deliver
  end
end
