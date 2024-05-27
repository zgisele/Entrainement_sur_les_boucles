class JeuDeLOie

    attr_accessor :position
    attr_accessor :chiffre

    def initialize
        @position = 0
    end

    def lancer_de
        #   rand(1..6)
        #puts"une DE contient les chiffres suivants:1,2,3,4,5 et 6"
        puts"veiller saisie le chiffre afficher par le DE"
        print">"
        @chiffre = gets.chomp.to_i
    end

    def jouer_tour
        de = lancer_de
        case de
        when 5, 6
            @position += 1
            puts "Vous avez fait #{de}. Vous avancez d'une marche. Vous êtes maintenant à la marche #{@position}."
        when 1
            @position -= 1 if @position > 0
            puts "Vous avez fait #{de}. Vous descendez d'une marche. Vous êtes maintenant à la marche #{@position}."
        when 2, 3, 4
            puts "Vous avez fait #{de}. Rien ne se passe. Vous restez à la marche #{@position}."
        end
    end
    def jouer_partie
        tours = 0
        until @position == 10
            jouer_tour
            tours += 1
        end
        puts "Félicitations ! Vous avez atteint la 10ème marche en #{tours} tours !"
        tours
    end
end

# Simulation de 100 parties pour calculer le nombre moyen de tours
def average_finish_time(simulations)
    total_tours = 0
    simulations.times do
        jeu = JeuDeLOie.new
        total_tours += jeu.jouer_partie
    end
    average_tours = total_tours / simulations.to_f
    puts "Le nombre moyen de tours pour atteindre la 10ème marche est de #{average_tours.round(2)}."
    average_tours
end

# Exécuter une partie
#   jeu = JeuDeLOie.new
#   jeu.jouer_partie

def perform
    # Calculer les statistiques sur 100 parties
    average_finish_time(100)

end
perform

