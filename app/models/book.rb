# == Schema Information
#
# Table name: books
#
#  id             :integer          not null, primary key
#  title          :string
#  availability   :boolean
#  unavailability :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  editorial      :string
#

class Book < ActiveRecord::Base
  belongs_to :author
  scope :available, ->{where(availability: true)}
  scope :unavailable, -> {where(availability: [false, nil])}
end
