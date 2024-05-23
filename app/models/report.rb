class Report < ApplicationRecord
    has_many :messages, dependent: :destroy
end
