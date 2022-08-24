class Tictactoe
    @@number_of_players = 0
    def initialize(name)
        @name = name
        puts "Welcome #{@name}, please pick a symbol"
        @@number_of_players += 1
        if @@number_of_players == 1
            @@row1 = [1, 2, 3]
            @@row2 = [4, 5, 6]
            @@row3 = [7, 8, 9]
        end
        @symbol = gets.chomp.chr
    end
    def startgame
        p @@row1
        p @@row2
        p @@row3
        puts "Pick a number 1-9 to place your move in!"
    end 
end

playerone = Tictactoe.new("Player 1")
playertwo = Tictactoe.new("Player 2")
playerone.startgame