class TenanciesController < ApplicationController
  before_action :check_for_login
  before_action :set_tenancy, only: %i[ show edit update destroy ]

  # GET /tenancies or /tenancies.json
  def index
    # @tenancies = Tenancy.all
    @tenancies = Current.user.tenancies.includes(:tenants)
  end

  # GET /tenancies/1 or /tenancies/1.json
  def show
  end

  # GET /tenancies/new
  def new
    @tenancy = Tenancy.new
  end

  # GET /tenancies/1/edit
  def edit
  end

  # POST /tenancies or /tenancies.json
  def create
    @tenancy = Tenancy.new(tenancy_params)
    Current.user.tenancies << @tenancy

    respond_to do |format|
      if @tenancy.save
        format.html { redirect_to tenancy_url(@tenancy), notice: "Tenancy was successfully created." }
        format.json { render :show, status: :created, location: @tenancy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tenancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tenancies/1 or /tenancies/1.json
  def update
    respond_to do |format|
      if @tenancy.update(tenancy_params)
        format.html { redirect_to tenancy_url(@tenancy), notice: "Tenancy was successfully updated." }
        format.json { render :show, status: :ok, location: @tenancy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tenancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tenancies/1 or /tenancies/1.json
  def destroy
    @tenancy.destroy

    respond_to do |format|
      format.html { redirect_to tenancies_url, notice: "Tenancy was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenancy
      @tenancy = Tenancy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tenancy_params
      params.require(:tenancy).permit(:start_date, :end_date, :contractual_basis, :has_pets, :bond_amount, :pays_water, :pays_gas, :pays_electricity, :weekly_rent, :user_id, :name)
    end
end
