class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  def sendmail_word(word)
    @greeting = "Hi"
    @word = word

    mail to: "imtiar.j@gmail.com"
  end
end
