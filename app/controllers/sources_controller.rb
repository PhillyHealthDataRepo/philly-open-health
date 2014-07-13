class SourcesController < ApplicationController
  before_action :set_source, only: [:show, :edit, :update, :destroy]
  before_action :authorize, only: [:create, :edit, :update, :destroy]

  # GET /sources
  def index
    @sources = Source.all
  end

  # GET /sources/1
  def show
  end

  # GET /sources/new
  def new
    @source = Source.new
  end

  # GET /sources/1/edit
  def edit
  end

  # POST /sources
  def create
    @source = Source.new(source_params)
    if @source.save
      redirect_to @source, notice: 'Source was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /sources/1
  def update
    if @source.update(source_params)
      redirect_to @source, notice: 'Source was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /sources/1
  def destroy
    @source.destroy
    redirect_to sources_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_source
    @source = Source.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def source_params
    params.require(:source).permit(:name, :description, :homepageurl)
  end
end
