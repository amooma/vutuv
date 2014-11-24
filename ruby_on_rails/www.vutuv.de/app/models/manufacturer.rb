class Manufacturer < ActiveRecord::Base
  has_many :brands
end
