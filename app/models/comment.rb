class Comment < ActiveRecord::Base
  belongs_to :help_request

  validates :title, presence: true
  validates :body, presence: true
end
