class Cart < ApplicationRecord

    validates :user, 
        presence: true

    has_many   :add_items_to_carts
    has_many   :items, through: :add_items_to_carts
    belongs_to :user

end
