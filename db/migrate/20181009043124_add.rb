class Add < ActiveRecord::Migration[5.2]
  def change
    add_column(:tasks, :completion_date, :date)
    add_column(:tasks, :due_date, :date)
  end
end
