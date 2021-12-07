class Supplier < ApplicationRecord
  belongs_to :supplier_type
  belongs_to :phone
end
