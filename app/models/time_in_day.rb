# frozen_string_literal: true

# == Schema Information
#
# Table name: time_in_days
#
#  id         :integer          not null, primary key
#  start      :time
#  end        :time
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TimeInDay < ApplicationRecord
end
