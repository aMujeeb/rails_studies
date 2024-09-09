class RemoveDivisionFromProjects < ActiveRecord::Migration[7.1]
  def change
    remove_column :projects, :division, :string
  end
end
