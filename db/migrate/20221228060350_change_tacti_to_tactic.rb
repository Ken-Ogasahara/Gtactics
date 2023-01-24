class ChangeTactiToTactic < ActiveRecord::Migration[6.1]
  def change
    rename_table :tactis, :tactics
  end
end
