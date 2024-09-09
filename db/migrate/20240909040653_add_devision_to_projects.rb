class AddDevisionToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :devision, :string
  end
end
