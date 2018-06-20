class Store < ActiveRecord::Base
    has_many :employees
    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}
    validate :must_at_least_have_one_item
    before_destroy :non_empty_stores

    private

    def must_at_least_have_one_item
        if (mens_apparel == false && womens_apparel == false)
            errors.add(:mens_apparel, "can't have no men's clothes or women's clothes")
        end
    end

    def non_empty_stores
        throw :abort if self.employees.size != 0
    end

end