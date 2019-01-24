require 'Player'

class Case
  attr_accessor :value, :id_case
  @@allid_case = []
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  
 
  def initialize(value, id_case)
  @value = value
  @id_case = id_case
    # DO : doit régler sa valeur, ainsi que son numéro de case
  end

  def change_value(nouvellevaleur)
    @value = nouvellevaleur
  end
end