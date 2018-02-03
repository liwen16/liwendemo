class LiwentestsController < ApplicationController
  before_action :set_liwentest, only: [:show, :edit, :update, :destroy]

  # GET /liwentests
  # GET /liwentests.json
  def index
    @liwentests = Liwentest.all
  end

  # GET /liwentests/1
  # GET /liwentests/1.json
  def show
  end

  # GET /liwentests/new
  def new
    @liwentest = Liwentest.new
  end

  # GET /liwentests/1/edit
  def edit
  end

  # POST /liwentests
  # POST /liwentests.json
  def create
    @liwentest = Liwentest.new(liwentest_params)

    respond_to do |format|
      if @liwentest.save
        format.html { redirect_to @liwentest, notice: 'Liwentest was successfully created.' }
        format.json { render :show, status: :created, location: @liwentest }
      else
        format.html { render :new }
        format.json { render json: @liwentest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liwentests/1
  # PATCH/PUT /liwentests/1.json
  def update
    respond_to do |format|
      if @liwentest.update(liwentest_params)
        format.html { redirect_to @liwentest, notice: 'Liwentest was successfully updated.' }
        format.json { render :show, status: :ok, location: @liwentest }
      else
        format.html { render :edit }
        format.json { render json: @liwentest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liwentests/1
  # DELETE /liwentests/1.json
  def destroy
    @liwentest.destroy
    respond_to do |format|
      format.html { redirect_to liwentests_url, notice: 'Liwentest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liwentest
      @liwentest = Liwentest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liwentest_params
      params.require(:liwentest).permit(:name)
    end
end
