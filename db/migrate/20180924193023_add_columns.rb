class AddColumns < ActiveRecord::Migration[5.2]
  def change
    add_column(:tasks, :description, :string)
    add_column(:tasks, :completion_date, :string)
    add_column(:tasks, :complete, :string)
    add_column(:tasks, :due_date, :string)
    remove_column(:tasks, :status)
  end
end
