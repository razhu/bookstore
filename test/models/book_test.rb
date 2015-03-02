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

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
