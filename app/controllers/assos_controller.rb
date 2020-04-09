class AssosController < ApplicationController
  before_action :set_asso, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "Associations", :assos_path

  # GET /assos
  # GET /assos.json
  def index
    @regions = Region.all
    @assos = Asso.all
  end

  # GET /assos/1
  # GET /assos/1.json
  def show
    add_breadcrumb "#{@asso.name}", :asso_path
  end

  # GET /assos/new
  def new
    @asso = Asso.new
  end

  # GET /assos/1/edit
  def edit
  end

  # POST /assos
  # POST /assos.json
  def create
    @asso = Asso.new(asso_params)

    respond_to do |format|
      if @asso.save
        format.html { redirect_to @asso, notice: 'Asso was successfully created.' }
        format.json { render :show, status: :created, location: @asso }
      else
        format.html { render :new }
        format.json { render json: @asso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assos/1
  # PATCH/PUT /assos/1.json
  def update
    respond_to do |format|
      if @asso.update(asso_params)
        format.html { redirect_to @asso, notice: 'Asso was successfully updated.' }
        format.json { render :show, status: :ok, location: @asso }
      else
        format.html { render :edit }
        format.json { render json: @asso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assos/1
  # DELETE /assos/1.json
  def destroy
    @asso.destroy
    respond_to do |format|
      format.html { redirect_to assos_url, notice: 'Asso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asso
      @asso = Asso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def asso_params
      params.require(:asso).permit(:name, :address, :zipcode, :city, :lat, :long, :phone, :email, :members, :region_id)
    end
end
