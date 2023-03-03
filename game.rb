class TicTacToe
    def initialize()
        @@sym1 = 'N'
        @@sym2 = 'B'
        @@name = 'Nhoj'
        @@name2 = 'Ber'
        @@check_robot = ['1','2','3','4','5','6','7','8','9']
    end

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

    def print_board() #add a way to update the board
        puts """
         #{@@check_robot[0]} | #{@@check_robot[1]} | #{@@check_robot[2]}
        ---+---+---
         #{@@check_robot[3]} | #{@@check_robot[4]} | #{@@check_robot[5]}
        ---+---+---
         #{@@check_robot[6]} | #{@@check_robot[7]} | #{@@check_robot[8]}
        ---+---+---\n"""
    end

    def update_check(move,sym)
        @@check_robot.each_with_index do |x, ind|
            if x == move
                @@check_robot[ind] = sym
            end
        end
    end

    def ask_move()
        x = 0
        while x < 9
            puts "#{@@name} please enter a number (1-9) that is available to place '#{@@sym1}'"
            move = gets.chomp #chomp is fucking important
            update_check(move,@@sym1)
            print_board()
            find_winner()

            puts "#{@@name2} please enter a number (1-9) that is available to place '#{@@sym2}'"            
            move = gets.chomp
            update_check(move,@@sym2)
            x+= 1
            print_board()
            find_winner()
        end
    end

    def find_winner()
        result = @@check_robot.each_slice(3).to_a
        hold1 = []; hold2 = []; hold3 = []
        result.each do |x|
            hold1 << x[0]
            hold2 << x[1]
            hold3 << x[2]

            #check the rows
            if x.uniq.length == 1
                puts "Game Over! #{x[0]} won"
                ask_new_game()
            end
        end

        #checks the column
       if hold1.uniq.length == 1 
        puts "Game Over! #{hold1[0]} won"
        ask_new_game()
       end
       if hold2.uniq.length == 1 
        puts "Game Over! #{hold2[0]} won"
        ask_new_game()
       end
       if hold3.uniq.length == 1 
        puts "Game Over! #{hold3[0]} won"
        ask_new_game()
       end
        
    end

    def ask_new_game()
        puts "Would you like to play a new game? press 'y' for Yes or 'n' for No."
        continue = gets.chomp
       if continue == 'y'
        initialize()
        start_game()
       elsif continue == 'n'
        exit
       else
        puts "Type 'y' for Yes or 'n' for No"
       end
    end
end

new_game = TicTacToe.new()
new_game.start_game() 