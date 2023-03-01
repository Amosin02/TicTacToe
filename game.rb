class TicTacToe
    @@sym1 = ''
    @@sym2 = ''
    @@name = ''
    @@name2 = ''
    @@check_robot = ['','','','','','','','','','']
    def start_game()
        #ask_symbol()
        print_board()
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

    def print_board()
        puts """
         1 | 2 | 3
        ---+---+---
         4 | 5 | 6
        ---+---+---
         7 | 8 | 9
        ---+---+---\n"""
    end

    def ask_move()
        #a code that change the number in to their symbol
        puts "#{@@name} please enter a number (1-9) that is available to place '#{@@sym1}'"
        move = gets
        #move -= 1
        @@check_robot.map { |x| x == move ? @@sym1 : '' }
        print @@check_robot
        print_board(move)
    end

    def update_board()
    end

    #def checker()
        #if @@check_robot[0]
    #end
end

new_game = TicTacToe.new()
new_game.start_game() 