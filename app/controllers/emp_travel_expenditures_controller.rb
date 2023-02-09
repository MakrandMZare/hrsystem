class EmpTravelExpendituresController < ApplicationController
  before_action :set_emp_travel_expenditure, only: %i[ show edit update destroy ]

  # GET /emp_travel_expenditures or /emp_travel_expenditures.json
  def index
    @emp_travel_expenditures = EmpTravelExpenditure.all
  end

  # GET /emp_travel_expenditures/1 or /emp_travel_expenditures/1.json
  def show
  end

  # GET /emp_travel_expenditures/new
  def new
    @emp_travel_expenditure = EmpTravelExpenditure.new
  end

  # GET /emp_travel_expenditures/1/edit
  def edit
  end

  # POST /emp_travel_expenditures or /emp_travel_expenditures.json
  def create
    @emp_travel_expenditure = EmpTravelExpenditure.new(emp_travel_expenditure_params)

    respond_to do |format|
      if @emp_travel_expenditure.save
        format.html { redirect_to emp_travel_expenditure_url(@emp_travel_expenditure), notice: "Emp travel expenditure was successfully created." }
        format.json { render :show, status: :created, location: @emp_travel_expenditure }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @emp_travel_expenditure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emp_travel_expenditures/1 or /emp_travel_expenditures/1.json
  def update
    respond_to do |format|
      if @emp_travel_expenditure.update(emp_travel_expenditure_params)
        format.html { redirect_to emp_travel_expenditure_url(@emp_travel_expenditure), notice: "Emp travel expenditure was successfully updated." }
        format.json { render :show, status: :ok, location: @emp_travel_expenditure }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @emp_travel_expenditure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emp_travel_expenditures/1 or /emp_travel_expenditures/1.json
  def destroy
    @emp_travel_expenditure.destroy

    respond_to do |format|
      format.html { redirect_to emp_travel_expenditures_url, notice: "Emp travel expenditure was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emp_travel_expenditure
      @emp_travel_expenditure = EmpTravelExpenditure.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emp_travel_expenditure_params
      params.require(:emp_travel_expenditure).permit(:employees_id, :departments_id, :travel_from, :travel_to, :on_date, :from_date, :to_date, :reason_for_travel, :mode_of_transportation, :bill_number, :paid_amt)
    end
end
