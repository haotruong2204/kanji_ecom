# frozen_string_literal: true

module ApplicationHelper
  include Pagy::Frontend
  def serialized serializer, object, options = {}
    serializer.new(object, options).serializable_hash[:data]
  end
end
