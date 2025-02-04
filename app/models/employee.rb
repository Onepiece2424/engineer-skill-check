class Employee < ApplicationRecord
  belongs_to :office
  belongs_to :department
  has_many :profiles, dependent: :destroy

  validates :number, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :account, presence: true
  validates :password, presence: true

  scope :active, -> {
    where(deleted_at: nil)
  }
end
