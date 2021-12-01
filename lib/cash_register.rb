require "pry"

class CashRegister

    attr_accessor :total, :discount

    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end

    def add_item(title, price, quantity = 1)
        self.total += quantity * price
        binding.pry
        
    end

    def apply_discount
        case self.discount
        when self.discount != 0
            self.total -= self.discount / 100 * total 
            "After the discount, the total comes to $#{self.total}."
        when self.discount == 0
            "There is no discount to apply."
        end
    end

    def items(one, two, three = nil)
        [one, two, three]
    end

end

x = CashRegister.new
x.add_item('eggs', 5.00)