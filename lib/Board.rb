require 'boardcase'
require 'game'
require 'player'

class Board
  attr_accessor :value, :id_case
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué


  def initialize
    @id_case = { "A1" => Case.new(" ", "A1"),
      "A2" => Case.new(" ", "A2"),
      "A3" => Case.new(" ", "A3"),
      "B1" => Case.new(" ", "B1"),
      "B2" => Case.new(" ", "B2"),
      "B3" => Case.new(" ", "B3"),
      "C1" => Case.new(" ", "C1"),
      "C2" => Case.new(" ", "C2"),
      "C3" => Case.new(" ", "C3")}
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
  end


  def play_turn(lacase, value)
    if @id_case[lacase].value == " "
    @id_case[lacase].change_value(value)
    p @id_case[lacase].value
    end
  end 
 def ckoisbordeldemerde
    case @id_case
      when A1
        if @A1.to_s == "A1".to_s
          @A1 = @value 
        else  
          puts "L'emplacement est pris ! " 
          return false
        end 

      when A2
        if @A2.to_s == "A2".to_s
          @A2 = @value 
        else  
          puts "L'emplacement est pris ! " 
          return false
        end 
      
      when A3
        if @A3.to_s == "A3".to_s
          @A3 = @value 
        else  
          puts "L'emplacement est pris ! " 
          return false
        end 

      when B1
        if @B1.to_s == "B1".to_s
          @B1 = @value 
        else  
          puts "L'emplacement est pris ! " 
          return false
        end 

      when B2
        if @B2.to_s == "B2".to_s
          @B2 = @value 
        else  
          puts "L'emplacement est pris ! " 
          return false
        end 

      when B3
        if @B3.to_s == "B3".to_s
          @B3 = @value 
        else  
          puts "L'emplacement est pris ! " 
          return false
        end 

      when C1
        if @C1.to_s == "C1".to_s
           @C1 = @value 
        else  
          puts "L'emplacement est pris ! " 
          return false
        end 

      when C2
        if @C2.to_s == "C2".to_s
           @C2 = @value 
        else  
          puts "L'emplacement est pris ! " 
          return false
        end 

      when C3
        if @C3.to_s == "C3".to_s
           @C3 = @value 
        else  
          puts "L'emplacement est pris ! " 
          return false
        end 
    end

    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
  
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

=begin 
 
 def victory?
count = 0
@id_case.each do |count|
  count +=1
    if 
     id_case[@A1, @A2, @A3]||
     id_case[@B1, @B2, @B3]||
     id_case[@C1, @C2, @C3]||
     id_case[@A1, @B1, @C1]||
     id_case[@A2, @B2, @C2]||
     id_case[@A3, @B3, @C3]||
     id_case[@A1, @B2, @C3]||
     id_case[@A3, @B2, @C1]
       true
    else
      false
      
    end 
  break if count == 9
    
  end 
  end
=end 

end