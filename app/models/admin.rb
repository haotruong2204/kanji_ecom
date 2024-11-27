# frozen_string_literal: true

# == Schema Information
#
# Table name: admins
#
#  id                 :bigint           not null, primary key
#  email              :string(255)      default(""), not null
#  encrypted_password :string(255)      default(""), not null
#  full_name          :string(255)
#  jti                :string(255)      not null
#  role               :integer          default(0)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_admins_on_email  (email) UNIQUE
#  index_admins_on_jti    (jti) UNIQUE
#
class Admin < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :rememberable, :validatable, :jwt_authenticatable, jwt_revocation_strategy: self
end
