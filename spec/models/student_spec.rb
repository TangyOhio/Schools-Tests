# == Schema Information
#
# Table name: students
#
#  id             :bigint(8)        not null, primary key
#  school_id      :bigint(8)
#  name           :string           not null
#  student_number :integer          default(0), not null
#  gpa            :float            default(0.0), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe Student, type: :model do
  # write your student model here
end 
