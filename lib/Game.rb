require 'board'
require 'show'
class Game
  attr_accessor :current_player, :status, :array_players, :board
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.

  def initialize
    players = Show.new.ask_name
    player1 = Player.new(players[0], "X") 
    player2 = Player.new(players[1], "O")
    @array_players = [player1, player2]
    @toursnr = 0
    @board = Board.new 
    
    #@status = @board.victory?
    turn
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
  end

  def turn
    
    #while @status == true
      9.times do
        @toursnr += 1
        if @toursnr.even? 
        @current_player = @array_players[0]
      else 
        @current_player = @array_players[1]
      end
      Show.new.show_board(@board.id_case)
      reponse = Show.new.tuveuxjouerquoi(@current_player.name)
      @board.play_turn(reponse, @current_player.value)
    
    end
    if @status == false
      puts "Fin de partie"
      @show.show_board
      f#in departie demande de view de dire fini rejouer
    
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  end

  def new_round
    puts "Nouvelle partie"
    @board.initialize
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end
=begin 
  def game_end
    puts "Fin de partie."
    @board.victory?
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end    
=end
  end
end
