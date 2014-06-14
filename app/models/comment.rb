class Comment < ActiveRecord::Base
  belongs_to :help_request

  validates :body, presence: true
end
