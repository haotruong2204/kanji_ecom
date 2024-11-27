# frozen_string_literal: true

class Api::V1::Admins::DashboardController < Api::V1::Admins::BaseController
  def home_page
    response_success({ alert: "home page" })
  end
end
