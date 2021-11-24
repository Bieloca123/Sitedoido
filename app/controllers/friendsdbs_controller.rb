class FriendsdbsController < ApplicationController
  before_action :set_friendsdb, only: %i[ show edit update destroy ]

  # GET /friendsdbs or /friendsdbs.json
  def index
    @friendsdbs = Friendsdb.all
  end

  # GET /friendsdbs/1 or /friendsdbs/1.json
  def show
  end

  # GET /friendsdbs/new
  def new
    @friendsdb = Friendsdb.new
  end

  # GET /friendsdbs/1/edit
  def edit
  end

  # POST /friendsdbs or /friendsdbs.json
  def create
    @friendsdb = Friendsdb.new(friendsdb_params)

    respond_to do |format|
      if @friendsdb.save
        format.html { redirect_to @friendsdb, notice: "Friendsdb was successfully created." }
        format.json { render :show, status: :created, location: @friendsdb }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @friendsdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friendsdbs/1 or /friendsdbs/1.json
  def update
    respond_to do |format|
      if @friendsdb.update(friendsdb_params)
        format.html { redirect_to @friendsdb, notice: "Friendsdb was successfully updated." }
        format.json { render :show, status: :ok, location: @friendsdb }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @friendsdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friendsdbs/1 or /friendsdbs/1.json
  def destroy
    @friendsdb.destroy
    respond_to do |format|
      format.html { redirect_to friendsdbs_url, notice: "Friendsdb was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendsdb
      @friendsdb = Friendsdb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friendsdb_params
      params.require(:friendsdb).permit(:first_name, :last_name, :email, :phone, :instagram)
    end
end
