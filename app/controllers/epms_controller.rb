class EpmsController < ApplicationController
  before_action :set_epm, only: [:show, :edit, :update, :destroy]

  # GET /epms
  # GET /epms.json
  def index
    @epms = Epm.all
  end

  # GET /epms/1
  # GET /epms/1.json
  def show
  end

  # GET /epms/new
  def new
    @epm = Epm.new
  end

  # GET /epms/1/edit
  def edit
  end

  # POST /epms
  # POST /epms.json
  def create
    @epm = Epm.new(epm_params)

    respond_to do |format|
      if @epm.save
        format.html { redirect_to @epm, notice: 'Epm was successfully created.' }
        format.json { render :show, status: :created, location: @epm }
      else
        format.html { render :new }
        format.json { render json: @epm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /epms/1
  # PATCH/PUT /epms/1.json
  def update
    respond_to do |format|
      if @epm.update(epm_params)
        format.html { redirect_to @epm, notice: 'Epm was successfully updated.' }
        format.json { render :show, status: :ok, location: @epm }
      else
        format.html { render :edit }
        format.json { render json: @epm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /epms/1
  # DELETE /epms/1.json
  def destroy
    @epm.destroy
    respond_to do |format|
      format.html { redirect_to epms_url, notice: 'Epm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_epm
      @epm = Epm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def epm_params
      params.require(:epm).permit(:name, :age)
    end
end
