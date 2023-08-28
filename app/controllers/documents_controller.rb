class DocumentsController < ApplicationController
  include ActionController::MimeResponds
  before_action :set_document, only: %i[show update destroy]

  # GET /documents
  def index
    @documents = Document.all

    render json: @documents
  end

  # GET /documents/1
  def show
    render json: @document
  end

  # POST /documents
  def create
    pdf = File.read(Rails.root.join('fixtures/dummy.pdf'))
    send_data pdf,
              type: 'application/pdf',
              filename: 'dummy.pdf',
              disposition: 'attachment'
  end

  # PATCH/PUT /documents/1
  def update
    if @document.update(document_params)
      render json: @document
    else
      render json: @document.errors, status: :unprocessable_entity
    end
  end

  # DELETE /documents/1
  def destroy
    @document.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_document
    @document = Document.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def document_params
    params.fetch(:document, {})
  end
end
