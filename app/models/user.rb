# frozen_string_literal: true
# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  full_name       :string
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  hashed_password :string
#

class User < ApplicationRecord
  def authenticate(password)
    BCrypt::Password.new(self.hashed_password) == password
  end

  def password
    @password
  end

  def password=(password)
    @password = password
    self.hashed_password = BCrypt::Password.create(password)
  end

end
