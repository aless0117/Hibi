class Absent < ApplicationRecord
  belongs_to :subjectsto_classroom
  belongs_to :student
  accepts_nested_attributes_for :student

end
