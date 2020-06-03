class Cart < ApplicationRecord
    ## Relationships:
    belongs_to :user
    has_and_belongs_to_many :items
    
    ## validations:
end

