class BrewlinksController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_brewlink, only: [:show, :edit, :update, :destroy]

  def index
    @brewlinks = Brewlink.all
    respond_with(@brewlinks)
  end

  def show
    respond_with(@brewlink)
  end

  def new
    @brewlink = Brewlink.new
    respond_with(@brewlink)
  end

  def edit
  end

  def create
    @brewlink = Brewlink.new(brewlink_params)
    @brewlink.save
    respond_with(@brewlink)
  end

  def update
    @brewlink.update(brewlink_params)
    respond_with(@brewlink)
  end

  def destroy
    @brewlink.destroy
    respond_with(@brewlink)
  end

  private
    def set_brewlink
      @brewlink = Brewlink.find(params[:id])
    end

    def brewlink_params
      params.require(:brewlink).permit(:brewlink_name, :brewlink_description, :brewlink_url)
    end
end
