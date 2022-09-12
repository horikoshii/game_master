class AddEvaluationToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :cheats, :evaluation, :float
  end
end
