class LinkBTypeADish < ApplicationRecord
  belongs_to :user
  belongs_to :type
  belongs_to :dish
end
