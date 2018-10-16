class AddColumn < ActiveRecord::Migration[5.2]
  def change
    add_column(:tasks, :completion_date, :string)
    add_column(:tasks, :due_date, :string)
  end
end
