# == Schema Information
#
# Table name: notebooks
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#  cover       :string
#  user_id     :integer
#

class Notebook < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  mount_uploader :cover, CoverUploader
  belongs_to :user
  after_create :send_notification
  def send_notification
    AdminMailer.new_notebook(self).deliver
  end
end
