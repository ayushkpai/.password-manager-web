class Password < ApplicationRecord
  encrypts :password
end
