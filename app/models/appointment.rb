class Appointment < ActiveRecord::Base
  belongs_to :clinic

  has_many :assaignments
  has_many :professionals, through: :assaignments

  # Parents accept nested attributes
  accepts_nested_attributes_for :assaignments
end
