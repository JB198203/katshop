class AddItemsToCart < ApplicationRecord
    validates :item,
        presence: true
    validates :cart,
        presence: true

    belongs_to :item
    belongs_to :cart
end