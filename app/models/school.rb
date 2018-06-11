# == Schema Information
#
# Table name: schools
#
#  id             :bigint(8)        not null, primary key
#  name           :string           not null
#  address        :string           not null
#  principal      :string           not null
#  capacity       :integer          default(0), not null
#  private_school :boolean          default(TRUE), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class School < ApplicationRecord
  # Validations
  validates_uniqueness_of :name
  validates :capacity, presence: true, numericality: true
  validates_presence_of :name, :address, :principal, :private_school
  
  # Associations
  has_many :students, dependent: :destroy
end
