class Weather < ApplicationRecord
  validates :city_name, presence: true, uniqueness: true

end
