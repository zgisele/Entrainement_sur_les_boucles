n=5
while n % 2 == 1
    h = n/2
    puts"voici la pyramide:"
    0.upto(h) do |i|
        puts " "*(h-i)+"*"*(2*i+1)   
    end
    (h).downto(0) do |i|
        puts " "*(h-i)+"*"*(2*i+1)        
    end      
end
puts"nouvel v"
puts">"
m=gets.chomp
n = m