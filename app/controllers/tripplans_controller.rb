class TripplansController < ApplicationController
  before_action :set_tripplan, only: [:show, :edit, :update, :destroy]

  # GET /tripplans
  # GET /tripplans.json
  def index
    @tripplans = Tripplan.all
    respond_to do |format|
      format.html
      format.json
    end
  end

  # GET /tripplans/1
  # GET /tripplans/1.json
  def show
  end

  # GET /tripplans/new
  def new
    @tripplan = Tripplan.new
  end

  # GET /tripplans/1/edit
  def edit
  end

  # POST /tripplans
  # POST /tripplans.json
  def create
    @tripplan = Tripplan.new(tripplan_params)

    respond_to do |format|
      if @tripplan.save
        format.html { redirect_to @tripplan, notice: 'Tripplan was successfully created.' }
        format.json { render :show, status: :created, location: @tripplan }
      else
        format.html { render :new }
        format.json { render json: @tripplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tripplans/1
  # PATCH/PUT /tripplans/1.json
  def update
    respond_to do |format|
      if @tripplan.update(tripplan_params)
        format.html { redirect_to @tripplan, notice: 'Tripplan was successfully updated.' }
        format.json { render :show, status: :ok, location: @tripplan }
      else
        format.html { render :edit }
        format.json { render json: @tripplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tripplans/1
  # DELETE /tripplans/1.json
  def destroy
    @tripplan.destroy
    respond_to do |format|
      format.html { redirect_to tripplans_url, notice: 'Tripplan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tripplan
      @tripplan = Tripplan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tripplan_params
      params.require(:tripplan).permit(:user_id, :tripname, :imagebinary, :imagelink, :image)
    end
end
