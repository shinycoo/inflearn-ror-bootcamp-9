# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/signup
  def signup
    UserMailer.signup
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/forgot
  def forgot
    UserMailer.forgot
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome
  def welcome
    UserMailer.welcome
  end

end
