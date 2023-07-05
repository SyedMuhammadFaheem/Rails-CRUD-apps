class EmployeesController < ApplicationController
    def index
        @employees= Employee.all
    end

    def new
        @employee= Employee.new
    end

    def create 
        @employee = Employee.new(employee_params)
        if @employee.save
            redirect_to employees_path, notice:'Employee has been created successfully!'
        else
            render :new
        end
    end

    def edit
        @employee= Employee.find(params[:id])
    end

    def update
        @employee= Employee.find(params[:id]).update(employee_params)
        if @employee
            redirect_to employees_path, notice:'Employee has been updated successfully!'
        else
            render :edit
        end
    end

    private

    def employee_params
        return params.require(:employee).permit!
    end

end