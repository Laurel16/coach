class Order < ApplicationRecord
  belongs_to :gig
  belongs_to :buyer
  belongs_to :seller
end
