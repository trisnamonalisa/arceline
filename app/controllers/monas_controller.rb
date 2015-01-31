class MonasController < ApplicationController
  before_action :set_mona, only: [:show, :edit, :update, :destroy]

  # GET /monas
  # GET /monas.json
  def index
    @monas = Mona.all
  end

  # GET /monas/1
  # GET /monas/1.json
  def show
  end

  # GET /monas/new
  def new
    @mona = Mona.new
  end

  # GET /monas/1/edit
  def edit
  end

  # POST /monas
  # POST /monas.json
  def create
    @mona = Mona.new(mona_params)

    respond_to do |format|
      if @mona.save
        format.html { redirect_to @mona, notice: 'Mona was successfully created.' }
        format.json { render :show, status: :created, location: @mona }
      else
        format.html { render :new }
        format.json { render json: @mona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monas/1
  # PATCH/PUT /monas/1.json
  def update
    respond_to do |format|
      if @mona.update(mona_params)
        format.html { redirect_to @mona, notice: 'Mona was successfully updated.' }
        format.json { render :show, status: :ok, location: @mona }
      else
        format.html { render :edit }
        format.json { render json: @mona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monas/1
  # DELETE /monas/1.json
  def destroy
    @mona.destroy
    respond_to do |format|
      format.html { redirect_to monas_url, notice: 'Mona was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mona
      @mona = Mona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mona_params
      params[:mona]
    end
end
