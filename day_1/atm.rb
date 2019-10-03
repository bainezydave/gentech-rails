class ATMModel

    def initialize()
        @availableMoney = 100
        @pin = 1234
    end

    def withdraw(amount)
        if (@availableMoney >= amount)
            @availableMoney -= amount
        else
            return nil
        end
    end

    def deposit(amount)
        @availableMoney += amount
        return @availableMoney
    end

    def displayBalance()
        return @availableMoney
    end

end


class ATMView

    def greeting()
        puts "Welcome to this ATM."
    end

    def actions()
        choice = nil
        while choice != "W" && choice != "D" && choice != "B" && choice != "X"
            puts "Press W to withdraw, D to deposit, B to view balance or X to exit."
            choice = gets.chomp.upcase
        end
        return choice
    end

    def withdraw()
        puts "How much would you like to withdraw?"
        amount = gets.chomp
    end

    def deposit()
        puts "How much would you like to deposit?"
        amount = gets.chomp
    end

    def displayBalance(money)
        puts "You have #{money} available."
    end

    def insuffecientFunds()
        puts "You do not have enough money available."
    end

    def exit()
        puts "Goodbye!"
    end

end


class ATMController

    def initialize
        @model = ATMModel.new
        @view = ATMView.new
    end

    def run
        @view.greeting()
        choice = actions()

        while choice != "X"

            if choice == "W"

                amount = @view.withdraw()

                money = @model.withdraw(amount)

                if money.nil?
                    @view.insuffecientFunds()
                end

            elsif choice == "D"

                d_amount = @view.deposit()

                d_money = @model.deposit(d_amount)

            elsif choice == "B"

                b_amount = @model.displayBalance()

                b_money = @view.displayBalance(b_amount)

            elsif choice == "X"

                @view.exit()

            end

            choice = @view.actions()
        end

        @view.exit()

    end

end


ATMController = ATMController.new
ATMController.run