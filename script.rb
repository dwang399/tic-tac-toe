class Tictactoe
    @@number_of_players = 0
    def initialize(name)
        @name = name
        puts "Welcome #{@name}, would you like to be x or o?"
        @@number_of_players += 1
        if @@number_of_players == 1
            @@row1 = [1, 2, 3]
            @@row2 = [4, 5, 6]
            @@row3 = [7, 8, 9]
        end
        @@player1symbol = gets.chomp.chr.downcase
        if @@player1symbol == 'x'
            @@player2symbol = 'o'
        else
            @@player2symbol = 'x'
        end
        @@blankrow1 = [1, 2, 3]
        @@blankrow2 = [4, 5, 6]
        @@blankrow3 = [7, 8, 9]
    end
    def startgame
        @@playerturn = 1
        p @@row1
        p @@row2
        p @@row3
            until (@@row1.uniq.size <= 1 || @@row2.uniq.size <= 1 || @@row3.uniq.size <= 1) || 
                ((@@row1[0] == @@row2[0]) && (@@row2[0] == @@row3[0])) || 
                ((@@row1[1] == @@row2[1]) && (@@row2[1] == @@row3[1])) ||
                ((@@row1[2] == @@row2[2]) && (@@row2[2] == @@row3[2])) ||
                ((@@row1[0] == @@row2[1]) && (@@row2[1] == @@row3[2])) ||
                ((@@row1[2] == @@row2[1]) && (@@row2[1] == @@row3[0])) ||
                (((@@row1 & @@blankrow1).any? == false) && ((@@row2 & @@blankrow2).any? == false) && ((@@row3 & @@blankrow3).any? == false))  
                if @@playerturn % 2 == 1

                    puts "Player 1, Pick a number 1-9 to place your move in!"
                    spot = gets.chomp.to_i 
                    if spot < 4
                        @@row1[spot.to_i - 1] = puts @@player1symbol
                    elsif spot < 7
                        @@row2[spot.to_i - 4] = @@player1symbol
                    else 
                        @@row3[spot.to_i - 7] = @@player1symbol
                    end
                    p @@row1
                    p @@row2
                    p @@row3
                else

                    puts "Player 2, Pick a number 1-9 to place your move in!"
                    spot = gets.chomp.to_i
                    if spot < 4
                        @@row1[spot.to_i - 1] = @@player2symbol
                    elsif spot < 7
                        @@row2[spot.to_i - 4] = @@player2symbol
                    else 
                        @@row3[spot.to_i - 7] = @@player2symbol
                    end
                    p @@row1
                    p @@row2
                    p @@row3
                end
                @@playerturn += 1
            end
        if (@@row1.uniq.size <= 1 || @@row2.uniq.size <= 1 || @@row3.uniq.size <= 1) || 
            ((@@row1[0] == @@row2[0]) && (@@row2[0] == @@row3[0])) || 
            ((@@row1[1] == @@row2[1]) && (@@row2[1] == @@row3[1])) ||
            ((@@row1[2] == @@row2[2]) && (@@row2[2] == @@row3[2])) ||
            ((@@row1[0] == @@row2[1]) && (@@row2[1] == @@row3[2])) ||
            ((@@row1[2] == @@row2[1]) && (@@row2[1] == @@row3[0]))
            if @@playerturn % 2 == 0
                puts "Congratulations Player 1, you win!"
            else
                puts "Congratulations Player 2, you win!"
            end
        else
            puts "It's a tie! You are both equally as smart!"
        end
    end 
end

playerone = Tictactoe.new("Player 1")
playerone.startgame