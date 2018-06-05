class CreateGroupTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :group_tasks do |t|
      t.string :name
      t.boolean :status, :default => false
      t.string :due_date
    end
  end
end
