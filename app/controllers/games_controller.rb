class GamesController < ApplicationController
 before_action :set_game, only[:show, :update]
 
 def index 
   game = Game.all 
   render json: games 
 end 
 
 def create
  game = Game.create(game_params)
  render json: game, status: 201 
 end 
 
 def show 
  render json: @game 
 end 
 
 def update 
  @game.update(game_params)
  render json: @game 
 end 
 
end