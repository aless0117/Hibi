class Student < ApplicationRecord
	belongs_to :classroom
	has_many :absents
	has_many :delays
	has_many :notifications
	has_many :subjectsto_classroom

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
