class FreelancerDocumentsController < ApplicationController
  before_action :set_freelancer_document, only: [:show, :update, :destroy]

  # GET /freelancer_documents
  def index
    @freelancer_documents = FreelancerDocument.all

    render json: @freelancer_documents
  end

  # GET /freelancer_documents/1
  def show
    render json: @freelancer_document
  end

  # POST /freelancer_documents
  def create
    @freelancer_document = FreelancerDocument.new(freelancer_document_params)

    if @freelancer_document.save
      render json: @freelancer_document, status: :created, location: @freelancer_document
    else
      render json: @freelancer_document.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /freelancer_documents/1
  def update
    if @freelancer_document.update(freelancer_document_params)
      render json: @freelancer_document
    else
      render json: @freelancer_document.errors, status: :unprocessable_entity
    end
  end

  # DELETE /freelancer_documents/1
  def destroy
    @freelancer_document.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freelancer_document
      @freelancer_document = FreelancerDocument.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def freelancer_document_params
      params.require(:freelancer_document).permit(:title, :description, :file_url, :image_url)
    end
end
