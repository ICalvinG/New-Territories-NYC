class Job < ApplicationRecord
	mount_uploader :resume, ResumeUploader

	validates :first_name, :last_name, :messages, presence: true
	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create

end
