class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@bandnotifier.herokuapp.com'
  layout 'mailer'
end
