class LegalDoucumentsController < ApplicationController
  # GET /legal_documents
  # GET /legal_documents.json
  def index
    @legal_doucuments = LegalDoucument.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @legal_doucuments }
    end
  end

  # GET /legal_documents/1
  # GET /legal_documents/1.json
  def show
    @legal_document = LegalDoucument.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @legal_document }
    end
  end

  # GET /legal_documents/new
  # GET /legal_documents/new.json
  def new
    @legal_document = LegalDoucument.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @legal_document }
    end
  end

  # GET /legal_documents/1/edit
  def edit
    @legal_document = LegalDoucument.find(params[:id])
  end

  # POST /legal_documents
  # POST /legal_documents.json
  def create
    @legal_document = LegalDoucument.new(params[:legal_document])

    respond_to do |format|
      if @legal_document.save
        format.html { redirect_to @legal_document, notice: 'Legal doucument was successfully created.' }
        format.json { render json: @legal_document, status: :created, location: @legal_document }
      else
        format.html { render action: "new" }
        format.json { render json: @legal_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /legal_documents/1
  # PUT /legal_documents/1.json
  def update
    @legal_document = LegalDoucument.find(params[:id])

    respond_to do |format|
      if @legal_document.update_attributes(params[:legal_document])
        format.html { redirect_to @legal_document, notice: 'Legal doucument was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @legal_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legal_documents/1
  # DELETE /legal_documents/1.json
  def destroy
    @legal_document = LegalDoucument.find(params[:id])
    @legal_document.destroy

    respond_to do |format|
      format.html { redirect_to legal_doucuments_url }
      format.json { head :no_content }
    end
  end
end
