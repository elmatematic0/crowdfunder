class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.backing_met.subject
  

  def backing_met(user)
    @user =user
    @last_pledge = @user.pledges.last
    @project = @last_pledge.project

    mail to: @user.email, subject: "Congratulation - '#{@project.title}' project you backed has been fully funded"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.backing_fail.subject
  #
  def backing_fail(user)
    @user =user
    @last_pledge = @user.pledges.last
    @project = @last_pledge.project

    mail to: @user.email, subject: "Sorry - '#{@project.title}' project you backed has failed to get fully funded"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.project_created.subject
  #
  def project_created(user)
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.project_deleted.subject
  #
  def project_deleted(user)
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
