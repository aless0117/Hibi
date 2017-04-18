class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :student
  belongs_to :lackcode

end
