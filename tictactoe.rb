@won = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
@hash = {"0" => nil, "1" => nil, "2" => nil, "3" => nil, "4" => nil, "5" => nil, "6" => nil, "7" => nil, "8" => nil}
@counter = 0

puts "Positions"
puts "0|1|2"
puts "3|4|5"
puts "6|7|8"
puts "--------"

def display
    puts "#{@hash[0]}|#{@hash[1]}|#{@hash[2]}"
    puts "#{@hash[3]}|#{@hash[4]}|#{@hash[5]}"
    puts "#{@hash[6]}|#{@hash[7]}|#{@hash[8]}"
end

def full
    if @hash[0] && @hash[1] && @hash[2] && @hash[3] && @hash[4] && @hash[5] && @hash[6] && @hash[7] && @hash[8] != nil
        return true
    else
        return false
    end
end

def draw
    if full == true
        @counter += 1
        puts "Draw Game!"
    end
end

def check_winner
    @won.each do |won|
        o_count = 0
        x_count = 0
        won.each do |x|
            if @hash[x] == "o"
                o_count += 1
            elsif @hash[x] == "x"
                x_count += 1
            end
        end
        if x_count == 3
            display
            puts "Player 2 wins! Game Over!"
            @counter += 1
            break
        elsif
            o_count == 3
            display
            puts "Player 1 wins! Game Over!"
            @counter += 1
            break
        else
            @counter = 0
        end
    end
end

def player_1
    while @counter < 1
    display
    puts "Player 1: Please input position (0-8) to place 'o' marker"
    input = gets.chomp

        case input
            when "0"
                if @hash[0] == nil
                    @hash[0] = "o"
                    check_winner
                    draw
                    player_2
                else
                    puts "position already taken, try somewhere else"
                    player_1
                end
            when "1"
                if @hash[1] == nil
                    @hash[1] = "o"
                    check_winner
                    draw
                    player_2
                else
                    puts "position already taken, try somewhere else"
                    player_1
                end
            when "2"
                if @hash[2] == nil
                    @hash[2] = "o"
                    check_winner
                    draw
                    player_2
                else
                    puts "position already taken, try somewhere else"
                    player_1
                end
            when "3"
                if @hash[3] == nil
                    @hash[3] = "o"
                    check_winner
                    draw
                    player_2
                else
                    puts "position already taken, try somewhere else"
                    player_1
                end
            when "4"
                if @hash[4] == nil
                    @hash[4] = "o"
                    check_winner
                    draw
                    player_2
                else
                    puts "position already taken, try somewhere else"
                    player_1
                end
            when "5"
                if @hash[5] == nil
                    @hash[5] = "o"
                    check_winner
                    draw
                    player_2
                else
                    puts "position already taken, try somewhere else"
                    player_1
                end
            when "6"
                if @hash[6] == nil
                    @hash[6] = "o"
                    check_winner
                    draw
                    player_2
                else
                    puts "position already taken, try somewhere else"
                    player_1
                end
            when "7"
                if @hash[7] == nil
                    @hash[7] = "o"
                    check_winner
                    draw
                    player_2
                else
                    puts "position already taken, try somewhere else"
                    player_1
                end
            when "8"
                if @hash[8] == nil
                    @hash[8] = "o"
                    check_winner
                    draw
                    player_2
                else
                    puts "position already taken, try somewhere else"
                    player_1
                end
            else
                puts "invalid input"
                player_1
        end
    end
end


def player_2
    display
    while @counter < 1
    puts "Player 2: Please input position (0-8) to place 'x' marker"
    
        input = gets.chomp

            case input
            when "0"
                if @hash[0] == nil
                    @hash[0] = "x"
                    check_winner
                    draw
                    player_1
                else
                    puts "position already taken, try somewhere else"
                    player_2
                end
            when "1"
                if @hash[1] == nil
                    @hash[1] = "x"
                    check_winner
                    draw
                    player_1
                else
                    puts "position already taken, try somewhere else"
                    player_2
                end
            when "2"
                if @hash[2] == nil
                    @hash[2] = "x"
                    check_winner
                    draw
                    player_1
                else
                    puts "position already taken, try somewhere else"
                    player_2
                end
            when "3"
                if @hash[3] == nil
                    @hash[3] = "x"
                    check_winner
                    draw
                    player_1
                else
                    puts "position already taken, try somewhere else"
                    player_2
                end
            when "4"
                if @hash[4] == nil
                    @hash[4] = "x"
                    check_winner
                    draw
                    player_1
                else
                    puts "position already taken, try somewhere else"
                    player_2
                end
            when "5"
                if @hash[5] == nil
                    @hash[5] = "x"
                    check_winner
                    draw
                    player_1
                else
                    puts "position already taken, try somewhere else"
                    player_2
                end
            when "6"
                if @hash[6] == nil
                    @hash[6] = "x"
                    check_winner
                    draw
                    player_1
                else
                    puts "position already taken, try somewhere else"
                    player_2
                end
            when "7"
                if @hash[7] == nil
                    @hash[7] = "x"
                    check_winner
                    draw
                    player_1
                else
                    puts "position already taken, try somewhere else"
                    player_2
                end
            when "8"
                if @hash[8] == nil
                    @hash[8] = "x"
                    check_winner
                    draw
                    player_1
                else
                    puts "position already taken, try somewhere else"
                    player_2
                end
            else
                puts "invalid input"
                player_2
        end
    end
end

player_1