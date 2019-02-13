class GamesController < ApplicationController
 before_action :set_game, only[:show, :update]
 
 def index 
   game = Game.all 
   render json: games 
   
 end 
 
 
end