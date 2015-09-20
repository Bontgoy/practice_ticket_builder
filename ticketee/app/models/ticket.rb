class Ticket < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true

  belongs_to :project
  belongs_to :author, class_name: "User"
end
