class ClockEvent < ApplicationRecord
    validates :name, presence: true, length: {maximum: 92}, allow_nil: false
    validates :clocking_in, inclusion: [true, false], allow_nil: false
    
    belongs_to :user
end
