class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup.subject
  #
  def signup(user, verification)
    @user = user 
    @verification = verification
    
    ## host를 가져올때.
    @host = ActionMailer::Base.default_url_options[:host]

    mail to: @user.email, subject: "회원가입 인증 메일"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.forgot.subject
  #
  def forgot(user, verification)
    @user = user 
    @verification = verification
    
    ## host를 가져올때.
    @host = ActionMailer::Base.default_url_options[:host]

    mail to: @user.email, subject: "비밀번호 안내 메일"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user 

    mail to: @user.email, subject: "환영합니다!"
  end
end
