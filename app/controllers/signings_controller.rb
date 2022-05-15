class SigningsController < ApplicationController
  def new
    @signing = Signing.new
    @team = Team.find(params[:team_id])
    @players = Player.all
    @positions = ['Goalkeeper', 'Right Back', 'Left Back', 'Center Back', 'Sweeper', 'Left Wing', 'Right Wing', 'Defensive Midfield', 'Centre Midfield', 'Attacking Midfield', 'Left Midfield', 'Right Midfield', 'Stiker' ]
  end

  def create
    @signing = Signing.new(signing_params)
    @team = Team.find(params[:team_id])
    @signing.team = @team
    @signing.player.position = @signing.position
    if @signing.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end

  def destroy
    @signing = Signing.find(params[:id])
    @signing.destroy
    redirect_to team_path(@signing.team)
  end

  private

  def signing_params
    params.require(:signing).permit(:position, :player_id)
  end
end
