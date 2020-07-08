def print_collatz(n)

    until n == 1 do

        print n

        unless n.even?
            n = 3 * n + 1
        else
            n = n / 2
        end    

    end
end

print_collatz(6) #=> 6 3 10 5 16 8 4 2 1
