class Author < ApplicationRecord
    has_one :address
    has_many :books
end
