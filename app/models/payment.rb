class Payment < ApplicationRecord
  belongs_to :payment_method
  belongs_to :user
  belongs_to :motive
  belongs_to :month
  belongs_to :year
end
