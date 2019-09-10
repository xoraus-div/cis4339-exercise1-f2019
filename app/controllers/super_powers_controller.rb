class SuperPowersController < ApplicationController
  before_action :set_super_power, only: [:show, :edit, :update, :destroy]

  # GET /super_powers
  # GET /super_powers.json
  def index
    @super_powers = SuperPower.all
  end

  # GET /super_powers/1
  # GET /super_powers/1.json
  def show
  end

  # GET /super_powers/new
  def new
    @super_power = SuperPower.new
  end

  # GET /super_powers/1/edit
  def edit
  end

  # POST /super_powers
  # POST /super_powers.json
  def create
    @super_power = SuperPower.new(super_power_params)

    respond_to do |format|
      if @super_power.save
        format.html { redirect_to @super_power, notice: 'Super power was successfully created.' }
        format.json { render :show, status: :created, location: @super_power }
      else
        format.html { render :new }
        format.json { render json: @super_power.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /super_powers/1
  # PATCH/PUT /super_powers/1.json
  def update
    respond_to do |format|
      if @super_power.update(super_power_params)
        format.html { redirect_to @super_power, notice: 'Super power was successfully updated.' }
        format.json { render :show, status: :ok, location: @super_power }
      else
        format.html { render :edit }
        format.json { render json: @super_power.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /super_powers/1
  # DELETE /super_powers/1.json
  def destroy
    @super_power.destroy
    respond_to do |format|
      format.html { redirect_to super_powers_url, notice: 'Super power was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_super_power
      @super_power = SuperPower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def super_power_params
      params.require(:super_power).permit(:name, :description, :super_hero_id)
    end
end
