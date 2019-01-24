require 'board'

class Show 
  attr_reader :player1, :player2


  def ask_name

    puts "Quel est le prénom du premier joueur qui jouera avec les X ?"
    @player1 = gets.chomp


    puts "Quel est le prénom du deuxième joueur qui jouera avec les O ?"
    @player2 = gets.chomp
    
    return player = [@player1, @player2]
  end

   
  def show_board(board)
      
      puts "Voici le plateau de jeu :"
      puts
      puts "      1    2    3 "
      puts
      puts "A    #{board["A1"].value}  |  #{board["A2"].value}  | #{board["A3"].value}"
      puts "    ----|-----|----"
      puts "B    #{board["B1"].value}  |  #{board["B2"].value}  | #{board["B3"].value}"
      puts "    ----|-----|----"
      puts "C    #{board["C1"].value}  |  #{board["C2"].value}  | #{board["C3"].value}"
      puts 
      #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
  end
    def tuveuxjouerquoi(player)
    puts "#{player} c'est a toi de jouer !"
    reponse = gets.chomp

    #puts "#{@player2} c'est a toi de jouer !"
    #@select_case2 = gets.chomp 
    end

end

 #Show.new.show_board(0)