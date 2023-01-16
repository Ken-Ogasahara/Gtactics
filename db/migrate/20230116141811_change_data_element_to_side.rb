class ChangeDataElementToSide < ActiveRecord::Migration[6.1]
  def change
    change_column :elements, :side, :integer
  end
end
