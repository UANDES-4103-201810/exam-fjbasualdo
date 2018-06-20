class DeliveryInfosController < ApplicationController
  before_action :set_delivery_info, only: [:show, :edit, :update, :destroy]

  # GET /delivery_infos
  # GET /delivery_infos.json
  def index
    @delivery_infos = DeliveryInfo.all
  end

  # GET /delivery_infos/1
  # GET /delivery_infos/1.json
  def show
  end

  # GET /delivery_infos/new
  def new
    @delivery_info = DeliveryInfo.new
  end

  # GET /delivery_infos/1/edit
  def edit
  end

  # POST /delivery_infos
  # POST /delivery_infos.json
  def create
    @delivery_info = DeliveryInfo.new(delivery_info_params)

    respond_to do |format|
      if @delivery_info.save
        format.html { redirect_to @delivery_info, notice: 'Delivery info was successfully created.' }
        format.json { render :show, status: :created, location: @delivery_info }
      else
        format.html { render :new }
        format.json { render json: @delivery_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivery_infos/1
  # PATCH/PUT /delivery_infos/1.json
  def update
    respond_to do |format|
      if @delivery_info.update(delivery_info_params)
        format.html { redirect_to @delivery_info, notice: 'Delivery info was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivery_info }
      else
        format.html { render :edit }
        format.json { render json: @delivery_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_infos/1
  # DELETE /delivery_infos/1.json
  def destroy
    @delivery_info.destroy
    respond_to do |format|
      format.html { redirect_to delivery_infos_url, notice: 'Delivery info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_info
      @delivery_info = DeliveryInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delivery_info_params
      params.require(:delivery_info).permit(:address1, :address2, :phone)
    end
end
