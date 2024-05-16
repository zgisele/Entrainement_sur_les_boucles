
# puts"veillez saisi votre nom"
#     print">"
#     first_name = gets.chomp

def say_hello(first_name)
    var = "Bonjour #{first_name}!"
    puts (var) 
end

def ask_first_name
    puts"veillez saisi votre prenom"
    print">"
    last_name = gets.chomp
    return last_name 
end



# say_hello
def perform
    fonction1 = ask_first_name
    fonction2 = say_hello(fonction1 )
    # prenom = ask_first_name
    puts fonction2
end
perform