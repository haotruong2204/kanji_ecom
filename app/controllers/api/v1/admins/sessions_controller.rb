# frozen_string_literal: true

class Api::V1::Admins::SessionsController < Devise::SessionsController
  include CommonResponse
  include ErrorCode
  include ApplicationHelper

  respond_to :json

  # POST /api/v1/admins/sign_in
  def create
    self.resource = warden.authenticate(scope: :admin)
    return response_error({}, UNAUTHORIZED, I18n.t("devise.failure.invalid")) unless resource

    sign_in(resource_name, resource)
    access_token = Warden::JWTAuth::UserEncoder.new.call(resource, :admin, nil)[0]
    response_success({ access_token: }, I18n.t("devise.sessions.signed_in"))
  end

  private

  def respond_to_on_destroy
    response_success({}, I18n.t("devise.sessions.signed_out")) if current_admin
  end
end
