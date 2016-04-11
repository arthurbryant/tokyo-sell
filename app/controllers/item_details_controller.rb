class ItemDetailsController < ApplicationController
  before_action :set_item_detail, only: [:show, :edit, :update, :destroy]

  # GET /item_details
  # GET /item_details.json
  def index
    @item_details = ItemDetail.all
  end

  # GET /item_details/1
  # GET /item_details/1.json
  def show
  end

  # GET /item_details/new
  def new
    @item_detail = ItemDetail.new
  end

  # GET /item_details/1/edit
  def edit
  end

  # POST /item_details
  # POST /item_details.json
  def create
    @item_detail = ItemDetail.new(item_detail_params)

    respond_to do |format|
      if @item_detail.save
        format.html { redirect_to @item_detail, notice: 'Item detail was successfully created.' }
        format.json { render :show, status: :created, location: @item_detail }
      else
        format.html { render :new }
        format.json { render json: @item_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_details/1
  # PATCH/PUT /item_details/1.json
  def update
    respond_to do |format|
      if @item_detail.update(item_detail_params)
        format.html { redirect_to @item_detail, notice: 'Item detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_detail }
      else
        format.html { render :edit }
        format.json { render json: @item_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_details/1
  # DELETE /item_details/1.json
  def destroy
    @item_detail.destroy
    respond_to do |format|
      format.html { redirect_to item_details_url, notice: 'Item detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_detail
      @item_detail = ItemDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_detail_params
      params.require(:item_detail).permit(:item_id, :description, :other_imgs)
    end
end
