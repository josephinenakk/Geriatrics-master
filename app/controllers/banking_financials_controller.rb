class BankingFinancialsController < ApplicationController
  # GET /banking_financials
  # GET /banking_financials.json
  def index
    @banking_financials = BankingFinancial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @banking_financials }
    end
  end

  # GET /banking_financials/1
  # GET /banking_financials/1.json
  def show
    @banking_financial = BankingFinancial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @banking_financial }
    end
  end

  # GET /banking_financials/new
  # GET /banking_financials/new.json
  def new
    @banking_financial = BankingFinancial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @banking_financial }
    end
  end

  # GET /banking_financials/1/edit
  def edit
    @banking_financial = BankingFinancial.find(params[:id])
  end

  # POST /banking_financials
  # POST /banking_financials.json
  def create
    @banking_financial = BankingFinancial.new(params[:banking_financial])

    respond_to do |format|
      if @banking_financial.save
        format.html { redirect_to @banking_financial, notice: 'Banking financial was successfully created.' }
        format.json { render json: @banking_financial, status: :created, location: @banking_financial }
      else
        format.html { render action: "new" }
        format.json { render json: @banking_financial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /banking_financials/1
  # PUT /banking_financials/1.json
  def update
    @banking_financial = BankingFinancial.find(params[:id])

    respond_to do |format|
      if @banking_financial.update_attributes(params[:banking_financial])
        format.html { redirect_to @banking_financial, notice: 'Banking financial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @banking_financial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banking_financials/1
  # DELETE /banking_financials/1.json
  def destroy
    @banking_financial = BankingFinancial.find(params[:id])
    @banking_financial.destroy

    respond_to do |format|
      format.html { redirect_to banking_financials_url }
      format.json { head :no_content }
    end
  end
end
