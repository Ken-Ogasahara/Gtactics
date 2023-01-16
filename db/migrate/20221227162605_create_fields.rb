class CreateFields < ActiveRecord::Migration[6.1]
  def change
    create_table :fields do |t|

      t.string :name, null: false, default: ""

      t.timestamps
    end
  end
end
