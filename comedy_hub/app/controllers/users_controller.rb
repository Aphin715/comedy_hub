class UsersController < ApplicationController
 before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /comedy_clubs
  # GET /comedy_clubs.json
  def index
    @users = User.all
  end

  # GET /comedy_clubs/1
  # GET /comedy_clubs/1.json
  def show
     @user = User.find(params[:id])
  end

  # GET /comedy_clubs/new
  def new
    @user = User.new
  end

  # GET /comedy_clubs/1/edit
  def edit
  end

  # POST /comedy_clubs
  # POST /comedy_clubs.json
  def create
    @User = User.new(User_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @comedy_club, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comedy_clubs/1
  # PATCH/PUT /comedy_clubs/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comedy_clubs/1
  # DELETE /comedy_clubs/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to user_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comedy_club
      @comedy_club = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comedy_club_params
      params.require(:user).permit(:name, :email, :password)
    end
end







