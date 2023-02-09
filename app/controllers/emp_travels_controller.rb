class EmpTravelsController < ApplicationController
  before_action :set_emp_travel, only: %i[ show edit update destroy ]

  # GET /emp_travels or /emp_travels.json
  def index
    @emp_travels = EmpTravel.all
  end

  # GET /emp_travels/1 or /emp_travels/1.json
  def show
  end

  # GET /emp_travels/new
  def new
    @emp_travel = EmpTravel.new
  end

  # GET /emp_travels/1/edit
  def edit
  end

  # POST /emp_travels or /emp_travels.json
  def create
    @emp_travel = EmpTravel.new(emp_travel_params)

    respond_to do |format|
      if @emp_travel.save
        format.html { redirect_to emp_travel_url(@emp_travel), notice: "Emp travel was successfully created." }
        format.json { render :show, status: :created, location: @emp_travel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @emp_travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emp_travels/1 or /emp_travels/1.json
  def update
    respond_to do |format|
      if @emp_travel.update(emp_travel_params)
        format.html { redirect_to emp_travel_url(@emp_travel), notice: "Emp travel was successfully updated." }
        format.json { render :show, status: :ok, location: @emp_travel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @emp_travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emp_travels/1 or /emp_travels/1.json
  def destroy
    @emp_travel.destroy

    respond_to do |format|
      format.html { redirect_to emp_travels_url, notice: "Emp travel was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emp_travel
      @emp_travel = EmpTravel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emp_travel_params
      params.require(:emp_travel).permit(:employees_id, :departments_id, :travel_from, :travel_to, :on_date, :from_date, :to_date, :reason_for_travel)
    end
end
