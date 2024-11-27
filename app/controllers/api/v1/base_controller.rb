# frozen_string_literal: true

class Api::V1::BaseController < ApplicationController
  include CommonResponse
  include ErrorCode
  include Devise::Controllers::Helpers
  include ApplicationHelper
end
