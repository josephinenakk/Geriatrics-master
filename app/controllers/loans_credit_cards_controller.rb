class LoansCreditCardsController < ApplicationController
  # GET /loans_credit_cards
  # GET /loans_credit_cards.json
  def index
    @loans_credit_cards = LoansCreditCard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @loans_credit_cards }
    end
  end

  # GET /loans_credit_cards/1
  # GET /loans_credit_cards/1.json
  def show
    @loans_credit_card = LoansCreditCard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @loans_credit_card }
    end
  end

  # GET /loans_credit_cards/new
  # GET /loans_credit_cards/new.json
  def new
    @loans_credit_card = LoansCreditCard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @loans_credit_card }
    end
  end

  # GET /loans_credit_cards/1/edit
  def edit
    @loans_credit_card = LoansCreditCard.find(params[:id])
  end

  # POST /loans_credit_cards
  # POST /loans_credit_cards.json
  def create
    @loans_credit_card = LoansCreditCard.new(params[:loans_credit_card])

    respond_to do |format|
      if @loans_credit_card.save
        format.html { redirect_to @loans_credit_card, notice: 'Loans credit card was successfully created.' }
        format.json { render json: @loans_credit_card, status: :created, location: @loans_credit_card }
      else
        format.html { render action: "new" }
        format.json { render json: @loans_credit_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /loans_credit_cards/1
  # PUT /loans_credit_cards/1.json
  def update
    @loans_credit_card = LoansCreditCard.find(params[:id])

    respond_to do |format|
      if @loans_credit_card.update_attributes(params[:loans_credit_card])
        format.html { redirect_to @loans_credit_card, notice: 'Loans credit card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @loans_credit_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loans_credit_cards/1
  # DELETE /loans_credit_cards/1.json
  def destroy
    @loans_credit_card = LoansCreditCard.find(params[:id])
    @loans_credit_card.destroy

    respond_to do |format|
      format.html { redirect_to loans_credit_cards_url }
      format.json { head :no_content }
    end
  end
end
