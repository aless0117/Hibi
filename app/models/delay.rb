class Delay < ApplicationRecord
  belongs_to :student
  belongs_to :subjectstoClassroom
  accepts_nested_attributes_for :student
end
