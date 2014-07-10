class DatasetsController < ApplicationController
   before_action :set_dataset, only: [:destroy]
   before_action :authorize, only: [:create, :edit, :update, :destroy]

  # GET /datasets
  # GET /datasets.json
  def index
    @datasets = Dataset.all
  end

  # GET /datasets/1
  # GET /datasets/1.json
  def show
    @dataset = Dataset.find(set_dataset)
  end

  # GET /datasets/new
  def new
    @dataset = Dataset.new
  end

  # GET /datasets/1/edit
  def edit
    @dataset = Dataset.find(set_dataset)
  end

  # POST /datasets
  # POST /datasets.json
  def create
    @dataset = Dataset.new(dataset_params)

    respond_to do |format|
      if @dataset.save
        format.html { redirect_to @dataset, notice: 'Data set was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dataset }
      else
        format.html { render action: 'new' }
        format.json { render json: @dataset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datasets/1
  # PATCH/PUT /datasets/1.json
  def update
    @dataset = Dataset.find(set_dataset)
     if @dataset.update_attributes(dataset_params)
       redirect_to @dataset, notice: "Data Set has been updated."
     else
       render "edit"
     end
  end

  # DELETE /datasets/1
  # DELETE /datasets/1.json
  def destroy
    @dataset.destroy
    respond_to do |format|
      format.html { redirect_to datasets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dataset
      @dataset = Dataset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dataset_params
      params.require(:dataset).permit(:title, :description, :createdate)
    end
end
