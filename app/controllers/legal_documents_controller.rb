class LegalDocumentsController < ApplicationController
  before_filter :set_legal_document, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @legal_documents = LegalDocument.all
    respond_with(@legal_documents)
  end

  def show
    respond_with(@legal_document)
  end

  def new
    @legal_document = LegalDocument.new
    respond_with(@legal_document)
  end

  def edit
  end

  def create
    @legal_document = LegalDocument.new(params[:legal_document])
    @legal_document.save
    respond_with(@legal_document)
  end

  def update
    @legal_document.update_attributes(params[:legal_document])
    respond_with(@legal_document)
  end

  def destroy
    @legal_document.destroy
    respond_with(@legal_document)
  end

  private
    def set_legal_document
      @legal_document = LegalDocument.find(params[:id])
    end
end
