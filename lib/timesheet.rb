# require_relative '../modules/date_handler'

class Timesheet
  # include DateHandler #directions didn't say we can't, rake works without this, not individual test file
  attr_reader :employee_id,
              :project_id,
              :date,
              :minutes

  def initialize(employee_id, project_id, date, minutes)
    @employee_id = employee_id.to_i
    @project_id = project_id.to_i
    @date = DateHandler.string_to_date(date)
    @minutes = minutes.to_i
  end
end
