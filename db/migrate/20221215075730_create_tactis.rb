class CreateTactis < ActiveRecord::Migration[6.1]
  def change
    create_table :tactis do |t|
      
      t.string :user_id, null: false, default: ""
      t.string :field_id, null: false, default: ""
      t.string :name, null: false, default: ""
      t.timestamps
    end
  end
end
