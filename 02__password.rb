
    password = nil
    def signup
        puts "Veuillez définir votre mot de passe :"
        @password = gets.chomp
        puts "Mot de passe enregistré avec succès !"
    end

    def login
        puts "Veuillez entrer votre mot de passe :"
        input_password = gets.chomp
        until input_password == @password
            puts "Mot de passe incorrect. Veuillez réessayer :"
            input_password = gets.chomp
        end
        puts "Connexion réussie !"
    end

    def welcome_screen
        puts "Bienvenue sur l'écran d'accueil top secret de la NSA !"
        puts "Voici quelques informations confidentielles..."
        # Afficher des informations confidentielles ici
    end
# end
def perform
    signup
    login
    welcome_screen
end
perform