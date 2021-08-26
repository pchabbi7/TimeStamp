class User < ApplicationRecord
    has_many :clock_events
    # Macro to utilize Bcrypt methods
    has_secure_password
end
