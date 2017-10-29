# frozen_string_literal: true

# == Schema Information
#
# Table name: desks
#
#  id         :integer          not null, primary key
#  number     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Desk < ApplicationRecord
  validates :number, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
end
