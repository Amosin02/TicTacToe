class TicTacToe
    @@sym1 = 'N'
    @@sym2 = 'B'
    @@name = ''
    @@name2 = ''
    @@check_robot = ['1','2','3','4','5','6','7','8','9']
    def start_game()
        #ask_symbol()
        #print_board()
        ask_move()
    end

    def ask_symbol()
        puts "Player 1 Enter your name: "
        @@name = gets 
        puts "Pick a symbol #{@@name}" 
        @@sym1 = gets

        puts "Player 2 Enter your name: "
        @@name2 = gets
        puts "Pick a symbol #{@@name2}except #{@@sym1}" 
        @@sym2 = gets
    end

    def print_board() #add a way to update the board
        position = [1,2,3,4,5,6,7,8,9]
        #@@check_robot.each_with_index do |x,ind|
        #    if x == @sym1
        #        position[ind] = @@sym1
        #    end
        #end
        #p position
        puts """
         #{position[0]} | #{position[1]} | #{position[2]}
        ---+---+---
         4 | 5 | 6
        ---+---+---
         7 | 8 | 9
        ---+---+---\n"""
    end

    def ask_move()
        x = 0
        while x < 3
            puts "#{@@name} please enter a number (1-9) that is available to place '#{@@sym1}'"
            move = gets.chomp #chomp is fucking important
            @@check_robot.each_with_index do |x, ind|
                if x == move
                    @@check_robot[ind] = @@sym1
                end
            end
            p @@check_robot
            x+= 1
            print_board()
        end
        #ilagay yung mga tira sa isang array then use that array to check the 
        #winner and use that to update the board
    end
end

new_game = TicTacToe.new()
new_game.start_game() 