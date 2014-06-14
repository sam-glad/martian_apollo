class HelpRequest < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :subject, presence: true
  validates :description, presence: true
end
