class FuneralArrangementsController < ApplicationController
  before_filter :set_funeral_arrangement, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @funeral_arrangements = FuneralArrangement.all
    respond_with(@funeral_arrangements)
  end

  def show
    respond_with(@funeral_arrangement)
  end

  def new
    @funeral_arrangement = FuneralArrangement.new
    respond_with(@funeral_arrangement)
  end

  def edit
  end

  def create
    @funeral_arrangement = FuneralArrangement.new(params[:funeral_arrangement])
    @funeral_arrangement.save
    respond_with(@funeral_arrangement)
  end

  def update
    @funeral_arrangement.update_attributes(params[:funeral_arrangement])
    respond_with(@funeral_arrangement)
  end

  def destroy
    @funeral_arrangement.destroy
    respond_with(@funeral_arrangement)
  end

  private
    def set_funeral_arrangement
      @funeral_arrangement = FuneralArrangement.find(params[:id])
    end
end
