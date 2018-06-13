

puts "Greet your deaf aunty!"
@bye = 0
def greet
    while @bye < 1
        input = gets.chomp

        case input
            when "Bye"
                @bye += 1
                puts "Are you still there?"
                exit
            when input.downcase
                puts "WHAT? SPEAK UP!"
            when input.upcase
                puts "YOU ARE VERY RUDE!"
            else
                puts "SHOW SOME RESPECT!"
        end
    end
end

def exit
    until @bye == 3
        input = gets.chomp
    
        case input
            when ""
                @bye += 1
            else
                @bye = 0
                puts "I know you're there!"
                greet
            end
    end
end
greet
