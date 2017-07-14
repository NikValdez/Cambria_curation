class WriteUpsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_write_up, only: [:show, :edit, :update, :destroy]


  # GET /write_ups
  # GET /write_ups.json
  def index
    @write_ups = WriteUp.all
  end

  # GET /write_ups/1
  # GET /write_ups/1.json
  def show
    @writes_ups = WriteUp.find(params[:id])  
  end

  # GET /write_ups/new
  def new
    @write_up = WriteUp.new
  end

  # GET /write_ups/1/edit
  def edit
  end

  # POST /write_ups
  # POST /write_ups.json
  def create
    @write_up = WriteUp.new(write_up_params)

    respond_to do |format|
      if @write_up.save
        format.html { redirect_to @write_up, notice: 'Write up was successfully created.' }
        format.json { render :show, status: :created, location: @write_up }
      else
        format.html { render :new }
        format.json { render json: @write_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /write_ups/1
  # PATCH/PUT /write_ups/1.json
  def update
    respond_to do |format|
      if @write_up.update(write_up_params)
        format.html { redirect_to @write_up, notice: 'Write up was successfully updated.' }
        format.json { render :show, status: :ok, location: @write_up }
      else
        format.html { render :edit }
        format.json { render json: @write_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /write_ups/1
  # DELETE /write_ups/1.json
  def destroy
    @write_up.destroy
    respond_to do |format|
      format.html { redirect_to write_ups_url, notice: 'Write up was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_write_up
      @write_up = WriteUp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def write_up_params
      params.require(:write_up).permit(:title, :content, :image)
    end
end
