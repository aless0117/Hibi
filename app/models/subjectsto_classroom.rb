class SubjectstoClassroom < ApplicationRecord
  belongs_to :schedule
  belongs_to :subject
  belongs_to :classroom
  belongs_to :day
  belongs_to :user
  has_many :absents

  has_many :students, :through => :classroom


end
