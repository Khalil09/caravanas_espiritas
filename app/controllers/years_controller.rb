  class YearsController < ApplicationController
  before_action :set_package_id
  before_action :set_year, only: [:show, :edit, :update, :destroy]

  # GET /years
  # GET /years.json
  def index
    @years = @package.years
    respond_to :html, :json
  end

  # GET /years/1
  # GET /years/1.json
  def show
    @year = @package.years.find(params[:id])
    respond_to :html, :json
  end

  # GET /years/new
  def new
    @year = @package.years.build
    respond_to :html, :json
  end

  # GET /years/1/edit
  def edit
    @year = @package.years.find(params[:id])
    respond_to :html, :json
  end

  # POST /years
  # POST /years.json
  def create
    @year = @package.years.create(params[:year])

    respond_to do |format|
      if @year.save
        format.html { redirect_to @year, notice: 'Year was successfully created.' }
        format.json { render :show, status: :created, location: @year }
      else
        format.html { render :new }
        format.json { render json: @year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /years/1
  # PATCH/PUT /years/1.json
  def update
    @year = @package.years.find(params[:id])

    respond_to do |format|
      if @year.update(year_params)
        format.html { redirect_to @year, notice: 'Year was successfully updated.' }
        format.json { render :show, status: :ok, location: @year }
      else
        format.html { render :edit }
        format.json { render json: @year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /years/1
  # DELETE /years/1.json
  def destroy
    @year = @package.years.find(params[:id])
    @year.destroy
    respond_to do |format|
      format.html { redirect_to years_url, notice: 'Year was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package_id
      @package = Package.find(params[:package_id])
    end

    def set_year
      @year = @package.years.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def year_params
      params.require(:year).permit(:name, :package_id)
    end
end
