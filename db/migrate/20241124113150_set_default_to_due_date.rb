class SetDefaultToDueDate < ActiveRecord::Migration[8.1]
  def change
    change_column_default :tasks, :due_date, DateTime.now
  end
end
