class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_game, only: [:show, :update, :edit, :destroy]

  def index
    # @games = Game.where.not(latitude: nil, longitude: nil)
    @games = Game.all
    @markers = @games.map do |game|
      {
        lat: game.latitude,
        lng: game.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { game: game }),
        image_url: helpers.asset_url('ballz.png')
      }
    end
  end

  def show
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(set_params)
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @game = Game.update(set_params)
    redirect_to game_path(@game)
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private

  def set_params
    params.require(:game).permit(:name, :location, :price, :num_of_players, :duration, :description, :date)
  end

  def find_game
    @game = Game.find(params[:id])
  end
end
