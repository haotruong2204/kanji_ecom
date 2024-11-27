# frozen_string_literal: true

module OtpSender
  extend ActiveSupport::Concern

  def send_otp_to_user_email user
    UserMailer.send_otp(user).deliver_later
  end
end
