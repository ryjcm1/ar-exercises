class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}

  before_destroy :prevent_destroy

  private
    def prevent_destroy
      if self.annual_revenue > 0
        self.errors[:base] 
        return false
      end
    end
  
end
