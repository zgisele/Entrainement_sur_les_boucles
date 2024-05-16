
def half_pyramid
    puts" 2.2.1 Moitié de pyramide"
    puts"Veillez saisi un nombre"
    n=gets.chomp.to_i
    if n<=0 or n > 25
        puts"veillez saisi un nombre compris entre 1 et 25"
    else
        n.times do |i|
            puts" "*(n-i-1)+"*"*i
        end
    end
end

def full_pyramid
    puts" 2.2.3  pyramide Gizeh"
    puts"Salut,bienvenue dans ma super pyramide!Combien d'etages veux-tu?"
    print ">"
    ne=gets.chomp.to_i
    if ne<=0 or ne > 25
        puts"veillez saisi un nombre compris entre 1 et 25"
    else
        puts"voici la pyramide:"
        ne.times do |i|
            puts " "*(ne-i-1)+"*"*(2*i+1)
            
        end
    end
end

def wtf_pyramid
    puts" 2.2.3  Alexandrie,alexandra"
    puts"Salut,bienvenue dans ma super pyramide!Combien d'etages veux-tu?"
    print ">"
    ne = gets.chomp.to_i
    if ne % 2 == 0
        puts"veillez saisi un nombre impaire"
    else
        h=ne/2
        puts"voici la pyramide:"
        0.upto(h) do |i|
            puts " "*(h-i)+"*"*(2*i+1)   
        end

        (h).downto(0) do |i|
            puts " "*(h-i)+"*"*(2*i+1)        
        end    
    end
end 

def perform
    fonction1 = half_pyramid
    fonction2 = full_pyramid
    fonction3 = wtf_pyramid

end
perform

