class ChangeDataElementToSide < ActiveRecord::Migration[6.1]
  def up
    change_column_default :elements, :side, nil
    change_column :elements, :side, :integer
  end
end
