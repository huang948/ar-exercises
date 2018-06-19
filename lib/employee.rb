class Employee < ActiveRecord::Base
    belongs_to :store
    validates :first_name, :last_name, presence: true
    validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200}
    validates_presence_of :store
    before_create :generate_password

    private 

    def generate_password
        self.password = "c9k3s1de"
    end


end
