class EmployeesController < ApplicationController
  before_action :set_employee, only: %i(edit update destroy)
  before_action :set_form_option, only: %i(new create edit update)

  def index
    @employees = Employee.page(params[:page]).per(5).active.order("#{sort_column} #{sort_direction}")
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    add_params

    if @employee.save
      redirect_to employees_url, notice: "社員「#{@employee.last_name} #{@employee.first_name}」を登録しました。"
    else
      render :new
    end
  end

  def edit
  end

  def update
    add_params

    if @employee.update(employee_params)
      redirect_to employees_url, notice: "社員「#{@employee.last_name} #{@employee.first_name}」を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_url, notice: "社員「#{@employee.last_name} #{@employee.first_name}」を削除しました。"
  end

  private

  def employee_params
    params.require(:employee).permit(:number, :last_name, :first_name, :account, :password, :department_id, :office_id, :employee_info_manage_auth, :news_posting_auth)
  end

  def set_employee
    @employee = Employee.find(params["id"])
  end

  def set_form_option
    @departments = Department.all
    @offices = Office.all
  end

  # 現在、メールアドレスと入社日は入力できないため、ここで追加しています。
  def add_params
    unless @employee.email
      @employee.email = 'sample@example.com'
    end
    unless @employee.date_of_joining
      @employee.date_of_joining = Time.zone.today
    end
  end

  def sort_column
    params[:sort] ? params[:sort] : 'number'
  end

  def sort_direction
    params[:direction] ? params[:direction] : 'asc'
  end

end
