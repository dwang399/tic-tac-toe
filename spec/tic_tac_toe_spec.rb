require './lib/tic_tac_toe'
describe Tictactoe do
    describe '#game_over?' do
        it 'counts an identical row as a win' do
            tictactoe = Tictactoe.new
            tictactoe.row1[0] = 'x'
            tictactoe.row1[1] = 'x'
            tictactoe.row1[2] = 'x'
            expect(tictactoe.game_over?).to eql('win')
        end

        it 'counts an identical column as a win' do
            tictactoe = Tictactoe.new
            tictactoe.row1[1] = 'o'
            tictactoe.row2[1] = 'o'
            tictactoe.row3[1] = 'o'
            expect(tictactoe.game_over?).to eql('win')
        end

        it 'counts a diagonal match as a win' do 
            tictactoe = Tictactoe.new
            tictactoe.row1[0] = 'x'
            tictactoe.row2[1] = 'x'
            tictactoe.row3[2] = 'x'
            expect(tictactoe.game_over?).to eql('win')
        end

        it 'counts a full board without any row, column, or diagonal matches as a tie' do 
            tictactoe = Tictactoe.new
            tictactoe.row1[0] = 'x'
            tictactoe.row2[0] = 'o'
            tictactoe.row3[0] = 'x'
            tictactoe.row1[1] = 'x'
            tictactoe.row2[1] = 'o'
            tictactoe.row3[1] = 'o'
            tictactoe.row1[2] = 'o'
            tictactoe.row2[2] = 'x'
            tictactoe.row3[2] = 'x'
            expect(tictactoe.game_over?).to eql('tie')
        end
    end
end