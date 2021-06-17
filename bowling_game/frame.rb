class Frame 
    def initialize
        @first_try = 0
        @second_try = 0
        @total = 0
        @extra = 0     
    end
    
    def first_roll_ball
        @first_try = 1 + rand(10)
        @first_try
    end
    def second_roll_ball
        rest = 10 - @first_try
        @second_try = 1 + rand(rest) if @first_try != 10
        @second_try
    end
end

test1 = Frame.new()
puts test1.first_roll_ball
puts test1.second_roll_ball