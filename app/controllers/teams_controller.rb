class TeamsController < ApplicationController
before_filter :authenticate_user! 

  def index
   @team_users = current_user.team.users.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teams }
    end
  end

  def show
    @team = Team.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @team }
    end
  end

end
