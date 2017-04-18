class Lackcode < ApplicationRecord
  belongs_to :lack
  has_many :notifications
end
