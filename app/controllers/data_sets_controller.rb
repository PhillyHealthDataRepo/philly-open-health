class DataSetsController < ApplicationController
  before_action :set_data_set, only: [:destroy]
  before_action :authorize, only: [:create, :edit, :update, :destroy]

  # GET /data_sets
  # GET /data_sets.json
  def index
    @data_sets = DataSet.all
  end

  # GET /data_sets/1
  # GET /data_sets/1.json
  def show
    @data_set = DataSet.find(set_data_set)
  end

  # GET /data_sets/new
  def new
    @data_set = DataSet.new
  end

  # GET /data_sets/1/edit
  def edit
    @data_set = DataSet.find(set_data_set)
  end

  # POST /data_sets
  # POST /data_sets.json
  def create
    @data_set = DataSet.new(data_set_params)

    respond_to do |format|
      if @data_set.save
        format.html { redirect_to @data_set, notice: 'Data set was successfully created.' }
        format.json { render action: 'show', status: :created, location: @data_set }
      else
        format.html { render action: 'new' }
        format.json { render json: @data_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_sets/1
  # PATCH/PUT /data_sets/1.json
  def update
    @data_set = DataSet.find(set_data_set)
    if @data_set.update_attributes(data_set_params)
      redirect_to @data_set, notice: "Data Set has been updated."
    else
      render "edit"
    end
  end

  # DELETE /data_sets/1
  # DELETE /data_sets/1.json
  def destroy
    @data_set.destroy
    respond_to do |format|
      format.html { redirect_to data_sets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_set
      @data_set = DataSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_set_params
      params.require(:data_set).permit(:title, :description, :createdate)
    end
end
