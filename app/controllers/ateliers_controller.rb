class AteliersController < ApplicationController
  before_action :get_asso
  before_action :set_atelier, only: [:show, :edit, :update, :destroy]

  # GET /ateliers
  # GET /ateliers.json
  def index
    @ateliers = @asso.ateliers
  end

  # GET /ateliers/1
  # GET /ateliers/1.json
  def show
  end

  # GET /ateliers/new
  def new
    @atelier = @asso.ateliers.build
  end

  # GET /ateliers/1/edit
  def edit
  end

  # POST /ateliers
  # POST /ateliers.json
  def create
    @atelier = @asso.ateliers.build(atelier_params)

    respond_to do |format|
      if @atelier.save
        format.html { redirect_to asso_ateliers_path(@asso), notice: 'Atelier was successfully created.' }
        format.json { render :show, status: :created, location: @atelier }
      else
        format.html { render :new }
        format.json { render json: @atelier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ateliers/1
  # PATCH/PUT /ateliers/1.json
  def update
    respond_to do |format|
      if @atelier.update(atelier_params)
        format.html { redirect_to asso_ateliers_path(@asso), notice: 'Atelier was successfully updated.' }
        format.json { render :show, status: :ok, location: @atelier }
      else
        format.html { render :edit }
        format.json { render json: @atelier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ateliers/1
  # DELETE /ateliers/1.json
  def destroy
    @atelier.destroy
    respond_to do |format|
      format.html { redirect_to asso_ateliers_path(@asso), notice: 'Atelier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atelier
      @atelier = @asso.ateliers.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atelier_params
      params.require(:atelier).permit(:name, :description, :slots, :min_age, :max_age, :media, :asso_id, :place_id, :metier_id)
    end

  private
    def get_asso
      @asso = Asso.find(params[:asso_id])
    end
end
