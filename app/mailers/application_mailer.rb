# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'mailer@zeroindex.software'
  layout 'mailer'
end
