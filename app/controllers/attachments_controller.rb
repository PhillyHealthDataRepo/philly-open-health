class AttachmentsController < ApplicationController
  def new
    @attachment = Attachment.new
  end

  def create
    @attachment = Attachment.new
    if @attachment.save
      redirect_to :controller => 'dataset', :action => 'show'
    else
      render action: 'new'
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_attachment
    @attachment = Attachment.find(params[:id])
  end

  def attachment_params
    params.require(:attachment).permit(:dataset_id, :url)
  end

end