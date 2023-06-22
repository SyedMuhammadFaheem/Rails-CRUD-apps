class Entry < ApplicationRecord
    def day
        self.created_at.strftime('%b %e,%Y')
    end
    validates :meal_type, :proteins, :carbohydrates, :calories, :fats, presence: true
end
