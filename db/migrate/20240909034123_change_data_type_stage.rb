class ChangeDataTypeStage < ActiveRecord::Migration[7.1]
  def change
    change_column :projects, :stage, :string
  end
end
