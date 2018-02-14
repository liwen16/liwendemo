class Email < ApplicationRecord
    validate :email, :name, :message
end
