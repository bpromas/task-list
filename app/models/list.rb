class List < ApplicationRecord
    belongs_to :user
    has_many :users, through: :favorites
    has_many :favorites
    has_many :tasks
    accepts_nested_attributes_for :tasks
    validates :title, presence: true, 
    uniqueness: true
end
