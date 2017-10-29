# frozen_string_literal: true

# == Schema Information
#
# Table name: schedules
#
#  id         :integer          not null, primary key
#  desk_id_id :integer
#  time_id_id :integer
#  user_id_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_schedules_on_desk_id_id  (desk_id_id)
#  index_schedules_on_time_id_id  (time_id_id)
#  index_schedules_on_user_id_id  (user_id_id)
#

class Schedule < ApplicationRecord
end
