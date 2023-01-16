class CreateElements < ActiveRecord::Migration[6.1]
  def change
    create_table :elements do |t|
      
      t.string :tactic_id, null: false, default: ""
      t.string :name, null: false, default: ""
      t.string :side, null: false, default: ""
      t.string :x_coordinate, null: false, default: ""
      t.string :y_coordinate, null: false, default: ""

      t.timestamps
    end
  end
end
