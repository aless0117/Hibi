class Delay < ApplicationRecord
  belongs_to :student
  belongs_to :subjectsto_classroom
  accepts_nested_attributes_for :student
end
