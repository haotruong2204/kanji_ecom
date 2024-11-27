# frozen_string_literal: true

class Api::V1::Admins::BaseController < Api::V1::BaseController
  before_action :authenticate_admin!

  respond_to :json

  def authenticate_admin!
    unauthorized(I18n.t("api.error.unauthorized")) unless current_admin
  end
end
