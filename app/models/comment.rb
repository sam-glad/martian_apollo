class Comment < ActiveRecord::Base
  belongs_to :help_request
end
