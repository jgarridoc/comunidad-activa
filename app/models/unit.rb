class Unit < ApplicationRecord
  belongs_to :user
  belongs_to :address
  belongs_to :commune
  belongs_to :city
  belongs_to :region
  belongs_to :zip_code
end
