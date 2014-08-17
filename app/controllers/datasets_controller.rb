class DatasetsController < ApplicationController
  before_action :set_dataset, only: [:show, :edit, :update, :destroy]
  before_action :authorize, only: [:create, :edit, :update, :destroy]

  # GET /datasets
  def index
    @datasets = Dataset.all
  end

  # GET /datasets/1
  def show
  end

  # GET /datasets/new
  def new
    @dataset = Dataset.new
  end

  # GET /datasets/1/edit
  def edit
  end

  # POST /datasets
  def create
    @dataset = Dataset.new(dataset_params)
    if @dataset.save
      redirect_to @dataset, notice: 'Dataset was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /datasets/1
  def update
     if @dataset.update_attributes(dataset_params)
       redirect_to @dataset, notice: "Dataset has been updated."
     else
       render "edit"
     end
  end

  # DELETE /datasets/1
  def destroy
    @dataset.destroy
    redirect_to datasets_url
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
