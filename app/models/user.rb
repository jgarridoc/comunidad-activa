class User < ApplicationRecord
  belongs_to :role
  belongs_to :fee
  belongs_to :phone
end
