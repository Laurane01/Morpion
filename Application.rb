require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib/", __FILE__)

require 'boardcase'
require 'board'
require 'player'
require 'game'
require 'show'

class Application
  def perform
  

   Game.new

    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    # 

  end

end

Application.new.perform