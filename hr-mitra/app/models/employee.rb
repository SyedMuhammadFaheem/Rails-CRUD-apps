class Employee < ApplicationRecord
    validates :first_name,:last_name, presence: true
    validates :personal_email, presence: true, uniqueness: true
    validates :city,:state,:country,:address_line_1,:pincode, presence: true


    def name
        return "#{first_name} #{last_name}".strip
    end

    def address
        return "#{address_line_1} #{city}, #{state}, #{country}, #{pincode}"
    end

end
