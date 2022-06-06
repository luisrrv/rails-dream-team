class SigningsController < ApplicationController
  def new
    if params[:query].present?
      @players = Player.where("name ILIKE ?", "%#{params[:query]}%").first(8)
    else
      @players = Player.first(8)
    end
    # @players = Player.where(name: params[:name]) if params[:name].present?

    @signing = Signing.new
    @team = Team.find(params[:team_id])
    # @players = Player.where.not(id: @team.players).order(name: :asc)
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
      if params[:query].present?
        @players = Player.where("title ILIKE ?", "%#{params[:query]}%").first(8)
      else
        @players = Player.first(8)
      end
      # @players = Player.where.not(id: @team.players).order(name: :asc)
      # @players = Player.find(:all, conditions: ['name LIKE ?', "%#{params[:search]}%"])
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
