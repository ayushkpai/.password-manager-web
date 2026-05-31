class Password < ApplicationRecord
  belongs_to :user
  encrypts :password
end
