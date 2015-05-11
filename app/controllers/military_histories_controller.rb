class MilitaryHistoriesController < ApplicationController
  before_filter :set_military_history, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @military_histories = MilitaryHistory.all
    respond_with(@military_histories)
  end

  def show
    respond_with(@military_history)
  end

  def new
    @military_history = MilitaryHistory.new
    respond_with(@military_history)
  end

  def edit
  end

  def create
    @military_history = MilitaryHistory.new(params[:military_history])
    @military_history.save
    respond_with(@military_history)
  end

  def update
    @military_history.update_attributes(params[:military_history])
    respond_with(@military_history)
  end

  def destroy
    @military_history.destroy
    respond_with(@military_history)
  end

  private
    def set_military_history
      @military_history = MilitaryHistory.find(params[:id])
    end
end
