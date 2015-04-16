class MileagelogsController < ApplicationController
  before_action :set_mileagelog, only: [:show, :edit, :update, :destroy]

  # GET /mileagelogs
  # GET /mileagelogs.json
  def index
    @mileagelogs = Mileagelog.all
  end

  # GET /mileagelogs/1
  # GET /mileagelogs/1.json
  def show
  end

  # GET /mileagelogs/new
  def new
    @mileagelog = Mileagelog.new
  end

  # GET /mileagelogs/1/edit
  def edit
  end

  # POST /mileagelogs
  # POST /mileagelogs.json
  def create
    @mileagelog = Mileagelog.new(mileagelog_params)

    respond_to do |format|
      if @mileagelog.save
        format.html { redirect_to @mileagelog, notice: 'Mileagelog was successfully created.' }
        format.json { render :show, status: :created, location: @mileagelog }
      else
        format.html { render :new }
        format.json { render json: @mileagelog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mileagelogs/1
  # PATCH/PUT /mileagelogs/1.json
  def update
    respond_to do |format|
      if @mileagelog.update(mileagelog_params)
        format.html { redirect_to @mileagelog, notice: 'Mileagelog was successfully updated.' }
        format.json { render :show, status: :ok, location: @mileagelog }
      else
        format.html { render :edit }
        format.json { render json: @mileagelog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mileagelogs/1
  # DELETE /mileagelogs/1.json
  def destroy
    @mileagelog.destroy
    respond_to do |format|
      format.html { redirect_to mileagelogs_url, notice: 'Mileagelog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mileagelog
      @mileagelog = Mileagelog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mileagelog_params
      params.require(:mileagelog).permit(:starting_mile, :ending_mile, :rate, :total_miles, :mile_total_cost, :work_order_id)
    end
end
